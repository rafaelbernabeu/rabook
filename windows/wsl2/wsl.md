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

See: https://docs.microsoft.com/pt-br/windows/wsl/install-win10
