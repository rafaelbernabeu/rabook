# Public and Private Key Management

### Creating the Key Pair
```
ssh-keygen
``` 
---
</br>

### Extract public key from private key

#### For SSH purposes:
```
ssh-keygen -y -f key.pem > key.pub
```
#### For other purposes
```
openssl rsa -in id_rsa -pubout -out pubkey.pem
```
---
</br>

### Copying the Public Key Using SSH
```
ssh-copy-id username@remote_host
```
or manually
```
cat ~/.ssh/id_rsa.pub | ssh username@remote_host "mkdir -p ~/.ssh && touch ~/.ssh/authorized_keys && chmod -R go= ~/.ssh && cat >> ~/.ssh/authorized_keys"
```
