#!/bin/bash

if [ -z "$SSH_PASSWORD" ]; then
    SSH_PASSWORD="defaultpass123"
    echo -e "\033[33mWarning: SSH_PASSWORD not set. Using default password.\033[0m"
fi

echo "root:$SSH_PASSWORD" | chpasswd

##################################################################################################################

echo -e "\033[32mSSH ready for user root.\033[0m"

/usr/sbin/sshd -D