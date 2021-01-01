FROM alpine:latest
RUN apk update
COPY ./run.sh /
COPY ./mariadb-server.cnf /
RUN chmod 777 /run.sh
RUN apk add openrc
RUN apk add mysql mysql-client
EXPOSE 3306
ENTRYPOINT ./run.sh
