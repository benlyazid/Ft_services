FROM alpine:3.12
RUN apk update
RUN apk update
RUN apk add nginx
RUN apk add openrc

COPY ./*.crt /
COPY ./*.key /
COPY ./*.conf /

COPY ./config.inc.php /
RUN apk add phpmyadmin
RUN apk add php7-fpm
RUN apk add vim
COPY ./php_run.sh /
COPY ./default.conf /
CMD sh ./php_run.sh
EXPOSE 5000