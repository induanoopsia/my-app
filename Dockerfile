FROM tomcat:latest

LABEL maintainer="Indu Anoop"

//ADD ./target/myweb-0.0.9.war /usr/local/tomcat/webapps/
COPY target/*.war /usr/local/tomcat/webapps/myweb.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
