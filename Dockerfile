FROM docker.io/centos:7
MAINTAINER Atanu Banerjee (atnu.bandyopadhyay@sc.com)
RUN yum install httpd -y
RUN echo "WebServer created from Jenkins" >  /var/www/html/index.html
RUN chown apache.apache /var/www/html/index.html
RUN chmod 444 /var/www/html/index.html

EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
