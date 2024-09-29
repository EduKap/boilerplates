echo -e "\e[1;32m Running Docker WSL Playbook. \e[1;0m"
ANSIBLE_STDOUT_CALLBACK=yaml ansible-playbook install-docker-wsl.yml --user $USER -i inventory/hosts.ini --ask-become-pass $1

if [ $? -eq 1 ]; then
    echo "\e[1;31m Docker failed to install. \e[1;0m"
else
    echo "\e[1;33m Docker install finished. Make sure to log out to apply group changes. \e[1;0m"
fi
