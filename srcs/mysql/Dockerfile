FROM alpine:latest
RUN apk update
COPY ./run.sh /
RUN chmod 777 /run.sh
RUN apk add openrc
RUN apk add mysql mysql-client
ENTRYPOINT ./run.sh
#*.local, 169.254/16