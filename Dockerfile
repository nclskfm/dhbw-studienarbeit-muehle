FROM continuumio/miniconda3:latest

# Install missing tools
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git vim pandoc texlive-xetex texlive-fonts-recommended texlive-generic-recommended && \
# Install missing packets
    pip3 install jupyter ipywidgets ipycanvas tqdm requests line_profiler pymongo

CMD ["jupyter-notebook", "--notebook-dir=/mnt/notebook", "--allow-root", "--no-browser", "--ip=*", "--port=8080", "--NotebookApp.token=''", "--NotebookApp.password=''"]

