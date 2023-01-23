FROM tomcat:latest

LABEL maintainer="Indu Anoop"

ADD ./target/myweb-0.0.9.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
