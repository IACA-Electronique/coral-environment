# Coral environment

This repository contains [Coral TPU](https://coral.ai/products/) docker environment.

Repository currently comes in these configurations :

| Name                 | Parent | Description                                     | Dockerhub                                                                                                                                 |
|----------------------|--------|-------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|
| `base`               | `-`    | Coral base environment                          | [iacaelectronique/coral-tpu-env-base](https://hub.docker.com/r/iacaelectronique/coral-tpu-env-base)  `✅ arm64`                            |
| `object-recognition` | `base` | Coral environment ready for object-recognition. | [iacaelectronique/coral-tpu-env-object-recognition](https://hub.docker.com/r/iacaelectronique/coral-tpu-env-object-recognition) `✅ arm64` |

Each configuration contains a `README.md` file with more details.

## ✅ Validation

Currently, these configurations have been tested in Raspberry CM5 with Raspi-OS arm64 *November 19, 2024* release.

___

## See Also

* https://coral.ai/docs/m2/get-started/#pycoral-on-win
* https://www.jeffgeerling.com/blog/2023/testing-coral-tpu-accelerator-m2-or-pcie-docker
* https://github.com/google-coral/edgetpu/issues/611

## 📜 License: `GNU GENERAL PUBLIC LICENSE`

See [details](LICENSE).
