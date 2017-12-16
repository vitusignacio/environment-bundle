@echo off
echo "Getting apache2 up..."
cd apache2
vagrant up --provision
vagrant plugin install vagrant-vbguest
vagrant halt
echo "APACHE2: up and running"
cd ..
echo "Getting mongodb up..."
cd mongodb
vagrant up --provision
vagrant plugin install vagrant-vbguest
vagrant halt
echo "MONGODB: up and running"
cd ..
echo "Getting MySQL up..."
cd mysql
vagrant up --provision
vagrant plugin install vagrant-vbguest
vagrant halt
echo "MYSQL: up and running"
cd ..
echo "Getting Redis up..."
cd redis
vagrant up --provision
vagrant plugin install vagrant-vbguest
vagrant halt
echo "REDIS: up and running"
cd ..