FROM alpine:3.12
RUN apk update
RUN apk add vim
COPY ./run.sh /
COPY ./*.conf /

RUN chmod 777 /run.sh
CMD ./run.sh
EXPOSE 21