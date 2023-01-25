FROM tomcat:8
LABEL app=my-app
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
WORKDIR /usr/local/tomcat/webapps.dist
CMD cp -R * ../webapps/

