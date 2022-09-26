# Windows Subsystem for Linux

Instalar o Subsistema Windows para Linux
```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

Habilite o componente opcional "Plataforma de máquina virtual"
```
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

Definir o WSL 2 como sua versão padrão
```
wsl --set-default-version 2
```

Definir a versão de distribuição para WSL 1 ou WSL 2
```
wsl -l -v
wsl --set-version <distribution name> <versionNumber>
```

Termina imediatamente todas as distribuições em execução e a máquina virtual do utilitário leve WSL 2.
```
wsl --shutdown
```

# Accessing a WSL 2 distribution from your local area network
 WSL 2 has a virtualized ethernet adapter with its own unique IP address.
 Here's an example PowerShell command to add a port proxy that listens on port 4000 on the host and connects it to port 4000 to the WSL 2 VM with IP address 172.30.255.240

```
netsh interface portproxy add v4tov4 listenport=1337 listenaddress=0.0.0.0 connectport=1337 connectaddress=($(wsl hostname -I).Trim())
```


See: https://docs.microsoft.com/pt-br/windows/wsl/install-win10  
     https://learn.microsoft.com/en-us/windows/wsl/networking
