FROM tomcat:8
LABEL maintainer="Indu Anoop"
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
RUN cd webapps.dist
RUN cp -R webapps.dist /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh","run"]
