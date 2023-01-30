FROM tomcat:8
EXPOSE 8080
ADD ./target/*.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]

