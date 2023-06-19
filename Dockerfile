FROM centos:centos7.9.2009
RUN yum update -y && \
    yum install -y httpd && \
    yum clean all
COPY ./ /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
