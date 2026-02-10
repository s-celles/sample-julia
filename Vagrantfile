# -*- mode: ruby -*-
# vi: set ft=ruby :
#
# Isolation Notes:
# - Vagrant/VirtualBox provides high isolation (full VM with separate kernel)
# - However, the synced_folder below mounts the host project directory
# - For true isolation, remove the synced_folder and copy files instead
# - This setup is suitable for development, not for running untrusted code

Vagrant.configure("2") do |config|
  # Ubuntu 24.04 LTS (Noble Numbat)
  config.vm.box = "bento/ubuntu-24.04"

  config.vm.hostname = "sample-julia-dev"

  # Disk size (requires vagrant-disksize plugin: vagrant plugin install vagrant-disksize)
  config.disksize.size = "40GB"

  # VirtualBox provider settings
  config.vm.provider "virtualbox" do |vb|
    vb.name = "sample-julia-vagrant"
    vb.memory = "2048"
    vb.cpus = 2
  end

  # Sync project folder
  config.vm.synced_folder ".", "/home/vagrant/project"

  # Provision: install system dependencies
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get install -y \
      build-essential \
      git \
      curl
  SHELL

  # Install Julia for vagrant user via juliaup and run project
  config.vm.provision "shell", privileged: false, inline: <<-SHELL
    # Install juliaup for vagrant user
    curl -fsSL https://install.julialang.org | sh -s -- -y
    export PATH="$HOME/.juliaup/bin:$PATH"
    cd /home/vagrant/project
    julia --project=. -e 'using Pkg; Pkg.instantiate()'
    julia --project=. src/SampleJulia.jl
    echo "Provisioning complete! Run: julia --project=. src/SampleJulia.jl"
  SHELL
end
