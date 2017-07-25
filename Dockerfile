FROM debian:jessie

MAINTAINER "Tarampampam <tarampampam@users.noreply.github.com>"
LABEL Description="Container for running laravel/dusk test" Vendor="Tarampampam" Version="0.1"

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN \
  apt-get -yq update && apt-get -yq upgrade -o Dpkg::Options::="--force-confold" \
  && apt-get -yq install --no-install-recommends apt-utils lsb-release apt-transport-https curl zip unzip bzip2 \
    git ca-certificates

RUN \
  curl -o /etc/apt/trusted.gpg.d/php.gpg  https://packages.sury.org/php/apt.gpg \
  && echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list \
  && apt-get update && apt-get -yq install php7.1 php7.1-xml php7.1-zip php7.1-curl php7.1-bcmath php7.1-json \
    php7.1-mbstring php7.1-pgsql php7.1-mcrypt php7.1-xdebug php7.1-imagick imagemagick \
  && echo -e "\nxdebug.profiler_enable=0\nxdebug.remote_enable=0\n" >> /etc/php/7.1/mods-available/xdebug.ini

ENV COMPOSER_HOME /usr/local/share/composer
ENV COMPOSER_ALLOW_SUPERUSER 1
ENV PATH "$COMPOSER_HOME:$COMPOSER_HOME/vendor/bin:$PATH"
RUN \
  mkdir -pv $COMPOSER_HOME && chmod -R g+w $COMPOSER_HOME \
  && curl -o /tmp/composer-setup.php https://getcomposer.org/installer \
  && curl -o /tmp/composer-setup.sig https://composer.github.io/installer.sig \
  && php -r "if (hash('SHA384', file_get_contents('/tmp/composer-setup.php')) \
    !== trim(file_get_contents('/tmp/composer-setup.sig'))) { unlink('/tmp/composer-setup.php'); \
    echo 'Invalid installer' . PHP_EOL; exit(1); }" \
  && php /tmp/composer-setup.php --filename=composer --install-dir=$COMPOSER_HOME \
  && $COMPOSER_HOME/composer --no-interaction global require 'hirak/prestissimo'








RUN apt-get -yqq clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

