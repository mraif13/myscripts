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

echo "Checking for required packages.."

sudo dnf install -y wget gpg

mkdir temp

cd temp

echo "Downloading teamviewer from fedora using wget"

wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm


flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "Please reboot and run apps.sh to install required apps.."
