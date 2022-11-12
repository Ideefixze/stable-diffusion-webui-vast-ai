#!/bin/bash

apt update -y
apt upgrade -y
apt install -y libgl1 transmission-cli screen python3-venv

git clone https://github.com/Ideefixze/stable-diffusion-webui-vast-ai.git
cd stable-diffusion-webui-vast-ai

conda create -n "stable-diff" python=3.10.4 -y
conda init bash
bash
conda activate stable-diff

cd /workspace/stable-diffusion-webui-vast-ai/models
wget https://huggingface.co/hakurei/waifu-diffusion-v1-3/resolve/main/wd-v1-3-full.ckpt

cd /workspace/stable-diffusion-webui-vast-ai
./webui.sh
