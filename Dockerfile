FROM continuumio/miniconda3:latest

# Install missing tools
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git vim && \
# Install missing packets
    pip3 install jupyter ipywidgets ipycanvas tqdm requests

CMD ["jupyter-notebook", "--port", "8080", "--allow-root", "--notebook-dir", "/mnt/notebook", "--ip", "*"]

