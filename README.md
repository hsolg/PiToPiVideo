# PiToPiVideo
Two-way video for Raspberry Pi

## Automatic streaming

### X version

#### Sending end

Copy start-sending.sh to /home/pi.

Create /home/pi/send.sh:
```sh
(cd src/PiToPiVideo/ && SRC_IP=192.168.0.100 ./start-sending.sh)
```
Use this machine's IP address.

Add to .config/lxsession/LXDE-pi/autostart:
```
@./send.sh
```
#### Receiving end

Copy start-receiving.sh to /home/pi.

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

Scaling reduces the framerate significantly.

### Framebuffer version

TODO

## Sinks

### Works well

#### ximagesink

Needs X.

#### fbdevsink

Framebuffer version. Doesn't need X.

### Very slow

#### autovideosink

Uses glimagesink.

#### cluttersink

#### glimagesink

### Cool effects

#### aasink

Fails because of missing font.

#### cacasink

Nice ASCII effect, but very slow.

### Doesn't work

#### xvimagesink

No Xv port available.

### Not tested

#### intervideosink

Cannot be used effectively with gst-launch.

#### waylandsink

Depends on Wayland.
