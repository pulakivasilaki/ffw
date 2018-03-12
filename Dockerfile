FROM wodby/wordpress-php:7.2-3.3.1

RUN apt-get update
RUN apt-get -y install composer

COPY --chown=www-data:www-data . /var/www/html
COPY --chown=www-data:www-data wp-config.template.php /var/www/html/wp-config.php
