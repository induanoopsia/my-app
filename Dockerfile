FROM tomcat:latest

LABEL maintainer="Indu Anoop"

COPY target/*.war /usr/local/tomcat/webapps/myweb.war

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
