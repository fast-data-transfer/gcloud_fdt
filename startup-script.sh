#!/bin/bash

# startup script for customizing gcloud instances

# create fdt user
adduser fdt
# pw created with: mkpasswd -m sha-512
usermod --pass='' fdt
# allow sudo
echo 'fdt    ALL=(ALL)       ALL' >> /etc/sudoers

# allow login with password
sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
systemctl restart sshd

# install a couple of utilities
yum install -y wget htop tree

