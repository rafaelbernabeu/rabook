# 0. ON WINDOWS :
# On windows, to check which WSL you use, type ` wsl --list --verbose ` in admin cmd.
# If you are not in WSL2, reinstall the machine with WSL2 : https://docs.microsoft.com/fr-fr/windows/wsl/install-win10

# 1. Make sure you are running with systemd
# sudo systemctl must not say "Failed to connect to bus"
# If so, I recommand you to reinstall the VM. You can try this repo too : https://github.com/DamionGans/ubuntu-wsl2-systemd-script.git

# 2. On WSL2 machine
# /!\ Create an user with A PASSWORD and with sudo access
# On your WSL2 machine installed, juste run theses commands :

sudo apt update && sudo apt -y upgrade
sudo apt-get dist-upgrade
sudo apt-get install xfce4 xrdp xfce4-goodies xorg

sudo cp /etc/xrdp/xrdp.ini /etc/xrdp/xrdp.ini.bak
# sudo sed -i 's/3389/3390/g' /etc/xrdp/xrdp.ini
sudo sed -i 's/max_bpp=32/#max_bpp=32\nmax_bpp=128/g' /etc/xrdp/xrdp.ini
sudo sed -i 's/xserverbpp=24/#xserverbpp=24\nxserverbpp=128/g' /etc/xrdp/xrdp.ini

echo xfce4-session > ~/.xsession

sudo systemctl enable dbus
sudo /etc/init.d/dbus start
sudo /etc/init.d/xrdp start

sudo /etc/init.d/xrdp status


# 4. Launch the xrdp server :
#sudo /etc/init.d/xrdp start

# Launch Windows remote desktop and connect to localhost:3390

# 5. Stop the connection
#sudo /etc/init.d/xrdp stop