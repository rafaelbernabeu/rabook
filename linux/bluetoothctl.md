# Bluetooth

```
#!/bin/bash

bluetoothctl remove 88:D0:39:37:6B:11
bluetoothctl scan on &
sleep 5
kill $(pidof bluetoothctl)
bluetoothctl pair 88:D0:39:37:6B:11
bluetoothctl connect 88:D0:39:37:6B:11
```