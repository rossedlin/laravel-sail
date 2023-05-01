FROM php:8.1-apache

#
# Install Core
#
RUN apt get update; \
    apt get install -y git zip unzip; \
    rm -rf /var/lib/apt/lists/*;

#
# Install Composer
#
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

#
# Tweak Apache
#
COPY apache.conf /etc/apache2/sites-enabled/000-default.conf

#
# Perms
#
RUN chmod 777 -R /var/www

#
# Finish
#
WORKDIR /var/www
