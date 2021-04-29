FROM alpine:3.12
RUN apk update
COPY ./run.sh /
COPY ./influxdb_check.sh /
RUN apk add openrc
COPY ./*.conf /

RUN chmod 777 /run.sh
EXPOSE 8086
ENTRYPOINT ./run.sh
