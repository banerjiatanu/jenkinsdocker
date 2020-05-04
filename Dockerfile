FROM docker.io/centos:latest
MAINTAINER Atanu Banerjee (atnu.bandyopadhyay@sc.com)
RUN dnf clean all
RUN rm -rf /var/cache/dnf
RUN dnf upgrade
RUN yum install httpd -y
RUN echo "WebServer created from Jenkins" >  /var/www/html/index.html
RUN chown apache.apache /var/www/html/index.html
RUN chmod 444 /var/www/html/index.html

EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
