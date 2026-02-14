#!/usr/bin/env bash
set -euo pipefail

COMFY_DIR="/workspace/ComfyUI"
CUSTOM_DIR="${COMFY_DIR}/custom_nodes"

mkdir -p "${CUSTOM_DIR}"

echo "[iPoolOS] Installing comfyui_controlnet_aux..."
if [ ! -d "${CUSTOM_DIR}/comfyui_controlnet_aux" ]; then
  git clone --depth 1 https://github.com/Fannovel16/comfyui_controlnet_aux.git \
    "${CUSTOM_DIR}/comfyui_controlnet_aux"
fi

echo "[iPoolOS] Installing requirements..."
python3 -m pip install --no-cache-dir -r "${CUSTOM_DIR}/comfyui_controlnet_aux/requirements.txt"

echo "[iPoolOS] Done."
