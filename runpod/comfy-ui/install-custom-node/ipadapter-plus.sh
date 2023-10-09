#!/bin/bash

source /sd-tools/runpod/comfy-ui/fn.sh

install_ip_adapter_model() {
    local dir=/opt/ComfyUI/custom_nodes/ComfyUI_IPAdapter_plus/models
    local file="${dir}/$1"
    download_if_missing $file $2
}

install_custom_node "ComfyUI_IPAdapter_plus" "https://github.com/cubiq/ComfyUI_IPAdapter_plus"

install_ip_adapter_model "ip-adapter_sd15.bin" "https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter_sd15.bin" 
install_ip_adapter_model "ip-adapter_sd15_light.bin" "https://huggingface.co/h94/IP-Adapter/blob/main/models/ip-adapter_sd15_light.bin" 
install_ip_adapter_model "ip-adapter-plus_sd15.bin" "https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter-plus_sd15.bin" 
install_ip_adapter_model "ip-adapter-plus-face_sd15.bin" "https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter-plus-face_sd15.bin" 

install_ip_adapter_model "ip-adapter_sdxl.bin" "https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter_sdxl.bin" 
install_ip_adapter_model "ip-adapter_sdxl_vit-h.bin" "https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter_sdxl_vit-h.bin" 
install_ip_adapter_model "ip-adapter-plus_sdxl_vit-h.bin" "https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter-plus_sdxl_vit-h.bin" 

install_clip_vision_model "ip-adapter-sd15.safetensors" "https://huggingface.co/h94/IP-Adapter/resolve/main/models/image_encoder/model.safetensors"
install_clip_vision_model "ip-adapter-sdxl.safetensors" "https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/image_encoder/model.safetensors"