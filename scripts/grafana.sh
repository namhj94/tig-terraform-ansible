#!/bin/sh

# Setup
sudo apt-get install -y apt-transport-https
sudo apt-get install -y software-properties-common wget
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -

# Add this repository for stable releases:
echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list

# Install
sudo apt-get update -y
sudo apt-get install -y grafana

# Start Server & Enable Server
sudo systemctl daemon-reload
sudo systemctl start grafana-server
sudo systemctl enable grafana-server