# GPU Passthrough

Verify if IOMMU is enabled:
dmesg | grep -e DMAR -e IOMMU -e AMD-Vi
find /sys/kernel/iommu_groups/ -type l

Enable IOMMU:
nano /etc/default/grub
intel_iommu=on iommu=pt

Add Kernel Modules:
nano /etc/modules
vfio
vfio_iommu_type1
vfio_pci
vfio_virqfd


After changing anything modules related, you need to refresh your initramfs. On Proxmox VE this can be done by executing:
update-initramfs -u -k all

Check if Kernel driver in use: vfio-pci 
lspci -nnk


______________________________________________________________

# Storage Passthrough


ls -n /dev/disk/by-id/


/sbin/qm set 100 -virtio1 /dev/disk/by-id/wwn-0x50014ee2bbfef14b,serial=WX21A69KEF1E
/sbin/qm set 100 -virtio2 /dev/disk/by-id/usb-JMicron_Generic_0123456789ABCDEF-0:0,serial=0123456789ABCDEF
/sbin/qm set 100 -virtio3 /dev/disk/by-id/usb-Seagate_Backup+_BK_NA5340N9-0:0,serial=WD-WX71AB4J9817

smartctl -i /dev/sda


https://pve.proxmox.com/wiki/PCI_Passthrough
https://pve.proxmox.com/wiki/PCI(e)_Passthrough

https://pve.proxmox.com/pve-docs/pve-admin-guide.html#qm_virtual_machines_settings


/sbin/qm set 100 -virtio1 /dev/disk/by-id/nvme-nvme.10ec-324a34313230313234353238-414441544120535836303030504e50-00000001-part1
/sbin/qm set 100 -virtio2 /dev/disk/by-id/nvme-nvme.10ec-324a34313230313234353238-414441544120535836303030504e50-00000001-part2
/sbin/qm set 100 -virtio3 /dev/disk/by-id/nvme-nvme.10ec-324a34313230313234353238-414441544120535836303030504e50-00000001-part4


______________________________________________________________

