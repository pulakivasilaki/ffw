FROM wodby/wordpress-php:7.2-3.3.1

RUN sudo apt-get update
RUN sudo apt-get -y install composer

COPY --chown=www-data:www-data . /var/www/html
COPY --chown=www-data:www-data wp-config.template.php /var/www/html/wp-config.php
