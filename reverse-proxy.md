# Reverse Proxy

## ngrok
```
ngrok http 80
ngrok http --domain=terrier-proven-bass.ngrok-free.app localhost:80
```


## serveo
```
ssh -R 80:localhost:3000 serveo.net
ssh -R 80:localhost:8888 -R 80:localhost:9999 serveo.net

ssh -R rafaelbernabeu.serveo.net:80:localhost:8888 serveo.net
```