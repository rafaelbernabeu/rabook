# How to add Swap File

1 Create a file that will be used for swap:
```
sudo fallocate -l 1G /swapfile
```

If faillocate is not installed or if you get an error message saying fallocate failed: Operation not supported then you can use the following command to create the swap file:
```
sudo dd if=/dev/zero of=/swapfile bs=1024 count=1048576
```

2 Only the root user should be able to write and read the swap file. To set the correct permissions type:
```
sudo chmod 600 /swapfile
```

3 Use the mkswap utility to set up the file as Linux swap area:
```
sudo mkswap /swapfile
```

4 Enable the swap with the following command:
```
sudo swapon /swapfile
```

5 To make the change permanent open the /etc/fstab file and append the following line:
```
# Swap
/swapfile none swap sw 0 0
```

To verify that the swap is active, use either the swapon or the free command as shown below:
```
sudo swapon --show
NAME      TYPE  SIZE   USED PRIO
/swapfile file 1024M 507.4M   -1
```
or
```
sudo free -h
              total        used        free      shared  buff/cache   available
Mem:           488M        158M         83M        2.3M        246M        217M
Swap:          1.0G        506M        517M
```

https://linuxize.com/post/create-a-linux-swap-file/
