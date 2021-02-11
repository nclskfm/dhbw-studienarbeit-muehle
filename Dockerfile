FROM continuumio/miniconda3:latest

# Install missing tools
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git vim && \
# Install missing packets
    pip3 install jupyter ipywidgets ipycanvas tqdm requests line_profiler

CMD ["jupyter-notebook", "--notebook-dir=/mnt/notebook", "--allow-root", "--no-browser", "--ip=*", "--port=8080", "--NotebookApp.token=''", "--NotebookApp.password=''"]

