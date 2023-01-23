FROM tomcat:8.5.85-jdk8

LABEL maintainer="Indu Anoop"

COPY target/*.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
