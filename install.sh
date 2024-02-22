#!/bin/bash

echo "Deleting Existing Docker ... "
sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd

echo "Installing Docker using Get-Docker Script"
curl -fsSL https://get.docker.com -o get-docker.sh
chmod +x get-docker.sh
sudo sh ./get-docker.sh --dry-run && sudo sh ./get-docker.sh && sudo rm get-docker.sh
