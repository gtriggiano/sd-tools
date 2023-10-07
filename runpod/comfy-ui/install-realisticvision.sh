#!/bin/bash

models_dir=/opt/ComfyUI/models

##############
# Checkpoints
##############
checkpoints_dir=${models_dir}/checkpoints

realistic5_vae_model_file=${checkpoints_dir}/realisticVisionV51_v51VAE.safetensors
realistic5_vae_model_url="https://civitai.com/api/download/models/130072?type=Model&format=SafeTensor&size=pruned&fp=fp16"
if [[ ! -f ${realistic5_vae_model_file} ]]; then
    wget -O ${realistic5_vae_model_file} ${realistic5_vae_model_url}
fi