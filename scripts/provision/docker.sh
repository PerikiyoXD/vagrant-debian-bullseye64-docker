$!/bin/bash

set -e

echo ">Set up the repository"
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg gpg lsb-release
sudo mkdir -p /etc/apt/keyrings
sudo rm /etc/apt/keyrings/docker.gpg
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --batch --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo ">Fix keyring permissions"
sudo apt-get update
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo ">Install"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin