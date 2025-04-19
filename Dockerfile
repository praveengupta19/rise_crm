FROM php:8.2-apache

# Install needed PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

# Enable Apache rewrite module
RUN a2enmod rewrite

# Copy all project files into Apache's default web root
COPY . /var/www/html

# Set recommended permissions
RUN chown -R www-data:www-data /var/www/html
