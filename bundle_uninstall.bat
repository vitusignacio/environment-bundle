@echo off
echo "Getting apache2 up..."
cd apache2
vagrant destroy --force
echo "APACHE2: uninstalled"
cd ..
echo "Getting mongodb up..."
cd mongodb
vagrant destroy --force
echo "MONGODB: uninstalled"
cd ..
echo "Getting MySQL up..."
cd mysql
vagrant destroy --force
echo "MYSQL: uninstalled"
cd ..
echo "Getting Redis up..."
cd redis
vagrant destroy --force
echo "REDIS: uninstalled"
cd ..