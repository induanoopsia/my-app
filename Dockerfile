FROM tomcat:latest
EXPOSE 8080
RUN rm -frv /usr/local/tomcat/webapps/*
WORKDIR /usr/local/tomcat/webapp.dist
ADD target/*.war /usr/local/tomcat/webapps/myinduweb.war
CMD ["catalina.sh", "run"]


