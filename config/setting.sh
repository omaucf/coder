#!/bin/bash

GIT_DEFAULT_BRANCH="main"
GIT_NAME=""
GIT_EMAIL=""

PHP_VERSION=8.4

set -e

# Setting Github
git config --global init.defaultBranch $GIT_DEFAULT_BRANCH
git config --global user.name $GIT_NAME
git config --global user.email $GIT_EMAIL

# Update packages
sudo apt update -y

# Update packages
sudo apt upgrade -y

# Install packages
sudo apt install -y build-essential curl wget make unzip zsh

# Install OMZsh
# /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# /bin/bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

# Install PHP
/bin/bash -c "$(curl -fsSL https://php.new/install/linux/$PHP_VERSION)"

# Install Node/Pnpm
curl https://get.volta.sh | bash

# Install Docker
sudo apt install -y apt-transport-https ca-certificates software-properties-common
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update -y
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "Installation completed successfully!"
