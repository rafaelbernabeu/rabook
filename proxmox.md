GPU Passtgrouth

Verify IOMMU is enabled

dmesg | grep -e DMAR -e IOMMU

nano /etc/default/grub
intel_iommu=on iommu=pt


nano /etc/modules
vfio
vfio_iommu_type1
vfio_pci
vfio_virqfd

update-initramfs -u -k all


______________________________________________________________



smartctl -i /dev/sda




ls -n /dev/disk/by-id/


/sbin/qm set 100 -virtio1 /dev/disk/by-id/wwn-0x50014ee2bbfef14b,serial=WX21A69KEF1E
/sbin/qm set 100 -virtio2 /dev/disk/by-id/usb-JMicron_Generic_0123456789ABCDEF-0:0,serial=0123456789ABCDEF
/sbin/qm set 100 -virtio3 /dev/disk/by-id/usb-Seagate_Backup+_BK_NA5340N9-0:0,serial=WD-WX71AB4J9817



https://pve.proxmox.com/wiki/PCI_Passthrough
https://pve.proxmox.com/wiki/PCI(e)_Passthrough

https://pve.proxmox.com/pve-docs/pve-admin-guide.html#qm_virtual_machines_settings