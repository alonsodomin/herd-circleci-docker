FROM fpco/stack-build:lts-12.26

SHELL ["/bin/bash", "-c"] 

RUN sudo apt-get remove -y nodejs && \
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash && \
    export NVM_DIR="$HOME/.nvm" && \
    source "$NVM_DIR/nvm.sh" && \
    echo "NVM installed at: $NVM_DIR" && \
    nvm install node
