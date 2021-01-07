FROM alpine:3.8

RUN apk add --update postgresql postgresql-client &&\
    rm -rf /var/cache/apk/*

USER postgresql

CMD ["postgresql", "-D", "/data", "-c", "config_file=/config/postgresql.conf"]
