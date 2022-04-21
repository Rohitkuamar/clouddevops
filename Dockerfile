FROM centos:7
MAINTAINER Rohit
RUN yum install httpd httpd-tools -y
RUN yum install -y zip
RUN yum install -y unzip
ADD  https://www.free-css.com/assets/files/free-css-templates/download/page278/dotcom.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip dotcom.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
