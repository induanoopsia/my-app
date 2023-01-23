FROM centos

MAINTAINER InduAnoop

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O "https://downloads.apache.org/tomcat/tomcat-8/v8.5.85/src/apache-tomcat-8.5.85-src.tar.gz"
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.85-src/* /opt/tomcat/.
RUN yum -y install java-1.8.0-openjdk-devel
RUN java -version

WORKDIR /opt/tomcat/webapps
COPY target/*.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
