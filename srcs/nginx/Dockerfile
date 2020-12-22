FROM alpine:latest
RUN apk update
VOLUME [ “/sys/fs/cgroup” ]
RUN apk add nginx
RUN apk add openrc
COPY ./run.sh /
RUN chmod 777 /run.sh
ENTRYPOINT ./run.sh
EXPOSE 80
EXPOSE 443