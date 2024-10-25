# Use 'blkid' to print the universally unique identifier for a device

Add to /etc/fstab:

```
<file system> <mount point> <type> <options> <dump> <pass>

//10.0.0.110/SSD/Downloads /home/rab/Downloads cifs uid=1000,username=rafael,password=xxxx 0 0
//10.0.0.110/SSD/Movies /home/rab/Movies cifs uid=1000,username=rafael,password=xxxx 0 0
//10.0.0.110/SSD/TV\040Shows /home/rab/TV\040Shows cifs uid=1000,username=rafael,password=xxxx 0 0

 # HD 1TB
UUID=5C2E968E2E966136 /data auto nosuid,nodev,nofail,x-gvfs-show,x-gvfs-name=Data 0 0

# Swap
/data/swapfile none swap sw 0 0
 ```
