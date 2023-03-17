FROM tomcat:latest
EXPOSE 8080
RUN useradd --create-home -s /bin/bash indu
WORKDIR /home/indu
USER indu
RUN rm -frv /usr/local/tomcat/webapps/*
ADD target/*.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]

