FROM wodby/wordpress-php:7.2-3.3.1

RUN cd /var/www/html; composer install; ls -la
COPY --chown=www-data:www-data . /var/www/html/
COPY --chown=www-data:www-data wp-config.template.php /var/www/html/web/wp-config.php
