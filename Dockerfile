FROM wodby/wordpress-php:7.2-3.3.1
RUN ls -la /usr/local/bin/
COPY /usr/local/bin/composer /usr/local/bin/composer
RUN /usr/local/bin/composer -v
COPY --chown=www-data:www-data . /var/www/html
COPY --chown=www-data:www-data wp-config.template.php /var/www/html/wp-config.php
