FROM alpine:edge

RUN echo "http://dl-4.alpinelinux.org/alpine/v3.4/community" >> /etc/apk/repositories
RUN apk add --update --no-cache \
    openssh \
    autossh

ENV AUTOSSH_LOGFILE=/dev/stdout

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["autossh -M 0 -CN -L 0.0.0.0:3306:$FORWARD_HOST:3306 $JUMP_HOST -p 22"]
