# Nginx exporter installer

## Prerequisites
  - nginx installed on machine

  - this assumes nginx.conf grabs conf files from /etc/nginx/conf.d/

  - this requires ports 9113 and 8080 are free to use 

## To install nginx exporter on the desired server:

  - run `install.sh`

  - check success of installation with `sudo systemctl status nginx_exporter`