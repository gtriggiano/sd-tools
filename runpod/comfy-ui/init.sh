#!/bin/bash

############
# Base deps
############

apt update
apt install build-essential -y

tools_git="https://github.com/gtriggiano/sd-tools"
tools_dir="/sd-tools"
if [[ ! -d $tools_dir ]]; then
    git clone $tools_git $tools_dir
else
    cd $tools_dir && git pull
fi

source /sd-tools/runpod/comfy-ui/fn.sh

install_custom_node "ComfyUI-Manager" "https://github.com/ltdrdata/ComfyUI-Manager"

if [[ $INSTALL_DREAMSHAPER_XL = "true" ]]; then
    bash /sd-tools/runpod/comfy-ui/install-checkpoint/dreamshaper-xl.sh
fi

if [[ $INSTALL_JUGGERNAUT_XL = "true" ]]; then
    bash /sd-tools/runpod/comfy-ui/install-checkpoint/juggernaut-xl.sh
fi

if [[ $INSTALL_REALISTICVISION = "true" ]]; then
    bash /sd-tools/runpod/comfy-ui/install-checkpoint/realisticvision.sh
fi

if [[ $INSTALL_REALVISXL = "true" ]]; then
    bash /sd-tools/runpod/comfy-ui/install-checkpoint/realvis-xl.sh
fi

if [[ $INSTALL_SDXL = "true" ]]; then
    bash /sd-tools/runpod/comfy-ui/install-checkpoint/sdxl.sh
fi

if [[ $INSTALL_LORAS = "true" ]]; then
    bash /sd-tools/runpod/comfy-ui/install-loras.sh
fi



