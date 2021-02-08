FROM alpine:3.12
RUN apk update
RUN apk add vim
COPY ./ftps_run.sh /
COPY ./*.conf /

RUN chmod 777 /ftps_run.sh
CMD ./ftps_run.sh
EXPOSE 21