FROM tomcat:8.5.47-jdk8-openjdk
COPY ./*.war /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]


