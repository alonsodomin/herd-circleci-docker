FROM fpco/stack-build:lts-12.26

RUN sudo apt-get remove -y nodejs && \
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash && \
    source ~/.bashrc && \
    nvm install node