FROM tomcat:8
LABEL app=my-app
ADD ./target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
