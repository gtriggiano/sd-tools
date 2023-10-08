#!/bin/bash

annotator_dir=/opt/ComfyUI/models//annotators
checkpoint_dir=/opt/ComfyUI/models/checkpoints
clip_vision_dir=/opt/ComfyUI/models/clip_vision
custom_node_dir=/opt/ComfyUI/custom_nodes
lora_dir=/opt/ComfyUI/models/loras
upscaler_dir=/opt/ComfyUI/models/upscale_models
vae_dir=/opt/ComfyUI/models/vae

mkdir -p $annotator_dir

download_if_missing() {
    if [[ ! -f $1 ]]; then
        wget -O $1 $2
    fi
}

install_annotator () {
    local annotator_file="${annotator_dir}/$1"
    local annotator_url=$2
    download_if_missing $annotator_file $annotator_url
}

install_checkpoint () {
    local model_file="${checkpoint_dir}/$1"
    local model_url=$2
    download_if_missing $model_file $model_url
}

install_clip_vision_model () {
    local model_file="${clip_vision_dir}/$1"
    local model_url=$2
    download_if_missing $model_file $model_url
}

install_custom_node() {
    local node_dir="${custom_node_dir}/$1"
    local node_repo=$2
    if [[ ! -d $node_dir ]]; then
        git clone $node_repo $node_dir
    else
        cd $node_dir && git pull
    fi
}

install_lora () {
    local lora_file="${lora_dir}/$1"
    local lora_url=$2
    download_if_missing $lora_file $lora_url
}

install_upscaler () {
    local upscaler_file="${upscaler_dir}/$1"
    local upscaler_url=$2
    download_if_missing $upscaler_file $upscaler_url
}

install_vae () {
    local vae_file="${vae_dir}/$1"
    local vae_url=$2
    download_if_missing $vae_file $vae_url
}