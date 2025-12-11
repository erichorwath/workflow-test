FROM alpine:3.22.1 # this is working

WORKDIR /
ENV GNUPGHOME=/tmp
ENTRYPOINT ["/usr/local/bin/manager"]

RUN apk add --no-cache bash \
 && ln -sf /bin/bash /bin/sh \
 && apk --no-cache add ca-certificates gnupg \
 && update-ca-certificates


FROM alpine:3.23 # this is not working anymore

WORKDIR /
ENV GNUPGHOME=/tmp
ENTRYPOINT ["/usr/local/bin/manager"]

RUN apk add --no-cache bash \
 && ln -sf /bin/bash /bin/sh \
 && apk --no-cache add ca-certificates gnupg \
 && update-ca-certificates
