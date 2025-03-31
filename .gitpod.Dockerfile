FROM gitpod/workspace-full

USER root

RUN sudo apt-get update && sudo apt-get install -y racket

USER gitpod
