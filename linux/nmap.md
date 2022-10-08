# NMAP (should run as root)

Usage: nmap [Scan Type(s)] [Options] {target specification}
```
TARGET SPECIFICATION:
Can pass hostnames, IP addresses, networks, etc.
Ex: scanme.nmap.org, microsoft.com/24, 192.168.0.1; 10.0.0-255.1-254

-iL <inputfilename>                    Input from list of hosts/networks
-iR <num hosts>:                       Choose random targets
--exclude <host1[,host2][,host3],...>: Exclude hosts/networks
--excludefile <exclude_file>:          Exclude list from file

Scans
-sL: (List Scan)                    Simply list targets to scan
-sn (No port scan)                  Ping Scan disable port scan (old -sP)
-sS (TCP SYN scan)                  Requires root (Raw packets, faster)
-sT (TCP connect scan)              Without root  (Connect system call, slower)
-sU (UDP scans)                     Can be combined with -sS
-sA (TCP ACK scan)                  Map out firewall rulesets
-sI zombie host[:probeport]         Idle scan -> https://nmap.org/book/idlescan.html
-sV (Version detection)     

Output:
-oN file     (Normal output)
-oX file     (XML output)
-oS file     (ScRipT KIdd|3 oUTpuT)
-oG file     (grepable output)
-oA basename (Output to all formats)

-Pn                                 (No ping) 
-n                                  (No DNS resolution)  default: sometimes
-R                                  (Resolve all names)  default: sometimes
-O                                  (Enable OS detection)
-p port                             (Only scan specified ports) Ex.: U:53,111,137,T:21-25,80,139,8080
-f                                  (fragment packets); 
-D decoy1[,decoy2][,ME][,...]       (Cloak a scan with decoys)
-S IP_Address                       (Spoof source address) The -e option and -Pn are generally required.
-e interface                        (Use specified interface)
-6 (Enable IPv6 scanning)
-A (Aggressive scan options)


--data hex string (Append custom binary data to sent packets)  Ex.: --data 0xdeadbeef and --data \xCA\xFE\x09
--data-string string (Append custom string to sent packets)    Ex.: --data-string "Ph34r my l33t skills"


--mtu                               Using the specified MTU
--traceroute                        Trace path to host
--scanflags flags                   Custom TCP scan: URG, ACK, PSH, RST, SYN, FIN  -  Ex.: --scanflags URGACKPSHRSTSYNFIN
--exclude-ports port
--allports
--proxies Comma-separated list of proxy URLs (Relay TCP connections through a chain of proxies)
--dns-servers <serv1[,serv2],...>   Specify custom DNS servers


```



Discover up hosts
```
nmap -sn 192.168.0.1/24
```