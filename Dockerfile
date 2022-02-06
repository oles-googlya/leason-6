FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y default-jdk
RUN apt-get install -y maven
RUN apt-get install -y git
RUN apt-get install -y curl
EXPOSE 8080
RUN cd /tmp
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.16/bin/apache-tomcat-10.0.16.tar.gz
RUN mkdir /home/tomcat
RUN tar xzvf apache-tomcat-10.0.16.tar.gz -C /home/tomcat --strip-components=1
RUN mkdir /var/lib/tomcat10
RUN mkdir //var/lib/tomcat10/webapps
RUN cd /home
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd home/boxfuse-sample-java-war-hello.git
RUN mvn package
RUN cd target/
RUN cp hello-1.0.war /var/lib/tomcat10/webapps/
CMD ["/home/tomcat/catalina.sh", "run"]