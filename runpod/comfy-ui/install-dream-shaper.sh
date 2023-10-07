#!/bin/bash

models_dir=/opt/ComfyUI/models

##############
# Checkpoints
##############
checkpoints_dir=${models_dir}/checkpoints

dreamshaper_model_file=${checkpoints_dir}/dreamshaperXL10_alpha2Xl10.safetensors
dreamshaper_model_url="https://civitai.com/api/download/models/126688"
if [[ ! -f ${dreamshaper_model_file} ]]; then
    wget -O ${dreamshaper_model_file} ${dreamshaper_model_url}
fi