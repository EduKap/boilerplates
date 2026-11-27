#!/bin/bash

[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"

echo -e "\e[1;32mBootstrapping...\e[1;0m"

echo "Downloading uv"
curl -LsSf https://astral.sh/uv/install.sh | sh

source $HOME/.local/bin/env

uv tool install ansible-core --with ansible

echo -e "\e[1;32m Running ZSH Playbook.\e[1;0m"
ANSIBLE_RESULT_FORMAT=yaml ansible-playbook --user $USER -i inventory/hosts.ini playbooks/zsh.yaml $1

echo -e "\e[1;32m Installation finished.\e[1;0m"

exec /bin/zsh
