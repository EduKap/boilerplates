# ZSH

Installs ZSH + Oh-My-ZSH + Powerlevel10k fonts

To run, invoke:

```bash
ansible-playbook playbooks/zsh.yaml --user $USER --ask-pass --ask-become-pass -i inventory/hosts.ini -v
```

Restart terminal when finished.
