FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y default-jdk
RUN apt-get install -y maven
RUN apt-get install -y git
EXPOSE 8080
RUN cd /tmp
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.16/bin/apache-tomcat-10.0.16.tar.gz
RUN mkdir /home/tomcat
RUN tar xzvf apache-tomcat-10.0.16.tar.gz -C /opt/tomcat --strip-components=1
RUN mkdir /var/lib/tomcat10
RUN mkdir //var/lib/tomcat10/webapps
RUN cd/home/user
RUN git clone https://github.com/boxuse/boxuse-java-war-hello.git
RUN cd boxuse-java-war-hello.git
RUN mvn package
RUN cd target/
RUN cp hello-1.0.war /var/lib/tomcat10/webapps/
CMD ["/home/tomcat/catalina.sh", "run"]