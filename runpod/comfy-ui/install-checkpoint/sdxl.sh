#!/bin/bash

source /sd-tools/runpod/comfy-ui/fn.sh

install_checkpoint "sd_xl_base_1.0_0.9vae.safetensors" "https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0_0.9vae.safetensors"
install_checkpoint "sd_xl_refiner_1.0_0.9vae.safetensors" "https://huggingface.co/stabilityai/stable-diffusion-xl-refiner-1.0/resolve/main/sd_xl_refiner_1.0_0.9vae.safetensors"
install_vae "sdxl_vae.safetensors" "https://huggingface.co/madebyollin/sdxl-vae-fp16-fix/resolve/main/sdxl_vae.safetensors"
install_lora "sd_xl_offset_example-lora_1.0.safetensors" "https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_offset_example-lora_1.0.safetensors"
install_upscaler "4x_NMKD-Siax_200k.pth" "https://huggingface.co/uwg/upscaler/resolve/main/ESRGAN/4x_NMKD-Siax_200k.pth"
install_upscaler "4x-UltraSharp.pth" "https://huggingface.co/uwg/upscaler/resolve/main/ESRGAN/4x-UltraSharp.pth"
install_annotator "ControlNetHED.pth" "https://huggingface.co/lllyasviel/Annotators/resolve/main/ControlNetHED.pth"
install_annotator "res101.pth" "https://huggingface.co/lllyasviel/Annotators/resolve/main/res101.pth"
