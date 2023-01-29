FROM tomcat:latest
EXPOSE 8080
WORKDIR /usr/local/tomcat/webapp.dist
RUN ["/bin/bash", "-c", "cp -R * ../webapps/"]
RUN rm -frv /usr/local/tomcat/webapps/*
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
CMD ["catalina.sh", "run"]


