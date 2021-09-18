apt-get update && apt-get upgrade -qq
apt-get install php7.2-fpm nginx mariadb-server nodejs composer -qq
service nginx restart && service php-fpm restart
