FROM wodby/wordpress-php:7.2-3.3.1

COPY --chown=www-data:www-data . /var/www/html
COPY --chown=www-data:www-data wp-config.template.php /var/www/html/wp-config.php
RUN cd /var/www/html; composer install; ls -la
