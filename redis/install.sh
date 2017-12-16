#!/usr/bin/env bash
cp /home/vagrant/redis.conf /etc/redis.conf
yum update -y
yum install -y epel-release
yum update -y
yum install redis -y
systemctl start redis
systemctl enable redis