sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman -Sy virtualbox-guest-utils
sudo systemctl enable vboxservice
sudo systemctl start vboxservice