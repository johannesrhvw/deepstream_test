FROM nvcr.io/nvidia/deepstream:6.3-triton-multiarch

# Install python dependencies
RUN bash /opt/nvidia/deepstream/deepstream/user_deepstream_python_apps_install.sh --version 1.1.11 && \
    pip install ultralytics onnx onnxruntime

WORKDIR /workspaces
