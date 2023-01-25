FROM ubuntu:18.04
MAINTAINER INDU
RUN apt-get update && apt-get install -y apache2 && apt-get clean && rm -rf /var/lib/apt/lists/*

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
EXPOSE 80
WORKDIR /usr/local/tomcat/webapps.dist
CMD ["cp", "-R", "../webapps/"]
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

