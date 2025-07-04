#!/bin/bas
sudo pvcreate /dev/sdc1
sudo pvcreate /dev/sdd1h
sudo vgcreate vg_valentinat /dev/sdc1
sudo vgcreate vg_temp /dev/sdd1
sudo lvcreate -L 1G -n lv_datos vg_valentinat
sudo lvcreate -L 500M -n lv_docker vg_valentinat
sudo lvcreate -L 500M -n lv_temp vg_temp
sudo mkfs.ext4 /dev/mapper/vg_valentinat-lv_datos
sudo mkfs.ext4 /dev/mapper/vg_valentinat-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_temp-lv_temp
sudo mkdir -p /mnt/datos
sudo mkdir -p /mnt/docker
sudo mkdir -p /mnt/temp
sudo mount /dev/mapper/vg_valentinat-lv_datos /mnt/datos
sudo mount /dev/mapper/vg_valentinat-lv_docker /mnt/docker
sudo mount /dev/mapper/vg_temp-lv_temp /mnt/temp
