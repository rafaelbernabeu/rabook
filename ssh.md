# SSH

-f                                 Requests ssh to go to background just before command execution.
-L local_socket:host:hostport      Local Port forward
-N                                 Do not execute a remote command.  This is useful for just forwarding ports.
-p port                            Port to connect to on the remote host
-R remote_socket:local_socket      Remote Port forward



Examples:

the following command opens access to an internal Postgres database at port 5432 and an internal SSH port at port 2222.
```
ssh -R 2222:d76767.nyc.example.com:22 -R 5432:postgres3.nyc.example.com:5432 aws4.mydomain.net
```

```
ssh -R 7000:127.0.0.1:3000 -N -f root@137.184.74 -p 80
```

ssh socks proxy:
ssh -D 9050 -N ubuntu@18.228.196.155
proxychains curl ifconfig.me



https://serveo.net
https://ngrok.com