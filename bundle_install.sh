#!/usr/bin/env bash
execute()
{
    cd "$PWD/$1"
    vagrant up --provision
    vagrant halt
    cd $PWD
}
echo "Starting environment setup/configuration process..."
SERVICES=( apache2 mysql mongodb redis )
for service in ${SERVICES[*]}
do
    echo "Installing $service"
    execute $service
done