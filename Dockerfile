FROM tomcat:8.5.16-jre8-alpine
MAINTAINER INDU ANOOP
EXPOSE 8080
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./target/myweb-0.0.1.war /usr/local/tomcat/webapps/ROOT.war
CMD ["catalina.sh","run"]


