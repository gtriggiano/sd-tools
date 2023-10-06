#!/bin/bash

manager_git="https://github.com/ltdrdata/ComfyUI-Manager"
manager_dir="/opt/ComfyUI/custom_nodes/ComfyUI-Manager"

searge_git="https://github.com/SeargeDP/SeargeSDXL"
searge_dir="/opt/ComfyUI/custom_nodes/SeargeSDXL"

tools_git="https://github.com/gtriggiano/sd-tools"
tools_dir="/sd-tools"

if [[ ! -d $manager_dir ]]; then
    git clone $manager_git $manager_dir
else
    cd $manager_dir && git pull
fi

python -m pip install opencv-python
mkdir -p /opt/ComfyUI/models/annotators
if [[ ! -d $searge_dir ]]; then
    git clone $searge_git $searge_dir
else
    cd $searge_dir && git pull
fi

if [[ ! -d $tools_dir ]]; then
    git clone $tools_git $tools_dir
else
    cd $tools_dir && git pull
fi

bash /sd-tools/runpod/comfy-ui/install-base-models.sh