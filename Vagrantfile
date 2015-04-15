# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  # install via vagrant plugin api
  # https://github.com/tmatilai/vagrant-proxyconf
  # vagrant plugin install vagrant-proxyconf
  if Vagrant.has_plugin?("vagrant-proxyconf")
    config.proxy.http     = ENV['http_proxy']
    config.proxy.https    = ENV['https_proxy']
    config.proxy.no_proxy = ENV['no_proxy']
  end

  # consumer-app
  config.vm.network "forwarded_port", guest: 8000, host: 8080

  # for masterless, mount your salt file root
  config.vm.synced_folder "salt/roots/", "/srv/"

  # more power!
  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 4
  end

  # salt configuration
  config.vm.provision :salt do |salt|

    # path to minion config file
    salt.minion_config = "salt/minion"

    # let's get this party started
    salt.run_highstate = true

    # pretty...
    salt.colorize = true

    # logging
    salt.log_level = "warning" # (all|debug|garbage|info|trace|warning)

  end
end
