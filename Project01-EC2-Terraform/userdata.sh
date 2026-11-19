#!/bin/bash

dnf update -y
dnf install -y httpd

systemctl enable httpd
systemctl start httpd

cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>Terraform Deployment</title>
</head>
<body>
    <h1>AWS Linux Web Server</h1>
    <p>Website deployed using Terraform.</p>
    <p>Project 1 completed successfully.</p>
</body>
</html>
EOF
