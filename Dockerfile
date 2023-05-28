FROM centos:7.9.2009

MAINTAINER "sunil.contact123@gmail.com"

ARG name="Sunil"

RUN yum update -y && yum install httpd vim netstat net-tools -y

COPY index.html /var/www/html

WORKDIR /var/www/html

COPY Dockerfile /root
COPY index.html /root

EXPOSE 80 443

ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]

