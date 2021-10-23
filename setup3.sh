# Load configuration
sudo cp ./opencanary.conf /opt/opencanary/
# Setup service
sudo cp ./opencanary.service /etc/systemd/system/opencanary.service
sudo systemctl daemon-reload
sudo systemctl enable opencanary
sudo systemctl start opencanary