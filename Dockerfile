FROM ubuntu:20.04

ENV TZ=Europe/Amsterdam
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && \
    apt-get install -y \
     apache2 \
     barcode \
     build-essential \
     composer \
     curl \
     fonts-freefont-ttf \
     gcc \
     ghostscript \
     git \
     libapache2-mod-php \
     locales \
     php-cli \
     php-curl \
     php-dev \
     php-gd \
     php-intl \
     php-mbstring \
     php-mysql \
     php-pear \
     php-redis \
     php-soap \
     sudo \
     unoconv \
     unzip \
     wget \
     zip \
     && \
  apt-get clean

RUN a2enmod php7.4 && \
    a2enmod rewrite && \
    a2enmod expires && \
    a2enmod headers && \
    a2enmod ssl && \
    phpenmod mbstring

EXPOSE 80 443
