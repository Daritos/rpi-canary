# Install OpenCanary dependencies
sudo apt install -y python-virtualenv python-pip python-dev libssl-dev libffi-dev
# Setup a virtual environment
cd /opt
virtualenv -p python3 canary-env
source canary-env/bin/activate
# Upgrade virtual environment
pip install –upgrade pip setuptools

# Pull OpenCanary
git clone https://github.com/thinkst/opencanary
cd opencanary
pip install -r requirements.txt
python setup.py install

# Fix broken links
#sudo link /usr/local/bin/twistd /opt/canary-env/bin/twistd
#sudo link /usr/local/bin/twistd /opt/opencanary/bin/twistd
#cp /opt/opencanary/build/scripts-3.7/opencanary.tac /opt/canary-env/bin/opencanary.tac
#sudo cp ./build/scripts-3.7/opencanary.tac /usr/local/bin/opencanary.tac
sudo link /opt/canary-env/bin/twistd /opt/opencanary/bin/twistd

echo "Run setup3.sh from the rpi-canary directory"