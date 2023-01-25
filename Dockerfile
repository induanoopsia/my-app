FROM tomcat:9.0.27-jdk8-openjdk
VOLUME /tmp
RUN chmod -R 777 $CATALINA_HOME/webapps 
ENV CATALINA_HOME /usr/local/tomcat
COPY target/*.war $CATALINA_HOME/webapps/myapp.war
CMD ["catalina.sh","run"]


