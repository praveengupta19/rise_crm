FROM php:8.2-apache

# Install needed PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

# Enable Apache rewrite module
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html

# Copy all project files
COPY . .

# Set recommended permissions (optional but helps with writable folders)
RUN chown -R www-data:www-data /var/www/html
