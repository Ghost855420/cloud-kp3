#!/bin/bash
sudo apt-get update
sudo apt-get install -y apache2
 
if [ "$1" = "true" ]; then
  sudo apt-get install -y php libapache2-mod-php
fi
echo "$2" > /var/www/html/$3
sudo systemctl restart apache2
