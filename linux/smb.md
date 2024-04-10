# Samba

## Client

smbclient -U rafael //truenas.local/Data
get <remote name> [local name] 
put <local name> [remote name]

smbutil view //rafael@truenas.local

smbclient -N -L //10.10.73.125/ -p 139

sudo mount -t cifs //10.0.0.110/Data/Downloads /home/rab/Downloads -o uid=1000,username=rafael,password=rbbernabeu  
sudo mount -t cifs //10.0.0.110/Data/TV\ Shows/ /home/rab/TV\ Shows/ -o uid=1000,username=rafael,password=rbbernabeu
sudo mount -t cifs //10.0.0.110/Data/Movies/ /home/rab/Movies/ -o uid=1000,username=rafael,password=rbbernabeu

//10.0.0.110/Data/Downloads /home/rab/Downloads cifs username=rafael,password=rbbernabeu 0 0
//10.0.0.110/Data/Movies /home/rab/Movies cifs username=rafael,password=rbbernabeu 0 0
//10.0.0.110/Data/TV\040Shows /home/rab/TV\040Shows cifs username=rafael,password=rbbernabeu 0 0

## Server




