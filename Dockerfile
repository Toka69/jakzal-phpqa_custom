FROM jakzal/phpqa:php7.4

#Install Panther
RUN apt update && apt install -y chromium
ENV PANTHER_NO_SANDBOX 1
RUN composer require --dev symfony/panther && \
    composer require --dev dbrekelmans/bdi && \
    vendor/bin/bdi detect drivers