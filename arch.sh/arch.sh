echo "Hello Arch"

echo "Check for updates.. "

sudo pacman -Syu 

echo "Installing Git and other development tools"

sudo pacman -S git curl wget zsh 

echo "Installing ohmyzsh"

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

echo "Installing zsh plugins.."

git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Add the following lines to your .zshrc"

echo "zsh-completions zsh-autosuggestions zsh-syntax-highlighting"

echo "Installing yay to manage AUR Packages..."

mkdir temp 

cd temp

git clone https://aur.archlinux.org/yay-bin.git

cd yay-bin

makepkg -si 

cd ..

mkdir AppImage
mkdir Github

echo "Adding flatpak support"

sudo pacman -S flatpak 

echo "Installing vagrant and its plugins.."

sudo pacman -S vagrant

echo "Installing vagrant provisioners.."

sudo pacman -S virtualbox virtualbox-guest-iso

echo "Adding you to vboxusers group"

sudo gpasswd -a $USER vboxusers

echo "Making sure kernel module is loaded.."

sudo modprobe vboxdrv

echo "Installing oracle virtualbox guest additions.."

yay -S virtualbox-ext-oracle

echo "Enabling systemctl service.."

sudo systemctl enable vboxweb.service

sudo systemctl start vboxweb.service

echo "Make sure everything is working fine.."

lsmod | grep -i vbox

# make script wait for 5 seconds
sleep 5


