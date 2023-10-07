#!/bin/bash

models_dir=/opt/ComfyUI/models
loras_dir=${models_dir}/loras

lora_file=${loras_dir}/c0nst3llation.safetensors
lora_url="https://civitai.com/api/download/models/172817"
if [[ ! -f ${lora_file} ]]; then
    wget -O ${lora_file} ${lora_url}
fi

lora_file=${loras_dir}/origami.safetensors
lora_url="https://civitai.com/api/download/models/169828"
if [[ ! -f ${lora_file} ]]; then
    wget -O ${lora_file} ${lora_url}
fi

lora_file=${loras_dir}/PerfectEyesXL.safetensors
lora_url="https://civitai.com/api/download/models/118427"
if [[ ! -f ${lora_file} ]]; then
    wget -O ${lora_file} ${lora_url}
fi

lora_file=${loras_dir}/dungeons_and_dragons_xl_v2.safetensors
lora_url="https://civitai.com/api/download/models/152042"
if [[ ! -f ${lora_file} ]]; then
    wget -O ${lora_file} ${lora_url}
fi

lora_file=${loras_dir}/Aether_Cloud_v1.safetensors
lora_url="https://civitai.com/api/download/models/156328"
if [[ ! -f ${lora_file} ]]; then
    wget -O ${lora_file} ${lora_url}
fi

lora_file=${loras_dir}/lora-sdxl-flaming-person.safetensors
lora_url="https://civitai.com/api/download/models/129693"
if [[ ! -f ${lora_file} ]]; then
    wget -O ${lora_file} ${lora_url}
fi

