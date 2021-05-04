FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

# Install missing tools
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git vim && \
# Install LaTeX packages
    apt-get install -y texlive-latex-recommended latexmk texlive-latex-extra texlive-latex-recommended texlive-bibtex-extra biber texlive-lang-german texlive-xetex
# Install missing fonts
RUN echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections && \
	ACCEPT_EULA=Y apt-get install -y ttf-mscorefonts-installer
# Install biblatex
# RUN apt-get install -y biblatex

USER vscode
