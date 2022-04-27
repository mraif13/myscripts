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

sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel -y

sudo dnf install lame\* --exclude=lame-devel

sudo dnf group upgrade --with-optional Multimedia

echo "Checking for required packages.."

sudo dnf install wget gpg -y

mkdir temp

cd temp

echo "Installing ani-cli"

sudo curl -sL github.com/pystardust/ani-cli/raw/master/ani-cli -o /usr/local/bin/ani-cli &&
sudo chmod +x /usr/local/bin/ani-cli

echo "Installing ani-cli dependencies..."

sudo dnf install grep sed curl openssl mpv aria2 ffmpeg wget htop neofetch qbittorrent okular -y

echo "Making use ani-cli scripts are updated.."

ani-cli -U

echo "Installing fedy.."
sudo dnf copr enable kwizart/fedy
sudo dnf install fedy -y

echo "Installing webapp manager.."

sudo dnf copr enable refi64/webapp-manager -y 

sudo dnf install webapp-manager -y 

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "Installing flatpaks..."

flatpak install flathub com.discordapp.Discord -y

flatpak install flathub com.microsoft.Teams -y 

flatpak install flathub org.onlyoffice.desktopeditors -y

flatpak install flathub io.github.mimbrero.WhatsAppDesktop -y 
 
flatpak install flathub org.flameshot.Flameshot -y

flatpak install flathub com.bitwarden.desktop -y

flatpak install flathub com.microsoft.Teams -y

echo "Please reboot"
