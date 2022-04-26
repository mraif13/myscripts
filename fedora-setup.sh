## script to setup my shit on fedora | credits to gloriouseggroll!

echo ":: Hello Fedora! (Main)"

echo ":: Checking for updates.."

sudo dnf update -y

echo "Setting up RPM Fushion repositories..."

sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm


sudo dnf install \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm


echo "Setting up media codecs"

sudo dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel

sudo dnf install -y lame\* --exclude=lame-devel

sudo dnf group upgrade --with-optional Multimedia

echo "Setting up nvidia drivers.."

sudo dnf install -y akmod-nvidia

sudo dnf install -y xorg-x11-drv-nvidia-cuda

echo "Checking for required packages.."

sudo dnf install -y wget gpg

echo "Installing and adding VSCODE repository.."

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo

sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

mkdir temp

cd temp

echo "Downloading teamviewer from fedora using wget"

wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm


flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "Please reboot and run apps.sh to install required apps.."
