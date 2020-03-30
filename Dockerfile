FROM wordpress:latest
COPY . /var/www/html

RUN touch /usr/local/etc/php/conf.d/uploads.ini \
    && echo "file_uploads = On; memory_limit = 64M; upload_max_filesize = 64M; post_max_size = 64M; max_execution_time = 600; max_input_vars = 1500" >> /usr/local/etc/php/conf.d/uploads.ini
