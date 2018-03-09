FROM debian:stable

COPY --chown=www-data:www-data . /var/www/html
COPY --chown=www-data:www-data wp-config.template.php /var/www/html/wp-config.php
COPY files/etc/docker-entrypoint.sh /etc/
EXPOSE 80
ENTRYPOINT ["/etc/docker-entrypoint.sh"]
