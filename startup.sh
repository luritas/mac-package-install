#!/bin/bash
echo "Install Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "update && upgrade Package List"
echo "brew update && brew upgrade"
brew update && brew upgrade

echo "Installing Utility Package..."
# Installing curl
echo "Installing curl..."
brew install curl

# Installing zip
echo "Installing zip..."
sudo apt install -y -qq zip

echo "Installing noddejs"
brew install node


echo "Step1 - Installing Apache"
echo "brew install httpd"
brew install httpd
# 필요시에 ufw로 방화벽 풀기

echo "Step2 - Installing MySQL"
echo "Installing MySQL..."
echo "brew install mysql"
brew install mysql

echo "To use password login type"
echo "sudo mysql_secure_installation"
echo "VALIDATE PASSWORD PLUGIN => Y"
echo "There are three levels of password validation policy: => 2"
echo "to change new password"
echo "Remove anonymous users? => y"
echo "Remove test database and access to it? => y"
echo "Disallow root login remotely? => y"
echo "Reload privilege tables now? => y"
echo "sudo mysql"
echo "mysql> ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';"
#https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-ubuntu-18-04

echo "encoding settings"
echo "/etc/my.cnf or /etc/mysql/my.cnf "
echo "[client]"
echo "default-character-set=utf8"
echo "[mysql]"
echo "default-character-set=utf8"
echo "[mysqld]"
echo "collation-server = utf8_unicode_ci"
echo "init-connect='SET NAMES utf8'"
echo "character-set-server = utf8"


echo "Step3 - Installing PHP"
echo "Installing PHP..."
echo "sudo apt install -y php7.2 libapache2-mod-php7.2 php7.2-mysql php7.2-mbstring php7.2-xml"
brew install php@7.2

echo 'If you need to have this version of PHP first in your PATH run the following command:'
echo 'export PATH="/usr/local/opt/php@7.2/bin:$PATH"' >> ~/.bash_profile
echo 'export PATH="/usr/local/opt/php@7.2/sbin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile

# Install composer
echo Installing composer...
# https://getcomposer.org/download/
brew install composer

# Create Laravel Project
echo "Now! Start Laravel and Create Project"
echo "composer create-project --prefer-dist laravel/laravel [Project Name] \"5.5.*\""
