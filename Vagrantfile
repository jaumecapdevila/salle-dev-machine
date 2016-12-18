# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "puppetlabs/centos-7.0-64-puppet"

  config.vm.network "private_network", ip: "192.168.33.120"

  config.vm.hostname = "sallevm"

  config.vm.synced_folder "./projects/", "/var/www", create: true

  config.vm.provider "virtualbox" do |vb|

	  vb.name	= "sallevm"
	  vb.memory	= "2048"
	  vb.cpus 	= 2

  end

  config.vm.provision :shell do |shell|
    shell.path = "scripts/downloadPuppetModules.sh"
  end

  config.vm.provision :puppet do |puppet|
	puppet.environment_path = "environments"
	puppet.environment		= "development"
	puppet.module_path		= "modules"
  end

  config.vm.provision :shell do |shell|
    shell.path = "scripts/complements.sh"
  end

end
