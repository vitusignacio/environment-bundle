#!/usr/bin/env bash
yum update -y
yum install -y wget
wget https://repo.mysql.com/mysql57-community-release-el7-11.noarch.rpm
rpm -ivh mysql57-community-release-el7-11.noarch.rpm -y
yum install mysql-server -y
systemctl start mysqld
systemctl enable mysqld