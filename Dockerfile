FROM  alpine:3.14
MAINTAINER rk19mandal@gmail.com
RUN apk install -y httpd \
     zip\
     unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page289/atema.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip atema.zip
RUN cp -rvf atema/* .
RUN rm -rf atema atema.zip
CMD [ "/usr/sbin/httpd","-D","FOREGROUND" ]
EXPOSE 80 22
