FROM fpco/stack-build:lts-12.26

SHELL ["/bin/bash", "-c"] 

LABEL com.circleci.preserve-entrypoint=true

COPY entry-point.sh /

RUN sudo apt-get remove -y nodejs && \
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash && \
    /entry-point.sh nvm install node

ENTRYPOINT ["/entry-point.sh"]