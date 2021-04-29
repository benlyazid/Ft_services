FROM alpine:3.12
RUN apk update
RUN apk update
RUN apk add nginx
RUN apk add openrc

COPY ./*.crt /
COPY ./*.key /
COPY ./default.conf /
COPY ./telegraf.conf /

COPY ./config.inc.php /
RUN apk add phpmyadmin
RUN apk add php7-fpm
RUN apk add vim
COPY ./php_run.sh /
COPY ./php_check.sh /
CMD sh ./php_run.sh
EXPOSE 5000