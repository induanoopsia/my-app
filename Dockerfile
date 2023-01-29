FROM tomcat:latest
EXPOSE 8080
ADD ./target/myweb-0.0.1.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]


