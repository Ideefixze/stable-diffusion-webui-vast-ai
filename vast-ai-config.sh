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

cd /workspace/stable-diffusion-webui-vast-ai/models/Stable-diffusion
wget https://huggingface.co/Linaqruf/anything-v3.0/resolve/main/Anything-V3.0.ckpt
wget https://huggingface.co/hakurei/waifu-diffusion-v1-4/blob/main/wd-1-4-anime_e1.ckpt
