#!/usr/bin/env bash
execute()
{
    cd "$PWD/$1"
    vagrant destroy --force
    cd $PWD
}
echo "Starting environment setup/configuration process..."
SERVICES=( apache2 mysql mongodb redis )
for service in ${SERVICES[*]}
do
    echo "Uninstalling $service"
    execute $service
done