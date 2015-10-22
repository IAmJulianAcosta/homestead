#/bin/bash

echo "--- Starting phpmyadmin installation and configuration ---"
echo  "--- Setting variables for phpmyadmin silent installation ---"
sudo debconf-set-selections <<< 'phpmyadmin phpmyadmin/dbconfig-install boolean true'
sudo debconf-set-selections <<< 'phpmyadmin phpmyadmin/mysql/admin-user string homestead'
sudo debconf-set-selections <<< 'phpmyadmin phpmyadmin/app-password-confirm password secret'
sudo debconf-set-selections <<< 'phpmyadmin phpmyadmin/mysql/admin-pass password secret'
sudo debconf-set-selections <<< 'phpmyadmin phpmyadmin/mysql/app-pass password secret'
sudo debconf-set-selections <<< 'phpmyadmin phpmyadmin/reconfigure-webserver multiselect none'﻿
export DEBIAN_FRONTEND=noninteractive
echo  "--- Variables set for phpmyadmin silent installation ---"
echo "--- Starting download of phpmyadmin ---"
sudo apt-get install phpmyadmin -q -y
echo "--- Downloaded and installed phpmyadmin ---"