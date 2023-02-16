
Vagrant.configure("2") do |config|
  config.vm.define "app" do |app| # | = pipe
    app.vm.box = "ubuntu/bionic64"
    app.vm.network "private_network", ip: "192.168.10.100"
   
    app.vm.synced_folder "app", "/home/vagrant/app"
    app.vm.provision "shell", path: "app/provision.sh", privileged: false
  end

  config.vm.define "database" do |database|
    database.vm.box = "ubuntu/bionic64"
    database.vm.network "private_network", ip: "192.168.10.150" # can`t have the same I.P. address
    
    database.vm.synced_folder "environment", "/home/vagrant/environment" # which folder in our host system we want to sync with + the path of where to add the file (if we do not specify, it will add it to the root folder which is the pure base of the machine.)
    database.vm.provision "shell", path: "environment/db/provision_db.sh", privileged: false
  end
end
