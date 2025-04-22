# Edge TPU Development Environment

This repository contains a Docker environment setup for Edge TPU development using Google Coral.

**This code comes from [Jeff Geerling Blog](https://www.jeffgeerling.com/blog/2023/testing-coral-tpu-accelerator-m2-or-pcie-docker).**

## Prerequisites

- Docker installed on your system
- Git (optional, for cloning the repository)

## 🛠️ Building the Docker Image

```
git clone https://gitlab.iaca-electronique.com/linux/ai/coral-environment.git
cd coral-environment/base
docker build -t base .
```

## ▶️ Run

### Enter in container
```
docker run -it --device /dev/apex_0:/dev/apex_0 coral /bin/bash
```

> Check that your coral device is at `/dev/apex_0`. If it isn't, think of changing it.

### Run demo
```
python3 /usr/share/edgetpu/examples/classify_image.py --model /usr/share/edgetpu/examples/models/mobilenet_v2_1.0_224_inat_bird_quant_edgetpu.tflite --label /usr/share/edgetpu/examples/models/inat_bird_labels.txt --image /usr/share/edgetpu/examples/images/bird.bmp
```
