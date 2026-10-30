FROM ghcr.io/saladtechnologies/comfyui-api:comfy0.35.0-api1.19.2-torch2.13.0-cuda13.0-runtime

RUN cd /opt/ComfyUI \
    && git fetch --depth 1 origin tag v0.37.0 \
    && git checkout v0.37.0 \
    && uv pip install --system --no-cache-dir -r requirements.txt
