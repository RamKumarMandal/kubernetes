FROM centos:7
MAINTAINER rk19mandal@gmail.com
RUN yum install -y httpd \
     zip\
     unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page289/atema.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip atema.zip
RUN cp -rvf html/* .
RUN rm -rf html atema.zip
CMD [ "/usr/sbin/httpd","-D","FOREGROUND" ]
EXPOSE 80 22 23
