#!/bin/bash
#install httpd (linux 2 version)
yum update -y
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service
echo "Hello World from $(hostname -f)" > /var/www/html/index.html
#mkdir /var/www/html/bar
#echo "Web app /bar hosted on $(hostname -f)" > /var/www/html/bar/index.html