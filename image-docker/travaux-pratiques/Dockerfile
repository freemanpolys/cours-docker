FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install apache2 php libapache2-mod-php php-gd php-curl php-json php-mbstring php-mysql php-xml php-xsl php-zip && \
    rm -rf /var/lib/apt/lists/*

COPY site/index.php /var/www/html
RUN rm /var/www/html/index.html
RUN chown -R www-data:www-data /var/www/html
EXPOSE 80
CMD /usr/sbin/apache2ctl -D FOREGROUND



