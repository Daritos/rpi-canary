# rpi-canary
A small project to simplify the setup of OpenCanary on Raspberry Pi OS Lite

## What it does

* Disables avahi-daemon
* Installs and enables macchanger
* Configures the hostname
* Configures OpenCanary into /opt/opencanary and /opt/canary-env
* Sets OpenCanary to run at boot
* (Optional) Installs samba and configures read-only share at /opt/samba

## Get started
```bash
sudo apt install git ansible -y
git clone https://github.com/Daritos/rpi-canary.git
cd rpi-canary
```

Now run the playbook from the repo

```bash
ansible-playbook -i inventory/inventory.ini --ask-become-pass -k opencanary_playbook.yml -u <insert_your_username_here>
```

Reboot once the playbook is complete and you are good to go

```bash
sudo reboot now
```