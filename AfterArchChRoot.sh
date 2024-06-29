sed -i 's/#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/g' /etc/locale.gen
locale-gen
echo 'LANG=en_US.UTF-8' >/etc/locale.conf

echo arch1 >/etc/hostname
systemctl enable dhcpcd

echo -e "1234\n1234" | passwd  

grub-install --target=i386-pc /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg

useradd -m user1
echo -e "1234\n1234" | passwd user1
echo 'user1  ALL=(ALL:ALL) ALL' >> /etc/sudoers

exit