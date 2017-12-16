#!/usr/bin/env bash
# yum update -y
yum update -y
yum install -y epel-release httpd php php-fpm
systemctl start httpd
systemctl enable httpd