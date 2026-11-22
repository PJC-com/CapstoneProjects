#!/bin/bash
dnf install -y httpd
systemctl enable httpd
systemctl start httpd
echo "<h1>Parth Project20 Web Server 2</h1>" > /var/www/html/index.html
