FROM centos:centos7.9.2009
RUN yum update -y && \
    yum install -y httpd && \
    yum clean all
COPY ./code/* /var/www/html/
EXPOSE 80 22
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]