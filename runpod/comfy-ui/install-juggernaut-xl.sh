#!/bin/bash

models_dir=/opt/ComfyUI/models

##############
# Checkpoints
##############
checkpoints_dir=${models_dir}/checkpoints

juggernaut_model_file=${checkpoints_dir}/juggernautXL_version5.safetensors
juggernaut_model_url="https://civitai.com/api/download/models/166909"
if [[ ! -f ${juggernaut_model_file} ]]; then
    wget -O ${juggernaut_model_file} ${juggernaut_model_url}
fi