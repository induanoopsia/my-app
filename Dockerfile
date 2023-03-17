FROM tomcat:latest
EXPOSE 8080
RUN apt-get -yqq update
VOLUME ["/var/run/docker.sock"]
RUN apt-get -yqq install docker.io 
RUN -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/
ADD target/*.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]

