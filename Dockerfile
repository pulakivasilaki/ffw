FROM wodby/wordpress-php:7.2-3.3.1
RUN mkdir -p /var/www/html/web/
COPY --chown=www-data:www-data ./web/ /var/www/html/web/
COPY --chown=www-data:www-data wp-config.template.php /var/www/html/web/wp-config.php
