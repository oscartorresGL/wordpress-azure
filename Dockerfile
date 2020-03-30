FROM wordpress:latest
COPY . /var/www/html

COPY .user.ini /var/www/html/.user.ini
