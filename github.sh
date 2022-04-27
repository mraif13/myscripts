echo "Hi, Raif.. setting up development folder..."


echo "Checking if git is installed.."

sudo dnf install git

echo "Git is/was installed."

echo "Setting up git configurations.."

git config --global user.name "Raif Coonjah"

git config --global user.name

git config --global user.email "raifcoonjah@pm.me"

git config --global user.email

mkdir Github

cd Github

mkdir "Open Source"

mkdir "Close Source"

cd Open\ Source/

echo "Cloning repositories.. (public)"

git clone https://github.com/mraif13/Saturn-startpage.git

git clone https://github.com/mraif13/setupscipts.git

git clone https://github.com/mraif13/KVM-LenovoLegion5.git

git clone https://github.com/mraif13/Gokapi.git

git clone https://github.com/mraif13/myscripts.git

git clone https://github.com/mraif13/quote.js.git

echo "Looks like you're not logged in, we'll login into github later.."

echo "Downloading and setting up Big billy.."

sudo dnf install -y dnf-plugins-core
sudo dnf -y install vagrant

echo "Downloading plugins.."

vagrant plugins install vagrant-vbguest vagrant-share

echo "Downloading and making use vagrant uses libvirtd instead of vmware.."

vagrant plugin install vagrant-libvirt

vagrant up --provider=libvirt


