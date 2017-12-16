@echo off
echo "Uninstalling apache2..."
cd apache2
vagrant destroy --force
echo "APACHE2: uninstalled"
cd ..
echo "Uninstalling mongodb..."
cd mongodb
vagrant destroy --force
echo "MONGODB: uninstalled"
cd ..
echo "Uninstalling MySQL..."
cd mysql
vagrant destroy --force
echo "MYSQL: uninstalled"
cd ..
echo "Uninstalling Redis..."
cd redis
vagrant destroy --force
echo "REDIS: uninstalled"
cd ..