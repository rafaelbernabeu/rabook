# virtual box

```
VBoxManage modifyvm "Monterey" --cpu-profile "Intel Core i7-6700K"
VBoxManage modifyvm "Monterey" --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
VBoxManage setextradata "Monterey" "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 0
VBoxManage setextradata "Monterey" "VBoxInternal/TM/TSCMode" "RealTSCOffset"
VBoxManage setextradata "Monterey" "VBoxInternal2/EfiGraphicsResolution" "1920x1080"
VBoxManage setextradata "Monterey" "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
VBoxManage setextradata "Monterey" "VBoxInternal/Devices/efi/0/Config/DmiSystemVendor" "Apple Inc."
VBoxManage setextradata "Monterey" "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
```

VBoxManage setextradata "Monterey" "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" “MacBookPro15,1”
VBoxManage setextradata "Monterey" "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Mac-551B86E5744E2388"
VBoxManage setextradata "Monterey" "VBoxInternal/Devices/efi/0/Config/DmiBIOSVersion" "string:MBP7.89"
VBoxManage setextradata "Monterey" "VBoxInternal/Devices/efi/0/Config/DmiBoardSerial" "NO_LOGIC_BOARD_SN"
VBoxManage setextradata "Monterey" "VBoxInternal/Devices/efi/0/Config/DmiSystemFamily" "MacBook Pro"
VBoxManage setextradata "Monterey" "VBoxInternal/Devices/efi/0/Config/DmiSystemSerial" "aabbccddeeff00112233445566778899"
VBoxManage setextradata "Monterey" "VBoxInternal/Devices/efi/0/Config/DmiSystemUuid" "CAFECAFE-CAFE-CAFE-CAFE-DECAFFDECAFF"


VBoxManage setextradata "MacOS" "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
VBoxManage setextradata "MacOS" "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac11,3"
VBoxManage setextradata "MacOS" "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Iloveapple"


VBoxManage setextradata "MAC_OS_MONTEREY" "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
VBoxManage setextradata "MAC_OS_MONTEREY" "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac19,1"
VBoxManage setextradata "MAC_OS_MONTEREY" "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Mac-AA95B1DDAB278B95"