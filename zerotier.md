# ZeroTier


## VPN Exit Node
https://docs.zerotier.com/exitnode

```
nano /etc/sysctl.conf
net.ipv4.ip_forward = 1
net.ipv6.conf.all.forwarding=1

sysctl -p

Export zerotier interface name

ip link show
export ZT_IF=ztklhszdxt
export WAN_IF=enp6s18

iptables -t nat -A POSTROUTING -o $WAN_IF -j MASQUERADE
iptables -A FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
iptables -A FORWARD -i $ZT_IF -o $WAN_IF -j ACCEPT
apt-get install iptables-persistent
netfilter-persistent save


Reboot and confirm
iptables-save

```

For Ease ON/OFF on CLIENTS add to ~/.BASHRC:

```
tunnel()
{
 sudo zerotier-cli set $nwid allowDefault=1
}

notunnel()
{
 sudo zerotier-cli set $nwid allowDefault=0
}
```
