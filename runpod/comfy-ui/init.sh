#!/bin/bash

manager_git="https://github.com/ltdrdata/ComfyUI-Manager"
manager_dir="/opt/ComfyUI/custom_nodes/ComfyUI-Manager"

tools_git="https://github.com/gtriggiano/sd-tools"
tools_dir="/sd-tools"

if [[ ! -d $manager_dir ]]; then
    git clone $manager_git $manager_dir
else
    cd $manager_dir && git pull
fi

if [[ ! -d $tools_dir ]]; then
    git clone $tools_git $tools_dir
else
    cd $tools_dir && git pull
fi

bash /sd-tools/runpod/comfy-ui/install-base-models.sh