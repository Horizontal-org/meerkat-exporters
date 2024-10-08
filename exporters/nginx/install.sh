# UBUNTU INSTALLATION. Following instructions from https://github.com/nginxinc/nginx-prometheus-exporter/blob/main/examples/systemd/README.md
curl -LO https://github.com/nginxinc/nginx-prometheus-exporter/releases/download/v1.3.0/nginx-prometheus-exporter_1.3.0_linux_amd64.tar.gz

#Add stub metrics to nginx
cp status.conf /etc/nginx/conf.d/

#Restart nginx
systemctl restart nginx

# unpack 
tar -xvf nginx-prometheus-exporter_1.3.0_linux_amd64.tar.gz

sudo mv nginx-prometheus-exporter /usr/local/bin/

# create custom user
sudo useradd -rs /bin/false nginx_exporter

# copy services and socket to systemd
sudo cp nginx_exporter.service /etc/systemd/system/
sudo cp nginx_exporter.socket /etc/systemd/system/

sudo systemctl daemon-reload
sudo systemctl start nginx_exporter

sudo systemctl enable nginx_exporter
