# linux-spells

Fork bomb:
```
$ :(){ :|:& };:
```

Man pages:

```
$ man man

1: Executable programs or shell commands; man-pages includes a very few Section 1 pages that document programs supplied by the GNU C library.
2: System calls; documents the system calls provided by the Linux kernel.
3: Library functions; documents the functions provided by the standard C library.
4: Special files/devices; documents details of various devices, most of which reside in /dev.
5: File formats and conventions; describes various file formats, and includes proc(5), which documents the /proc file system.
6: Games
7: Overviews, conventions, and miscellaneous.
8: Superuser and system administration commands; man-pages includes a very few Section 8 pages that document programs supplied by the GNU C library.
9: Kernel routines [Non standard]
```

Add a normal user:
$ useradd <name>

Add a root user:
$ useradd -o -u 0 <name>

Quickly determine if a port is open or closed using just bash:
$ (: </dev/tcp/127.0.0.1/443) &>/dev/null && echo "OPEN" || echo "CLOSED"

Dump all MySQL databases:
$ mysqldump --all-databases --all

Perform a request to a remote address every 5 seconds (download a file, whatever), until you press CTRL + C:
$ while true; do wget <address>; sleep 5; done

Identify operating system, kernel version
```
$ cat /etc/issue
$ cat /etc/*-release
$ cat /etc/lsb-release
$ cat /etc/redhat-release
$ cat /proc/version   
$ uname -a
$ uname -mrs 
$ rpm -q kernel 
$ dmesg | grep Linux
$ ls /boot | grep vmlinuz-
```

Identify what other users and hosts are communicating with the system.
```
$ lsof -i 
$ lsof -i :80
$ grep 80 /etc/services
$ chkconfig --list
$ chkconfig --list | grep 3:on
$ last
$ w
$ netstat -antup
$ netstat -antpx
$ netstat -tulpn
```

What has the user being doing? Any password in plain text?
```
$ cat ~/.bash_history
$ cat ~/.nano_history
$ cat ~/.atftp_history
$ cat ~/.mysql_history 
$ cat ~/.php_history
```

Retrieve cached IP and/or MAC addresses.
```
$ route
$ /sbin/route -nee
$ arp -e
```

Retrieve useful user information
```
$ cat ~/.bashrc
$ cat ~/.profile
$ cat /var/mail/root
$ cat /var/spool/mail/root
```

Get any private/public key information
```
$ cat ~/.ssh/authorized_keys
$ cat ~/.ssh/identity.pub
$ cat ~/.ssh/identity
$ cat ~/.ssh/id_rsa.pub
$ cat ~/.ssh/id_rsa
$ cat ~/.ssh/id_dsa.pub
$ cat ~/.ssh/id_dsa
$ cat /etc/ssh/ssh_config
$ cat /etc/ssh/sshd_config
$ cat /etc/ssh/ssh_host_dsa_key.pub
$ cat /etc/ssh/ssh_host_dsa_key
$ cat /etc/ssh/ssh_host_rsa_key.pub
$ cat /etc/ssh/ssh_host_rsa_key
$ cat /etc/ssh/ssh_host_key.pub
$ cat /etc/ssh/ssh_host_key
```

If in a jail, can you break out of it?
```
$ python -c 'import pty;pty.spawn("/bin/bash")'
$ echo os.system('/bin/bash')
$ /bin/sh -i
```

Where can written to and executed from?
```
$ find / -writable -type d 2>/dev/null				        # world-writeable folders
$ find / -perm -222 -type d 2>/dev/null				        # world-writeable folders
$ find / -perm -o+w -type d 2>/dev/null				        # world-writeable folders
$ find / -perm -o+x -type d 2>/dev/null				        # world-executable folders
$ find / \( -perm -o+w -perm -o+x \) -type d 2>/dev/null	# world-writeable & executable folders
```

Which configuration files can be written in /etc/? Are we able to reconfigure a service?
```
$ ls -aRl /etc/ | awk '$1 ~ /^.*w.*/' 2>/dev/null	    # Anyone
$ ls -aRl /etc/ | awk '$1 ~ /^..w/' 2>/dev/null		    # Owner
$ ls -aRl /etc/ | awk '$1 ~ /^.....w/' 2>/dev/null	    # Group
$ ls -aRl /etc/ | awk '$1 ~ /w.$/' 2>/dev/null		    # Other
$ find /etc/ -readable -type f 2>/dev/null		        # Anyone
$ find /etc/ -readable -type f -maxdepth 1 2>/dev/null	# Anyone 
```