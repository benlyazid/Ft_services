FROM alpine:3.12
RUN apk update
RUN apk add vim
RUN apk add openrc
COPY ./run.sh /
COPY ./*.conf /

COPY ./grafana.db /
RUN chmod 777 /run.sh
EXPOSE 3000
CMD ./run.sh
