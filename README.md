# Inception-Of-Things

This project requires to set up several environments under specific rules.
- Part1 = K3s and Vagrant
- Part2 = K3s and three simple applications
- Part3 = K3d and ArgoCD
- Bonus = Gitlab into the lab of Part3

## Vagrant

**Vagrant** is a powerful tool to **automatize configuration and creation of virtual machines** by setting up a Vagrantfile.

Useful Vagrant commands:

- `vagrant init` = initialize Vagrant with a Vagrantfile and ./vagrant directory

- `vagrant up` = start Vagrant environment
- `vagrant status` = get status of the Vagrant machine

- `vagrant ssh` =  connects to machine via SSH
- `vagrant ssh <machinename>` = ssh connection into the machine

- `vagrant halt` = stops the vagrant machine
- `vagrant suspend` = suspends a virtual machine (remembers state)

- `vagrant destroy` = stops and deletes all traces of the vagrant machine
- `vagrant destroy -f` = same as above, without confirmation

## Kubectl

**Kubectl** is a terminal command line tool to execute orders in Kubernetes clusters.
They often have the following syntax: `kubectl [command] [TYPE] [NAME] [flags]`

- `sudo kubectl get nodes -o wide` = list all nodes in wide output format for more information
- `sudo kubectl cluster-info` = display addresses of the master (server) and cluster services
- `sudo kubectl get pods -A` = display pods from all namespaces in the cluster

Check k3s status:
- `sudo systemctl status k3s` = state of k3s server service in the Server
- `sudo systemctl status k3s-agent` = state of k3s agent service in the Worker