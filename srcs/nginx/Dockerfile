FROM alpine:3.12
RUN apk update
RUN apk add nginx
RUN apk add vim
RUN apk add bash
COPY user_file /
RUN apk add openrc
COPY ./run.sh /
COPY ./nginx_check.sh /
COPY ./*.crt /
COPY ./*.key /
COPY ./*.conf /

RUN chmod 777 /run.sh
CMD ./run.sh
EXPOSE 80
EXPOSE 443