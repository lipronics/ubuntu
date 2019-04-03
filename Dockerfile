FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y \
     apache2 \
     barcode \
     curl \
     fonts-freefont-ttf \
     gcc \
     git \
     libapache2-mod-php7.2 \
     libphp-phpmailer \
     locales \
     make \
     php-cli \
     php-dev \
     php-mysql \
     php-pear \
     php-redis \
     php7.2-curl \
     php7.2-gd \
     php7.2-mbstring \
     sudo \
     unoconv \
     wget \
     && \
  apt-get clean

EXPOSE 80 443
RUN a2enmod php7.2 && \
    a2enmod rewrite && \
    a2enmod expires && \
    a2enmod headers && \
    a2enmod ssl && \
    phpenmod mbstring
