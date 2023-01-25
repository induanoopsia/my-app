FROM tomcat:8.5.16-jre8-alpine
MAINTAINER INDU ANOOP
EXPOSE 8080
RUN rm -rf /usr/local/tomcat/webapps/*
RUN rm -rf /usr/local/tomcat/webapps.dist/*
ADD ./target/*.war /usr/local/tomcat/webapps/
CMD ["catalina.sh","run"]


