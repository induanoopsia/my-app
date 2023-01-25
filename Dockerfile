FROM tomcat:8
LABEL app=my-app
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
WORKDIR /usr/local/tomcat/webapps.dist/
RUN cp -R * ../webapps/

