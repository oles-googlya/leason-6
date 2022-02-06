FROM ubuntu:20.04
RUN apt update
RUN apt install -y default-jdk
RUN apt install -y maven
RUN apt install -y git
RUN cd /tmp
RUN wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.16/bin/apache-tomcat-10.0.16.tar.gz
RUN mkdir /home/tomcat
RUN tar xzvf apache-tomcat-10.0.16.tar.gz -C /opt/tomcat --strip-components=1
RUN cd/home/user

