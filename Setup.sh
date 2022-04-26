echo "Hello Fedora! (Applications)"

echo "Installing code.."

sudo dnf install code

echo "Installing chromium"

sudo dnf install chromium

echo "Installing gaming stuff..."

sudo dnf install steam

echo "Enabling fucking gloriouseggroll fedora copr and installing stuff.."

sudo dnf copr enable gloriouseggroll/game-utils

sudo dnf install goverlay

sudo dnf install mangohud

sudo dnf install lutris

echo "Setting up johncena141 stuff.."

sudo dnf zpaq

sudo dnf config-manager --add-repo https://dl.winehq.org/wine-builds/fedora/35/winehq.repo && sudo dnf install curl dosbox jq mono-core opencl-utils winehq-staging jq libxcrypt

echo "Installing other apps"

sudo dnf install youtube-dl
sudo dnf install htop
sudo dnf install wget
sudo dnf install neofetch
sudo dnf install winetricks
sudo dnf install openssl
sudo dnf install qbittorrent
sudo dnf install okular

echo "vulkan vulkan-loader:: search if opengl alternatives are avaiable.."

sudo dnf install alsa-lib alsa-plugins fluidsynth pulseaudio openal

echo "Enabling and installing OBS studio-fedora (fork by gloriouseggroll)"

sudo dnf copr enable gloriouseggroll/obs-studio-gamecapture

sudo dnf install obs-studio-gamecapture.x86_64 obs-studio-gamecapture.i686 --refresh

echo "Installing ani-cli.."

mkdir temp

cd temp

sudo curl -sL github.com/pystardust/ani-cli/raw/master/ani-cli -o /usr/local/bin/ani-cli &&
sudo chmod +x /usr/local/bin/ani-cli

wget https://download.jetbrains.com/fonts/JetBrainsMono-1.0.3.zip

cd ..

echo "Installing fedy.."
sudo dnf copr enable kwizart/fedy
sudo dnf install fedy -y

echo "Downloading mpv player.."

sudo dnf install mpv

echo "Setting up dropbox.."

sudo dnf install dropbox nautilus-dropbox

echo "Installing flatpaks.."

flatpak install flathub com.discordapp.Discord

flatpak install flathub com.microsoft.Teams

flatpak install flathub org.onlyoffice.desktopeditors

flatpak install flathub io.github.mimbrero.WhatsAppDesktop

flatpak install flathub com.heroicgameslauncher.hgl

flatpak install flathub net.ankiweb.Anki

flatpak install flathub org.flameshot.Flameshot

flatpak install flathub io.github.hakuneko.HakuNeko

flatpak install flathub net.rpcs3.RPCS3

flatpak install flathub net.pcsx2.PCSX2

flatpak install flathub net.davidotek.pupgui2

flatpak install flathub com.usebottles.bottles

flatpak install flathub net.veloren.airshipper

flatpak install flathub com.bitwarden.desktop
