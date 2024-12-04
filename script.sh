#!/bin/bash

for disk in /dev/sd{c,d,e,f}; do
  parted --script $disk mklabel gpt
  parted --script $disk mkpart primary 0% 100%
done

pvcreate /dev/sd{c,d,e,f}1

vgcreate vg01 /dev/sd{c,d,e,f}1

lvcreate -L 800M -n lv0 vg01
lvcreate -L 800M -n lv1 vg01

mkfs.ext4 /dev/vg01/lv0
mkfs.ext4 /dev/vg01/lv1

mkdir -p /mnt/vol0 /mnt/vol1

echo '/dev/vg01/lv0 /mnt/vol0 ext4 defaults 0 0' >> /etc/fstab
echo '/dev/vg01/lv1 /mnt/vol1 ext4 defaults 0 0' >> /etc/fstab

mount -a
