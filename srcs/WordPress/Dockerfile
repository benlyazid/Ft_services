FROM alpine:latest
RUN apk update
RUN apk add nginx
RUN apk add openrc
COPY ./run_wdp.sh /
COPY ./default.conf /
RUN chmod 777 /run_wdp.sh
ENTRYPOINT ./run_wdp.sh
EXPOSE 5050
