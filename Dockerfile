FROM alpine
RUN apk --no-cache add \
      perl perl-mojolicious perl-utils \
      perl-io-socket-ssl # for https support

COPY *.t /app/t/

WORKDIR /app
RUN prove -w --timer -f -v ./t
