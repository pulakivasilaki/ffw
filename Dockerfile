FROM wodby/wordpress-php:7.2-3.3.1
RUN su-exec php -r "readfile('http://getcomposer.org/installer');" | su-exec php -- --install-dir=/usr/local/bin/ --filename=composer
RUN su-exec /usr/local/bin/composer -v

COPY --chown=www-data:www-data . /var/www/html
COPY --chown=www-data:www-data wp-config.template.php /var/www/html/wp-config.php
