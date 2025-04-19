# Use PHP 8.2 with Apache
FROM php:8.2-apache

# Install necessary PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

# Enable Apache rewrite module
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html

# Copy project files to the container
COPY . /var/www/html

# Set recommended permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Expose port 80 inside the container
EXPOSE 80
