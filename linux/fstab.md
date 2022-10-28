# Use 'blkid' to print the universally unique identifier for a device

Add to /etc/fstab:

```
<file system> <mount point> <type> <options> <dump> <pass>
```

```
 # HD 1TB
UUID=5C2E968E2E966136 /data auto nosuid,nodev,nofail,x-gvfs-show,x-gvfs-name=Data 0 0

# Swap
/data/swapfile none swap sw 0 0
 ```
