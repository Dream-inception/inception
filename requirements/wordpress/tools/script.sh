#!/bin/bash

wget https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
mv /wordpress/* /var/www/html/

chown -R www-data:www-data /var/www/html
rm -rvf /wordpress latest.tar.gz

mv /var/www/html/tmp_wp-config.php /var/www/html/wp-config.php

# my_wordpress  | mv: inter-device move failed: '/wordpress/wp-admin' to '/var/www/html/wp-admin'; unable to remove target: Directory not empty
# my_wordpress  | mv: inter-device move failed: '/wordpress/wp-content' to '/var/www/html/wp-content'; unable to remove target: Directory not empty
# my_wordpress  | mv: inter-device move failed: '/wordpress/wp-includes' to '/var/www/html/wp-includes'; unable to remove target: Directory not empty