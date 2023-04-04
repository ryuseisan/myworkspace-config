#!/bin/bash

# Install gpu driver
# If you get a GPG key error
# sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub
# sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
sudo apt update
sudo apt install -y ubuntu-drivers-common
sudo ubuntu-drivers devices

# Install CUDA
sudo apt install -y nvidia-cuda-toolkit
