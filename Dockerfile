FROM tomcat:latest
EXPOSE 8080
RUN apt-get -yqq update
VOLUME ["/var/run/docker.sock"]
RUN apt-get -yqq install docker.io 
RUN useradd --create-home -s /bin/bash nonrootuser
WORKDIR /home/nonrootuser
USER nonrootuser
ADD target/*.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]

