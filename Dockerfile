FROM ubuntu:22.04

SHELL ["/bin/bash", "-c"]
ENV TZ=Europe/Warsaw

RUN apt update && apt -y upgrade && apt -y install openjdk-8-jdk curl unzip zip
RUN curl -s https://get.sdkman.io | bash

RUN source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk install scala 2.12.16 && sdk install sbt

EXPOSE 8000
VOLUME my_volume_scala
