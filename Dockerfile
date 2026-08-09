FROM php:8.2-cli

# Composer needs git and unzip for installing
RUN apt-get update && apt-get install -y \
    unzip \
    git \
    && rm -rf /var/lib/apt/lists/*

# Installing Composer binary
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html

CMD ["bash"]
