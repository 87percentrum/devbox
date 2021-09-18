#Quick and Easy Vagrant setup

Just a quick and dirty LEMP stack for quick development using php7.2 on ubuntu 18.
Just run `vagrant up --provision` to get going.

Access the box via http://192.168.10.101

##Mapping
`./config/nginx` => `/etc/nginx`

`./config/php` => `/etc/php`

`./www` => `/var/www`

##nginx

Setup your nginx sites under `./config/nginx/sites-enabled` and re-provision 
to reload nginx/php.

##mysql

A mysql user `defaultuser` with password `defaultpw` and database `defaultdb`
is created to get you started.