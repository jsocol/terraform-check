FROM hashicorp/terraform AS terraform

#FROM alpine:3
FROM ubuntu

COPY --from=terraform /bin/terraform /usr/bin/

ARG PWD

COPY entrypoint.sh /

RUN mkdir /data

ENTRYPOINT ["/entrypoint.sh", "/data"]
