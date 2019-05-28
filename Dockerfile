FROM fpco/stack-build:lts-12.26

SHELL ["/bin/bash", "-c"]

ENV BASH_ENV $HOME/.bash_profile

RUN sudo apt-get remove -y nodejs && \
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash && \
    echo 'export NVM_DIR=$HOME/.nvm' >> $BASH_ENV && \
    echo 'source $NVM_DIR/nvm.sh' >> $BASH_ENV
#    echo '[ -s "$HOME/.bashrc" ] && \. "$HOME/.bashrc"' >> $HOME/.bash_profile

RUN nvm install node