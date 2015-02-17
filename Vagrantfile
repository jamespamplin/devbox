# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vbguest.auto_update = false

  # config.vm.box = "chef/fedora-21"
  config.vm.box = "hansode/fedora-21-server-x86_64"

  config.vm.network "private_network", ip: "192.168.19.84"

  # Virtualbox specific settings
  config.vm.provider "virtualbox" do |vb|
    vb.gui = true

    vb.cpus = 2
    vb.memory = 4096

    vb.customize ["modifyvm", :id, "--vram", "128"]
    vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
  end

  config.vm.provision "shell", path: "provision.sh"

end
