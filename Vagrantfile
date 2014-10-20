# -*- mode: ruby -*-
# vi: set ft=ruby :
 
st2user=""
st2pass=""
st2ver="0.5.0"
 
# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"
 
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
 
    config.vm.box = "ubuntu/trusty64"
    config.vm.hostname = "st2"
 
    config.vm.define "st2" do |q|
    end
 
    config.vm.provider :virtualbox do |vb|
      vb.name = "st2"
      vb.memory = 2048
      vb.cpus = 1
    end
 
    # Configure a private network
    config.vm.network "private_network", ip: "172.168.90.50"
 
    # Start shell provisioning
    config.vm.provision :shell, :path => "mistral.sh"
    config.vm.provision :shell, :inline => "curl -sS -k -O https://#{st2user}:#{st2pass}@ops.stackstorm.net/releases/st2/scripts/st2_deploy.sh"
    config.vm.provision :shell, :inline => "ST2USER=#{st2user} ST2PASS=#{st2pass} bash st2_deploy.sh #{st2ver}"
end