FROM centos:latest
MAINTAINER aniruddhsinghbisen@gmail.com

RUN yum install -y httpd \
   zip \
   unzip
   
ADD https://www.free-css.com/free-css-templates/page281/john-doe.zip  /var/www/html
WORKDIR /var/www/html
RUN unzip john-dow.zip
RUN cp -rvf john-doe/* . 
RUN rm -rf john-doe john-doe.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
