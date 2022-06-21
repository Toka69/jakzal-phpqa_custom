FROM jakzal/phpqa:php8.1

RUN apt update && apt install build-essential autoconf -y \
    && printf "no\n" | pecl install redis

#Install Panther
RUN apt update && apt install -y chromium
ENV PANTHER_NO_SANDBOX 1
