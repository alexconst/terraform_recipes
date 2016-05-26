#!/bin/bash -v

#apt-get install -y nginx > /tmp/nginx.log


# refresh package listing
apt-get update -y

# automatically install security updates
apt-get install -y unattended-upgrades
unattended-upgrades

# install Elasticsearch and dependencies
apt-get install -y openjdk-7-jre --no-install-recommends
wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://packages.elastic.co/elasticsearch/2.x/debian stable main" | sudo tee -a /etc/apt/sources.list.d/elasticsearch-2.x.list
apt-get update
apt-get install -y elasticsearch

# configure Elasticsearch
echo -e "\n\n\nhttp.port: 9200" >> /etc/elasticsearch/elasticsearch.yml
echo -e "\n\n\nES_USE_IPV4=y" >> /etc/default/elasticsearch

# configure Elasticsearch to start during boot
systemctl daemon-reload
systemctl enable elasticsearch.service
# start service
systemctl start elasticsearch.service

# check it
# wget -q -O - 127.0.0.1:9200

