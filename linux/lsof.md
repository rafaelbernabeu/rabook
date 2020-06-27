# List open files

List IPv[46]
```
# lsof -i -n -P
```

List Only IPv4 & IPv6
```
# lsof -i 4
# lsof -i 6
```

List Open Files of TCP Port ranges 1-1024
```
# lsof -i TCP:1-1024
```
