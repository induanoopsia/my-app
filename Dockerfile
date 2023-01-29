FROM tomcat:latest
RUN cp -R /usr/local/tomcat webpp.dist/* /usr/local/tomcat/webapps
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
CMD ["catalina.sh", "run"]


