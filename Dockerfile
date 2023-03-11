FROM tomcat:latest
EXPOSE 8080
RUN rm -frv /usr/local/tomcat/webapps/*
ADD target/*.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
RUN sudo groupadd docker
RUN sudo usermod -aG docker $USER
RUN newgrp - docker


