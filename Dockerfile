FROM wodby/wordpress-php:7.2-3.3.1
RUN cat /etc/passwd
RUN php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/local/bin/ --filename=composer
COPY --chown=www-data:www-data . /var/www/html
COPY --chown=www-data:www-data wp-config.template.php /var/www/html/wp-config.php
