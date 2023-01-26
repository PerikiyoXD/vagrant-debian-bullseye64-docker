# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/bullseye64"
  config.vm.hostname = "dockerbox.pxd"
  config.vm.define "dockerbox"
  config.vm.provider :virtualbox do |vb|
    vb.name = "dockerbox"
  end
  config.vm.provision "shell", path: "./scripts/provision/docker.sh"
end