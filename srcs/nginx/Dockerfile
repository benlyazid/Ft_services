FROM alpine:3.12
RUN apk update
RUN apk add nginx
RUN apk add vim
RUN apk add openrc
COPY ./run.sh /
COPY ./*.crt /
COPY ./*.key /
COPY ./default.conf /
RUN chmod 777 /run.sh
CMD ./run.sh
EXPOSE 80
EXPOSE 443