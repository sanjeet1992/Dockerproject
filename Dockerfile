FROM centos:7
RUN yum update -y
RUN yum install -y nginx \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page282/yogasana.zip /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
RUN unzip yogasana.zip
RUN cp -rvf yogasana-html/* .
RUN rm -rf yogasana.zip
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
#CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

