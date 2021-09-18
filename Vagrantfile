# -*- mode: ruby -*-
# vi: set ft=ruby :

system("mkdir logs config config/nginx-sites www") if !Dir.exist?("logs")

Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |vb|
        vb.cpus = "2"
        vb.memory = "2048"
  end

  config.vm.network "private_network", ip: "192.168.10.101"
  config.vm.hostname = "devbox"


  config.vm.define :devbox do |t|
  end

  config.vm.box = "hashicorp/bionic64"

  config.vm.synced_folder "./config", "/srv/config"
  config.vm.synced_folder "./www", "/srv/www"
  config.vm.synced_folder "./logs", "/var/log"

  config.vm.provision "shell", path: "./provision.sh"
end