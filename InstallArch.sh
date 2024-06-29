(
    echo n
    echo
    echo p
    echo
    echo 
    echo
    echo w
) | fdisk /dev/sda

mkfs.ext4 /dev/sda1
mount /dev/sda1 /mnt

pacstrap /mnt base linux linux-firmware nano dhcpcd iwd grub sudo

genfstab -U /mnt >>/mnt/etc/fstab


cp /dev/sss/AfterArchChRoot.sh /mnt/AfterArchChRoot.sh
arch-chroot /mnt ./AfterArchChRoot.sh
umount -R /mnt
reboot