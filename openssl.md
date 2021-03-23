# OPENSSL

Generating a Private Key
```
openssl genrsa -out privateKey.pem 4096
```


Extract the Public Key
```
openssl rsa -in privateKey.pem -out publicKey.pem -pubout

openssl pkey -in privateKey.pem -out publicKey.pem -pubout
```

Generating a Private Key and Self-Signed Certificate
```
openssl req \
    -newkey rsa:2048 -nodes -keyout privateKey.pem \
    -x509 -days 365 -out certificate.crt
```

Associate a Private Key with a Self-Signed Certificate
```
openssl req \
    -key privateKey.pem \
    -new -x509 -days 365 \
    -out certificate.crt
```

For detailed information about how your key was generated:
```
openssl rsa -in privateKey.pem -text -noout
```

Command for converting the it into the PKCS#8 formatprivate key
```
openssl pkcs8 -topk8 -nocrypt -inform pem -in privateKey.pem -outform pem -out privateKey.pem
```

Check server certificate
```
openssl s_client -connect www.godaddy.com:443
```
