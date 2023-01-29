FROM tomcat:latest
RUN cp -R /usr/local/tomcat webpp.dist/* /usr/local/tomcatwebapps
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
CMD ["catalina.sh", "run"]


