FROM centos:latest
RUN yum install -y httpd \
    zip \
	unzip \
ADD https://www.free-css.com/assets/files/free-css-templates/download/page282/pro.zip /var/ww/html/
WORKDIR /var/ww/html/
RUN unzip pro.zip
RUN cp -rvf pro/* .
RUN rm -rf pro.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
