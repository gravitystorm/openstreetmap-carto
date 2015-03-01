# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  # This can be changed to anything else, but keep in mind the states
  # are only written with 14.04.1 in mind.
  config.vm.box = "ubuntu/trusty64"

  # Setting up port-forwarding for kosmtik, so you can access it at
  # http://127.0.0.1:6789
  config.vm.network "forwarded_port", guest: 6789, host: 6789

  # Configurations specific to customizing the virtual machine for the 
  # provider we use. Here, we use virtualbox, but you can use another if
  # you'd like -- just remember to make a separate section for it, as
  # this only applies to VirtualBox.

  config.vm.provider "virtualbox" do |vb|
    # We're dealing with memory intensive business: minimum should be 2048MB.
    # Default here is 4096MB, but you can decrease or increase it as you need.
    vb.customize ["modifyvm", :id, "--memory", "4096"]
    
    # The following are recommended values for the VM for relatively high 
    # degrees of responsiveness. Note that you need virtualization extensions
    # enabled on your computer to use the last option.
    # The extra CPU cores for the VM are highly recommended for importing
    # larger areas, especially when dealing with complete countries.
    # vb.customize ["modifyvm", :id, "--cpus", "4"]
    # vb.customize ["modifyvm", :id, "--hwvirtex", "on"]
  end

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.

  # Here we share the same folder to /srv/openstreetmap-carto/ so that
  # we can have the sources available for kosmtik to render.
  config.vm.synced_folder ".", "/srv/openstreetmap-carto"
  # Since we want to run Salt masterless, we've got to setup the Salt root
  # as well, resulting in us being able to get the dev. environment up.
  config.vm.synced_folder "salt/", "/srv/salt/"

  # Set up the Salt provisioner, without much special configuration.
  config.vm.provision :salt do |salt|
    salt.minion_config = "salt/minion"
    salt.run_highstate = true

    # IF you'd like to use any plugins for kosmtik, you can provide them 
    # underneath here by uncommenting the block. Check out the kosmtik
    # project on github for a list over plugins, or execute
    # $ node index.js plugins --available 
    # while in /usr/local/kosmtik
    
    #salt.pillar({
    # "kosmtik" => {
    #   "plugins" => [
    #     "kosmtik-map-compare",
    #     "kosmtik-place-search"
    #   ]
    # }
    #})
  end
  
end
