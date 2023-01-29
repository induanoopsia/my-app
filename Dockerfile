FROM tomcat:8
COPY target/*.war /usr/local/tomcat/webapps/myindu.war
CMD ["catalina.sh", "run"]
