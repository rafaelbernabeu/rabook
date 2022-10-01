# scp

Copy a Local File to a Remote System
```
$ scp file.txt remote_username@10.10.0.2:/remote/directory
```

Copy a Remote File to a Local System
```
$ scp remote_username@10.10.0.2:/remote/file.txt /local/directory
```

 Copy local directory to remote directory:
```
$ scp -r <local_dir> your_username@192.168.0.100:/some/remote/directory/<remote_dir>
```