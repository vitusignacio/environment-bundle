#!/usr/bin/env bash
cp /home/vagrant/mongodb-org-3.6.repo /etc/yum.repos.d/mongodb-org-3.6.repo
cp /home/vagrant/mongod.conf /etc/mongod.conf
yum update -y
yum install -y mongodb-org
systemctl start mongod
systemctl enable mongod