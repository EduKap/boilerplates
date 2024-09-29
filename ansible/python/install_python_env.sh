echo -e "\e[1;32m Running Python Dev Env Playbook. \e[1;0m"
ANSIBLE_STDOUT_CALLBACK=yaml ansible-playbook install-python-dev-env.yml --user $USER -i inventory/hosts.ini --ask-become-pass $1

if [ $? -eq 1 ]; then
    echo "\e[1;31m Python dev env failed to install. \e[1;0m"
else
    echo "\e[1;32m Python dev env install finished successfully. \e[1;0m"
fi
