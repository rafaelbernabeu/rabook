# LVM Partition

Step 1) Identify new attached raw disk
Step 2) Create PV (Physical Volume)
Step 3) Create VG (Volume Group)
Step 4) Create LV (Logical Volume)
Step 5) Format LVM Partition

fdisk -l
pvcreate /dev/sdb
pvs /dev/sdb
pvdisplay /dev/sdb

vgcreate <vg_name>  <pv>
vgcreate volgrp01 /dev/sdb

vgs volgrp01
vgdisplay volgrp01

lvcreate -L <Size-of-LV> -n <LV-Name> <VG-Name>
lvcreate -L 14G -n lv01 volgrp01

mkfs.ext4 /dev/volgrp01/lv01



# LVM thin Backend

lvcreate -T -L 100G -n data pve
lvcreate -T -l 100%FREE -n data pve
lvconvert --type thin-pool pve/data


# Resize Storage

lvresize -l +100%FREE /dev/pve/root
resize2fs /dev/mapper/pve-root