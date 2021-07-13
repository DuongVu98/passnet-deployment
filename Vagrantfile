
Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"

  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.synced_folder ".", "/home/vagrant/app", :onwer => "vagrant"
  config.vm.synced_folder "./ssh", "/home/vagrant/ssh", :onwer => "vagrant", mount_options: ["dmode=777,fmode=400"] 
  config.vm.synced_folder "../", "/home/vagrant/passnet", :onwer => "vagrant"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
    vb.cpus = 2
  end

  config.vm.provision "docker"
  config.vm.provision :docker_compose

  config.vm.provision "ping-hosts", type: "ansible" do |ansible|
    ansible.playbook = "./playbook.yml"
    ansible.inventory_path = "./inventories.yml" 
  end

  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
end
