FROM centos:7
RUN yum install -y httpd \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page282/yogasana.zip /var/ww/html/
WORKDIR /var/ww/html/
RUN unzip yogasana.zip
RUN cp -rvf yogasana-html/* .
RUN rm -rf yogasana.zip
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

