# Readme #
### Purpose ###
This is designed to streamline development process and reduce time of environment setups through virtualisation.
### Used Tools ###
1. Vagrant
2. VirtualBox 5.1.26 __Required__
### Required Knowledges and Experiences ###
1. Powershell scripting
2. Shellscript scripting
3. Batch scripting
### Prerequisites ###
1. Ruby
### Instructions ###
__bundle_install__ files are used to install all the services at once
```
bundle_install.bat
```
```
./bundle_install.ps1
```
```
./bundle_install.sh
```
__bundle_start__ files are used to install and start one selected service each
```
bundle_start.bat <service> <provision>
```
```
./bundle_start.ps1 -service <service> -provision <provision>
```
```
./bundle_start.sh <service> <provision>
```
__bundle_uninstall__ files are used to uninstall all the services at once
```
bundle_uninstall.bat <service> <provision>
```
```
./bundle_uninstall.ps1 -service <service> -provision <provision>
```
```
./bundle_uninstall.sh <service> <provision>
```
### Common solutions ###
__Fix file sync__
```
vagrant plugin install vagrant-vbguest
```
or download it from [VirtualBox 5.1.26](http://download.virtualbox.org/virtualbox/5.1.26/)
