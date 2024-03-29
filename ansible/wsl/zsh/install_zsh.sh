#!/bin/bash

echo -e "\e[1;32mUpdating repositories\e[1;0m"
sudo apt update

echo "Installing Ansible"
sudo apt install ansible -y

echo -e "\e[1;32m Running ZSH Playbook.\e[1;0m"
ANSIBLE_STDOUT_CALLBACK=yaml ansible-playbook playbooks/zsh.yaml --user $USER -i inventory/hosts.ini $1

echo -e "\e[1;32m Installation finished.\e[1;0m"

exec /bin/zsh
