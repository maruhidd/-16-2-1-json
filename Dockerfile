# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.0-base

# install custom nodes into comfyui
# (no custom nodes required by this workflow)

# download models into comfyui
RUN comfy model download --url https://huggingface.co/Toc/toc/blob/af929bcdfdc3c62f6b42c98a19b2b42da7d695d7/models/waiNSFWIllustrious_v80.safetensors --relative-path models/checkpoints --filename waiNSFWIllustrious_v80.safetensors
RUN comfy model download --url https://huggingface.co/h94/IP-Adapter/resolve/main/models/image_encoder/model.safetensors --relative-path models/clip --filename CLIP-ViT-H-14-laion2B-s32B-b79K.safetensors
RUN comfy model download --url https://huggingface.co/2vXpSwA7/iroiro-lora/resolve/main/test_controlnet2/CN-anytest_v4-marged.safetensors --relative-path models/diffusion_models --filename CN-anytest_v4-marged.safetensors
RUN comfy model download --url https://huggingface.co/tianweiy/DMD2/resolve/main/dmd2_sdxl_4step_lora.safetensors --relative-path models/loras --filename dmd2_sdxl_4step_lora.safetensors

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
