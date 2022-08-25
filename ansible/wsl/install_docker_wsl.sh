echo -e "\e[1;32m Running Docker WSL Playbook.\e[1;0m"
ANSIBLE_STDOUT_CALLBACK=yaml ansible-playbook install-docker-wsl.yml --user $USER -i hosts.ini --ask-become-pass $1
