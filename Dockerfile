# this is working
FROM alpine:3.22.1 

WORKDIR /
ENV GNUPGHOME=/tmp
ENTRYPOINT ["/usr/local/bin/manager"]

RUN apk add --no-cache bash \
 && ln -sf /bin/bash /bin/sh \
 && apk --no-cache add ca-certificates gnupg \
 && update-ca-certificates
