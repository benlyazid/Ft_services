FROM alpine:3.12
RUN apk update
RUN apk add nginx
RUN apk add openrc
COPY ./run_wdp.sh /
COPY ./wordpress_check.sh /
COPY ./*.crt /
COPY ./*.key /
COPY ./*.php /
COPY ./*.conf /
RUN chmod 777 /run_wdp.sh
ENTRYPOINT ./run_wdp.sh
EXPOSE 5050
