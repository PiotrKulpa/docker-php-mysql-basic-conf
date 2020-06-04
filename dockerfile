FROM php:7.4-apache
RUN a2enmod rewrite
RUN docker-php-ext-install mysqli
RUN usermod --non-unique --uid 1000 www-data
COPY --chown=www-data:www-data ./ /var/www/html/
