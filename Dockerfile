FROM tomcat:latest
EXPOSE 8080
RUN rm -frv /usr/local/tomcat/webapps/*
RUN -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/
ADD target/*.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]

