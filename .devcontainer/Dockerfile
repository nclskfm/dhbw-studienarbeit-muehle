FROM mcr.microsoft.com/vscode/devcontainers/miniconda:3

# Install missing tools
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git vim && \
# Install missing packets
    pip3 install jupyter ipywidgets ipycanvas tqdm requests

USER vscode
