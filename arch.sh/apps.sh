echo "Installing all apps.."
yay -S visual-studio-code-bin

echo "Setting up gaming stuff.."

sudo pacman -S lutris steam 

echo "Installing flatpaks.."

flatpak install flathub com.discordapp.Discord

flatpak install flathub com.microsoft.Teams

flatpak install flathub org.onlyoffice.desktopeditors

flatpak install flathub io.github.mimbrero.WhatsAppDesktop

flatpak install flathub com.heroicgameslauncher.hgl

flatpak install flathub net.ankiweb.Anki

flatpak install flathub org.flameshot.Flameshot

flatpak install flathub net.pcsx2.PCSX2


# git clone https://aur.archlinux.org/zpaq.git && cd zpaq && makepkg -si
#
# sudo sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf && sudo pacman -Syyu
#
# sudo pacman -S --needed lib32-vulkan-icd-loader lib32-vulkan-intel vulkan-icd-loader vulkan-intel
#
# sudo pacman -S --needed lib32-libglvnd lib32-nvidia-utils lib32-vulkan-icd-loader libglvnd nvidia vulkan-icd-loader
#
# sudo pacman -S --needed wine-staging
#
# sudo pacman -S --needed giflib gnutls gst-plugins-bad gst-plugins-base gst-plugins-base-libs gst-plugins-good gst-plugins-ugly jq libgphoto2 libjpeg-turbo libldap libpng libxcomposite libxinerama libxslt mono mpg123 opencl-icd-loader sdl2 v4l-utils libxcrypt-compat

# On EndeavourOS skip first line! yay is already installed.
yay -S dxvk-bin vkd3d-proton-bin

sudo pacman -S --needed alsa-lib alsa-plugins lib32-alsa-lib lib32-alsa-plugins lib32-libpulse libpulse fluidsynth openal lib32-openal

echo "Installing notion.."

yay -S notion-app-enhanced

