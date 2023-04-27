Sniff

/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport en0 sniff 11

hcxpcapngtool -o hash.hc22000 dumpfile.pcapng

hashcat -m 22000 hash.hc22000 wordlist.txt

hashcat -m 22000 -a 3 --increment hash.hc22000 "?d?d?d?d?d?d?d?d"

tcpdump -r <file name>  -> to see the packets