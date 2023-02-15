FROM	centos
RUN	yum install httpd -y && systemctl enable --now httpd && yum install wget -y
ADD	wget google.com/index.html /var/www/html
CMD	["systemctl restart httpd"]
