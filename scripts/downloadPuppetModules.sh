#/bin/bash

dir='/vagrant/modules/'

echo "Installing git command..."
yum install -y git

echo "Installing Puppet modules..."
puppet module install example42-yum --modulepath $dir --version 2.1.25;
puppet module install puppetlabs/mysql --modulepath $dir --version 3.6.1;
puppet module install example42-php  --modulepath $dir --version 2.0.25;
puppet module install puppetlabs-apache --modulepath $dir --version 1.6.0;
puppet module install crayfishx-firewalld --modulepath $dir --version 1.2.3;
puppet module install example42-timezone --modulepath $dir --version 2.0.13;
puppet module install arioch/redis --modulepath $dir --version 1.2.2;

exit 0;
