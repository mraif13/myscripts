echo "Hello Arch"

echo "Check for updates.. "

sudo pacman -Syu --noconfirm

echo "Installing Git and other development tools"

sudo pacman -S git curl wget zsh fakeroot binutils --noconfirm

git clone https://aur.archlinux.org/yay-bin.git

cd yay-bin

sudo pacman -S npm nodejs --noconfirm

echo "Installing apps required for Saturn automated builder..." 

sudo npm -i web-ext -g

sudo pacman -S emacs --noconfirm

