FROM debian:10

WORKDIR /home
ENV HOME /home

RUN apt-get update && \
     apt-get install -y git nano python3-pip python-dev pkg-config wget usbutils curl && \
     echo "deb https://packages.cloud.google.com/apt coral-edgetpu-stable main" \
    | tee /etc/apt/sources.list.d/coral-edgetpu.list && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    apt-get update && \
    apt-get install -y edgetpu-examples

