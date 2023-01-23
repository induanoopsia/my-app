FROM tomcat:latest

LABEL maintainer="Indu Anoop"

COPY target/*.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
