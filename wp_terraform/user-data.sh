#!/bin/bash
              sudo yum update -y
              sudo yum install -y httpd php mysql php-mysql
              sudo systemctl start httpd
              sudo systemctl enable httpd
              cd /var/www/html
              wget https://wordpress.org/latest.tar.gz
              tar -xzf latest.tar.gz
              mv wordpress/* .
              rm -rf wordpress latest.tar.gz
              sudo chown -R apache:apache /var/www/html