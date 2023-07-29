#!/bin/bash

echo "Creating data directory for homer"
sudo mkdir -p /data/homer/assets

echo "Setting custom config in data directory"
sudo cp ./config/config.yml /data/homer/assets/config.yml

echo "Done"
