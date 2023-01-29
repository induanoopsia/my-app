FROM tomcat:latest
WORKDIR usr/local/tomcat/webapp.dist/
RUN cp -R * ../webapps/
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
CMD ["catalina.sh", "run"]


