#!/bin/bash

############
# Base deps
############

apt update
apt install build-essential -y

manager_git="https://github.com/ltdrdata/ComfyUI-Manager"
manager_dir="/opt/ComfyUI/custom_nodes/ComfyUI-Manager"
if [[ ! -d $manager_dir ]]; then
    git clone $manager_git $manager_dir
else
    cd $manager_dir && git pull
fi

styler_git=https://github.com/ali1234/sdxl_prompt_styler
styler_dir="/opt/ComfyUI/custom_nodes/sdxl_prompt_styler"
if [[ ! -d $styler_dir ]]; then
    git clone $styler_git $styler_dir
else
    cd $styler_dir && git pull
fi

tools_git="https://github.com/gtriggiano/sd-tools"
tools_dir="/sd-tools"
if [[ ! -d $tools_dir ]]; then
    git clone $tools_git $tools_dir
else
    cd $tools_dir && git pull
fi

bash /sd-tools/runpod/comfy-ui/install-base-models.sh