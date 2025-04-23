# Edge TPU Development Environment

This repository contains a Docker environment setup for Edge TPU development using Google Coral and object recognition using camera.

## Prerequisites

- Docker installed on your system
- Git (optional, for cloning the repository)

## 🛠️ Building the Docker Image
```
git clone https://gitlab.iaca-electronique.com/linux/ai/coral-environment.git
cd coral-environment/object-recognition
docker build -t object-recognition .
```

## ▶️ Running the Environment

```
docker run -it \
--privileged \
-e DISPLAY=:0 \
-e XAUTHORITY=/mnt/xauthority.d/Xauthority \
-e SSH_PASSWORD=<password> \
-p 33:22 \
-v /tmp/:/mnt/xauthority.d \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v /dev:/dev \
-v /dev/video0:/dev/video0 \
-v /dev/apex_0:/dev/apex_0 \
object-recognition
```
> **Note**: Some parameters need to be adjusted according to your execution context.

### Connect via SSH
```
ssh root@localhost
```
Use the password defined previously in the `SSH_PASSWORD` environment variable.

### Start demo
*You need to be in the container.*

```
cd /home/example-object-tracker/gstreamer
DISPLAY=:0 python3 detect.py --tracker sort --videofmt=jpeg --width 1920 --height 1080 --videosrc /dev/video0
```

> **Note**: Some parameters need to be adjusted according to your execution context.


## See also
* https://github.com/IACA-Electronique/example-object-tracker