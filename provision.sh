if test -f /provisioned
then
  echo "Skipping initial provisioning"
else
  touch /provisioned
  apt-get update -qq
  apt-get install php7.2-fpm nginx mariadb-server nodejs composer -qq
  mysql -e "CREATE USER 'defaultuser'@'localhost' IDENTIFIED BY 'defaultpw'; CREATE DATABASE defaultdb; GRANT ALL PRIVILEGES ON * . * TO 'defaultuser'@'localhost'; FLUSH PRIVILEGES;"
fi
echo "restarting nginx and php"
service nginx restart && service php7.2-fpm restart
