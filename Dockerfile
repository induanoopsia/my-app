FROM tomcat:latest
EXPOSE 8080
RUN rm -frv /usr/local/tomcat/webapps/*
WORKDIR /usr/local/tomcat/webapp.dist
COPY usr/local/tomcat/webapp.dist/* /usr/local/tomcat/webapps/
ADD target/*.war /usr/local/tomcat/webapps/myweb.war
CMD ["catalina.sh", "run"]


