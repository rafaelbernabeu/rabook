Para usar a placa de video NVIDIA com LXC no Proxmox:

- Instalar o Driver Nvidia no HOST
- Instalar o Driver CUDA no HOST
- Adicionar os módulos em /etc/modules: 
nvidia
nvidia_uvm

- Criar o arquivo /etc/udev/rules.d/70-nvidia.rules
```
# Create /nvidia0, /dev/nvidia1 … and /nvidiactl when nvidia module is loaded
KERNEL=="nvidia", RUN+="/bin/bash -c '/usr/bin/nvidia-smi -L && /bin/chmod 666 /dev/nvidia*'"
# Create the CUDA node when nvidia_uvm CUDA module is loaded
KERNEL=="nvidia_uvm", RUN+="/bin/bash -c '/usr/bin/nvidia-modprobe -c0 -u && /bin/chmod 0666 /dev/nvidia-uvm*'"
```

- Verificar com ls -l /dev/nvi* se existem:
crw-rw-rw- 1 root root 195,   0 Oct 23 00:21 /dev/nvidia0
crw-rw-rw- 1 root root 195, 255 Oct 23 00:21 /dev/nvidiactl
crw-rw-rw- 1 root root 195, 254 Oct 23 00:21 /dev/nvidia-modeset
crw-rw-rw- 1 root root 506,   0 Oct 23 00:29 /dev/nvidia-uvm
crw-rw-rw- 1 root root 506,   1 Oct 23 00:29 /dev/nvidia-uvm-tools

Agora no container LXC:

nano /etc/pve/lxc/102.conf
```
mp0: /mnt/truenas/Downloads,mp=/mnt/Downloads
mp1: /mnt/truenas/Movies,mp=/mnt/Movies
mp2: /mnt/truenas/TV Shows,mp=/mnt/TV Shows

lxc.cgroup.devices.allow: c 195:* rwm
lxc.cgroup.devices.allow: c 235:* rwm
lxc.mount.entry: /dev/nvidia0 dev/nvidia0 none bind,optional,create=file
lxc.mount.entry: /dev/nvidiactl dev/nvidiactl none bind,optional,create=file
lxc.mount.entry: /dev/nvidia-uvm dev/nvidia-uvm none bind,optional,create=file
lxc.mount.entry: /dev/nvidia-modeset dev/nvidia-modeset none bind,optional,create=file
lxc.mount.entry: /dev/nvidia-uvm-tools dev/nvidia-uvm-tools none bind,optional,create=file
```

- Instale o Driver da NVIDIA no GUEST
- Instale o Driver CUDA no GUEST
- Instale o Cuda Container Toolkit
- Configurar o Docker para uso da GPU
```
nvidia-ctk runtime configure --runtime=docker
nvidia-ctk config --set nvidia-container-cli.no-cgroups --in-place
```
- Reiniciar o serviço do Docker

- Verifique com o comando
docker run --rm -it --gpus=all nvcr.io/nvidia/k8s/cuda-sample:nbody nbody -gpu -benchmark



OBS.:
- Docker-compose precisa do python3-distutils-extra