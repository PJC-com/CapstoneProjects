#!/bin/bash
dnf install -y httpd
systemctl enable httpd
systemctl start httpd
cat > /var/www/html/index.html <<'HTML'
<h1>Project 16 - HTTPS using ACM</h1>
<h2>Created by Parth</h2>
<p>Application Load Balancer secured with HTTPS.</p>
HTML
