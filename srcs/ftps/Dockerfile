FROM alpine:3.12
RUN apk update
RUN apk add vim
COPY ./ftps_run.sh /
COPY ./*.conf /
COPY ./ftps_check.sh /
COPY ./ftps_user /
COPY ./vsftpd.pem /
RUN chmod 777 /ftps_run.sh
CMD ./ftps_run.sh
EXPOSE 21
EXPOSE 6000
EXPOSE 6001
EXPOSE 6002
EXPOSE 6003