#!/usr/bin/env bash

set -e

# Install CUDA 8
sudo apt-get install -y linux-image-extra-`uname -r`
wget https://developer.nvidia.com/compute/cuda/8.0/prod/local_installers/cuda_8.0.44_linux-run
sudo sh cuda_8.0.44_linux-run --silent --driver --toolkit
rm cuda_8.0.44_linux-run

# Install DNN 5
wget https://s3-us-west-2.amazonaws.com/pinafore-us-west-2/public/cudnn-8.0-linux-x64-v5.1.tgz
tar zxvf cudnn-8.0-linux-x64-v5.1.tgz
rm cudnn-8.0-linux-x64-v5.1.tgz
cat cuda-dnn-env.sh >> ~/.bashrc
source ~/.bashrc
