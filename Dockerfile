FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y default-jdk
RUN apt-get install -y maven
RUN apt-get install -y git
RUN apt-get install -y curl
EXPOSE 8080
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.16/bin/apache-tomcat-10.0.16.tar.gz
RUN mkdir /home/tomcat
RUN tar xzvf apache-tomcat-10.0.16.tar.gz -C /home/tomcat --strip-components=1
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /boxfuse-sample-java-war-hello
RUN ls
RUN mvn package
RUN cp /boxfuse-sample-java-war-hello/target/hello-1.0.war /home/tomcat/webapps/
CMD ["/home/tomcat/bin/catalina.sh", "run"]