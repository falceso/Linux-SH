
#!/bin/bash
#Purpose = Remove Apache and Mysql and replace with better alternatives.
#Created on 11-22-2017
#Author = falceso
#Version 1.2
sudo service apache2 stop
sudo apt-get purge apache2 apache2-utils apache2.2-bin apache2-common -y
sudo apt-get autoremove -y
sudo apt-get remove apache2* -y
sudo apt-get remove mysql -y
sudo apt-get install nginx mariadb-server -y

