# GPU

Check nvidia gpu usage:
```
$ LD_PRELOAD=/usr/lib/nvidia-384/libnvidia-ml.so nvidia-smi
```

Check intel gpu usage:
```
# apt-get install intel-gpu-tools 
# intel_gpu_top
```

Change gpu:
```
# prime-select nvidia|intel
```

Fix screen tearing:
```
# gedit /etc/modprobe.d/nvidia-graphics-drivers.conf

options nvidia-drm modeset=1

# update-initramfs -u
# cat /sys/module/nvidia_drm/parameters/modeset
# modprobe -r nvidia-drm
# modprobe nvidia-drm modeset=1
```

https://diolinux.com.br/2018/07/como-resolver-o-problema-de-screen.html \
https://download.nvidia.com/XFree86/Linux-x86_64/396.51/README/kms.html \
https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/
