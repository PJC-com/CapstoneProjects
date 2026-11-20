# Project 15 - Automate Server Configuration with Ansible

## Objective

Automate server configuration using Ansible and install a web server through an Ansible playbook.

## Services and Tools Used

- Ansible
- Apache Web Server
- Ubuntu Linux

## Activities Performed

- Installed Ansible
- Created an inventory file
- Created an Ansible playbook
- Installed Apache using Ansible
- Started and enabled the Apache service
- Verified web server availability

## Inventory Configuration

```ini
[webservers]
localhost ansible_connection=local
```

## Playbook Tasks

- Install Apache package
- Start Apache service
- Enable Apache at boot

## Validation Commands

```bash
ansible webservers -i inventory.ini -m ping
```

```bash
ansible-playbook -i inventory.ini install-apache.yml
```

```bash
systemctl status apache2
```

## Result

Successfully automated server configuration using Ansible. Apache Web Server was installed, started, and verified using an Ansible playbook.
