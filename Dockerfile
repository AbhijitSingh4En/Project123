FROM	centos:7
RUN	yum -y install httpd && \
    	yum clean all && \
	curl -s www.google.com >> /var/www/html/index.html
RUN	systemctl enable --now httpd.service
CMD	["/usr/sbin/httpd", "-D", "FOREGROUND"]
