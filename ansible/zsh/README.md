# ZSH

Installs ZSH + Oh-My-ZSH + Powerlevel10k fonts

Requires an installation of ansible if not run by bootstrap script `./install_zsh.sh`

To run, invoke:

```bash
ansible-playbook playbooks/zsh.yaml --user $USER --ask-pass --ask-become-pass -i inventory/hosts.ini -v
```

Restart terminal when finished.
