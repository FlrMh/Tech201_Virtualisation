
Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", ip: "192.168.10.100"
  
  #Sync the app folder  
  config.vm.synced_folder "app", "/home/vagrant/app" # the name of the folder, where we want to put it

  # Provisioning
  # We can make a file that is a collection of commands that will run as soon as the VM is up.
  # BASH SCRIPTS 
  config.vm.provision "shell", path: "provision.sh"

end
