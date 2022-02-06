FROM ubuntu:20.04
RUN apt update
RUN apt install -y default-jdk
RUN apt install -y maven
RUN apt install -y git