FROM alpine:3.12
RUN apk update
COPY ./run.sh /
RUN apk add openrc
RUN chmod 777 /run.sh
ENTRYPOINT ./run.sh
