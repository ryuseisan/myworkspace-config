#!/bin/bash

# Install gpu driver
sudo apt update
sudo apt install -y ubuntu-drivers-common
sudo apt install -y nvidia-driver-470
sudo nvidia-smi

# If you get a GPG key error

# sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub
# sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
# sudo apt update
# sudo apt install -y ubuntu-drivers-common
# sudo apt install -y nvidia-driver-470
# sudo nvidia-smi

# Install CUDA
sudo apt install -y nvidia-cuda-toolkit
nvcc --version
