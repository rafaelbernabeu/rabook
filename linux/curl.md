# cURL

See certificate
```
curl --insecure -v https://www.google.com 2>&1 | awk 'BEGIN { cert=0 } /^\* Server certificate:/ { cert=1 } /^\*/ { if (cert) print }'
```

Socks Proxy
```
curl --proxy socks4://127.0.0.1:9050 ifconfig.me
```