FROM coral-tpu-env-base

RUN git clone https://github.com/IACA-Dev/example-object-tracker.git && \
        cd example-object-tracker && \
        sh download_models.sh && \
        apt update && \
        apt install -y sudo unzip openssh-server && \
        echo 'root:root1234' | chpasswd && \
        sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
        mkdir /var/run/sshd && \
        mkdir -p /root/.ssh && \
        cd gstreamer && \
        bash install_requirements.sh -y && \
        apt install -y libedgetpu1-std && \
        pip3 install --extra-index-url https://google-coral.github.io/py-repo/ tflite_runtime==2.5.0

COPY entrypoint.sh .

ENTRYPOINT ["bash", "entrypoint.sh"]