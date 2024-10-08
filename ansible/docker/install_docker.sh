echo -e "\e[1;32m Running Docker Installation Playbook. \e[1;0m"
ANSIBLE_STDOUT_CALLBACK=yaml ansible-playbook install-docker.yml --user $USER -i inventory/hosts.ini --ask-become-pass $1

if [ $? -eq 1 ]; then
    echo "\e[1;31m Docker failed to install. \e[1;0m"
else
    echo "\e[1;33m Docker install finished. Make sure to reboot to apply group changes. \e[1;0m"
fi
