#!/bin/bash

apt update -y
apt upgrade -y
apt install -y libgl1 transmission-cli screen vim python3-venv

git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
cd stable-diffusion-webui

conda create -n "stable-diff" python=3.10.4 -y
conda init bash
bash
conda activate stable-diff

cd /workspace/stable-diffusion-webui/models
wget https://huggingface.co/hakurei/waifu-diffusion-v1-3/resolve/main/wd-v1-3-full.ckpt

cd /workspace/stable-diffusion-webui
./webui.sh
