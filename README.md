# PiToPiVideo
Two-way video for Raspberry Pi

## Sending end

Create /home/pi/send.sh:
```sh
(cd src/PiToPiVideo/ && SRC_IP=192.168.0.100 ./start-sending.sh)
```
Use this machine's IP address.

Add to .config/lxsession/LXDE-pi/autostart:
```
@./send.sh
```
## Receiving end

Create /home/pi/receive.sh:
```sh
(cd src/PiToPiVideo/ && SRC_IP=192.168.0.100 ./start-receiving.sh)
```
Use the sending machine's IP address.

Add to .config/lxsession/LXDE-pi/autostart:
```
@./receive.sh
```

Add this before the sink to scale the image to the screen size if the
size of the stream doesn't match:
```
videoscale ! video/x-raw,width=1080,height=720 !
```
