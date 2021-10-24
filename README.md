# rpi-canary
A small project to simplify the setup of OpenCanary on Raspberry Pi OS Lite

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