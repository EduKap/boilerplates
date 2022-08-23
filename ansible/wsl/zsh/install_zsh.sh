#!/bin/bash

echo "Updating repositories"
sudo apt update

echo "Installing Ansible"
sudo apt install ansible -y

echo -e "\e[1;32m Running ZSH Playbook.\e[1;0m"
ANSIBLE_STDOUT_CALLBACK=yaml ansible-playbook playbooks/zsh.yaml --user $USER -i inventory/hosts.ini -v

echo -e "\e[1;32m Installation finished. \e[1;32mRestart your terminal.\e[1;0m"

echo -e "\e[1;33m Exiting...\e[1;0m"

exit
