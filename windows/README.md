# windows-spells

Fork bomb
```
%0|%0
```

Is your computer slow???
```
chkdsk /f
chkdsk /r
sfc /scannnow
DISM /Online /Cleanup /CheckHealth
DISM /Online /Cleanup /ScanHealth
DISM /Online /Cleanup /RestoreHealth
```


Reboot to BIOS
```
shutdown /r /fw /f /t 0
```

Enable / Disable Windows Firewall
```
netsh advfirewall set allprofiles state off
netsh advfirewall set allprofiles state on
```

Battery Health
```
powercfg /energy
powercfg /batteryreport
```


clip
findstr
ipconfig
ipconfig /all
ipconfig /release
ipconfig /renew
ipconfig /displaydns
ipconfig /flushdns
getmac /v
nslookup
assoc

tasklist
taskkill

netsh wlan show wlanreport
netsh interface show interface
netsh interface ip show address | findstr “IP Address”
netsh interface ip show dnsservers
netsh interface portproxy add v4tov4 listenport=1337 listenaddress=0.0.0.0 connectport=1337 connectaddress=($(wsl hostname -I).Trim())

ping
ping -t
tracert
tracert -d
netstat
netstat -af
netstat -o
netstat -e -t 5
route print
route add
route delete
