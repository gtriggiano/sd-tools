#!/bin/bash

source /sd-tools/runpod/comfy-ui/fn.sh

face_restore_models_dir=/opt/ComfyUI/custom_nodes/comfyui-reactor-node/models/facerestore_models

install_custom_node "comfyui-reactor-node" "https://github.com/Gourieff/comfyui-reactor-node"

download_if_missing "${face_restore_models_dir}/codeformer.pth" https://github.com/sczhou/CodeFormer/releases/download/v0.1.0/codeformer.pth
download_if_missing "${face_restore_models_dir}/GFPGANv1.4.pth" https://github.com/TencentARC/GFPGAN/releases/download/v1.3.4/GFPGANv1.4.pth
