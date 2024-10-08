# UBUNTU INSTALLATION
curl -LO https://github.com/prometheus/node_exporter/releases/download/v1.8.2/node_exporter-1.8.2.linux-amd64.tar.gz

# unpack 
tar -xvf node_exporter-1.8.2.linux-amd64.tar.gz

sudo mv node_exporter-1.8.2.linux-amd64/node_exporter /usr/local/bin/

# create custom user
sudo useradd -rs /bin/false node_exporter

# copy systemctl service config
sudo cp system_config.conf /etc/systemd/system/node_exporter.service

sudo systemctl daemon-reload
sudo systemctl start node_exporter

sudo systemctl enable node_exporter
