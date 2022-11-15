echo "Hello Fedora! (Applications)"

echo "Installing code.."

sudo dnf install code  -y

echo "Installing chromium"

sudo dnf install chromium  -y

echo "Installing gaming stuff..."

sudo dnf install steam  -y

#echo "Enabling fucking gloriouseggroll fedora copr and installing stuff.."

#sudo dnf copr enable gloriouseggroll/game-utils

#sudo dnf install goverlay  -y

#sudo dnf install mangohud  -y

sudo dnf install lutris  -y

#echo "Setting up johncena141 stuff.."

#sudo dnf config-manager --add-repo https://dl.winehq.org/wine-builds/fedora/35/winehq.repo && sudo dnf install curl dosbox jq mono-core opencl-utils winehq-mono jq libxcrypt

echo "Installing other apps"

sudo dnf install youtube-dl  -y
sudo dnf install htop  -y
sudo dnf install wget  -y
sudo dnf install neofetch  -y
sudo dnf install winetricks  -y
sudo dnf install openssl  -y
sudo dnf install qbittorrent  -y

echo "vulkan vulkan-loader:: search if opengl alternatives are avaiable.."

sudo dnf install alsa-lib alsa-plugins fluidsynth pulseaudio openal -y 

sudo dnf install dosbox -y 

sudo dnf install jq libxcrypt zlib -y 

echo "Installing ani-cli.."

mkdir temp

cd temp

sudo curl -sL github.com/pystardust/ani-cli/raw/master/ani-cli -o /usr/local/bin/ani-cli &&
sudo chmod +x /usr/local/bin/ani-cli

wget https://download.jetbrains.com/fonts/JetBrainsMono-1.0.3.zip

cd ..

echo "Downloading mpv player.."

sudo dnf install mpv  -y

#echo "Setting up dropbox.."

#sudo dnf install nautilus-python

#sudo dnf install dropbox nautilus-dropbox  -y

echo "Installing flatpaks.."

flatpak install flathub com.discordapp.Discord -y

flatpak install flathub org.onlyoffice.desktopeditors -y

flatpak install flathub com.heroicgameslauncher.hgl -y

flatpak install flathub net.ankiweb.Anki -y

flatpak install flathub org.flameshot.Flameshot -y

flatpak install flathub net.pcsx2.PCSX2 -y

flatpak install flathub com.usebottles.bottles -y

flatpak install flathub com.bitwarden.desktop -y

flatpak install easyeffects  -y
