FROM ubuntu

MAINTAINER jacob

RUN apt-get update
RUN apt-get install -y nginx
COPY index.html /var/www/html/index.html

ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
EXPOSE 80
