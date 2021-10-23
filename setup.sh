# Update the system
sudo apt update
sudo apt dist-upgrade -y
sudo apt autoremove -y
# Stop services
sudo systemctl stop avahi-daemon
sudo systemctl disable avahi-daemon
# Install macchanger
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install macchanger
# Change hostname
sudo sed -i 's/127.0.1.1 raspberrypi/127.0.1.1 srv01/' /etc/hosts 
sudo sed -i 's/raspberrypi/srv01/' /etc/hostname
# Reboot
echo "Run 'sudo reboot now' once back execute setup2.sh"