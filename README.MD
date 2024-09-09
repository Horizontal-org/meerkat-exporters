# Meerkat Exporters

Here we have all the exporters that need to be installed on the servers to watch

- node exporter
- docker exporter
- nginx exporter

## Prerequisites

- if you have iptables configured please be sure to open the needed ports *only to the ip of the meerkat server*

example:
```
//make a backup of the current iptables configuration
iptables-save > IPtablesbackup.txt

//create the rule
sudo iptables -I INPUT -p tcp -s <meerkat ip> --dport <export port> -j ACCEPT

//save the rule
sudo netfilter-persistent save

//restart the config
sudo netfilter-persistent reload
```