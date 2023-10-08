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
install_custom_node "ComfyUI-Impact-Pack" "https://github.com/ltdrdata/ComfyUI-Impact-Pack"
install_custom_node "sdxl_prompt_styler" "https://github.com/ali1234/sdxl_prompt_styler"


if [[ $INSTALL_DREAMSHAPER_XL = "true" ]]; then
    bash /sd-tools/runpod/comfy-ui/install-dreamshaper-xl.sh
fi

if [[ $INSTALL_IPADAPTER_PLUS = "true" ]]; then
    bash /sd-tools/runpod/comfy-ui/install-ipadapter-plus.sh
fi

if [[ $INSTALL_JUGGERNAUT_XL = "true" ]]; then
    bash /sd-tools/runpod/comfy-ui/install-juggernaut-xl.sh
fi

if [[ $INSTALL_LORAS = "true" ]]; then
    bash /sd-tools/runpod/comfy-ui/install-loras.sh
fi

if [[ $INSTALL_REALISTICVISION = "true" ]]; then
    bash /sd-tools/runpod/comfy-ui/install-realisticvision.sh
fi

if [[ $INSTALL_REALVISXL = "true" ]]; then
    bash /sd-tools/runpod/comfy-ui/install-realvis-xl.sh
fi

if [[ $INSTALL_SDXL = "true" ]]; then
    bash /sd-tools/runpod/comfy-ui/install-sdxl.sh
fi





