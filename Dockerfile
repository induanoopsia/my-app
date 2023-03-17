FROM tomcat:latest
EXPOSE 8080
RUN apt-get -yqq update
VOLUME ["/var/run/docker.sock"]
RUN apt-get -yqq install docker.io 
ADD target/*.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]

