#!/bin/bash

echo "Updating system..."
sudo apt update && sudo apt upgrade -y

echo "Installing Apache..."
sudo apt install apache2 -y
sudo a2enmod rewrite
sudo systemctl enable apache2
sudo systemctl start apache2

echo "Installing PHP 7.4 and extensions..."
sudo apt install php7.4 libapache2-mod-php7.4 php7.4-cli php7.4-common php7.4-mysql php7.4-curl php7.4-xml php7.4-mbstring php7.4-zip php7.4-gd -y

echo "Installing MariaDB..."
sudo apt install mariadb-server -y
sudo systemctl enable mariadb
sudo systemctl start mariadb
sudo mysql_secure_installation

echo "Installing Composer..."
sudo apt install curl php-cli php-mbstring unzip -y
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

echo "Verifying installations..."
apache2 -v
php -v
mysql --version
composer --version

echo "LAMP stack installation completed."