FROM wodby/wordpress-php:7.2-3.3.1
RUN ls -la /usr/local/bin/
COPY --chown=www-data:www-data /usr/local/bin/composer /usr/bin/composer
RUN /usr/local/bin/composer -v
COPY --chown=www-data:www-data . /var/www/html
COPY --chown=www-data:www-data wp-config.template.php /var/www/html/wp-config.php
