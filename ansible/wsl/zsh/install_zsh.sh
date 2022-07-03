#!/bin/bash

echo "Updating repositories"
sudo apt update

echo "Installing Ansible"
sudo apt install ansible -y

echo "Running ZSH Playbook. Restart terminal when finished."
ansible-playbook playbooks/zsh.yaml --user $USER --ask-pass --ask-become-pass -i inventory/hosts.ini -v
