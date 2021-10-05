FROM alpine:latest
ARG NP_SOCKS_PORT

RUN set -xe \
    && apk add -U curl privoxy \
    && apk del curl \
    && rm -rf /var/cache/apk/* \
    && for i in /etc/privoxy/*.new; do mv $i ${i%.new}; done;

RUN sed -i -e '/^listen-address/s/127.0.0.1/0.0.0.0/' \
              -e '/^accept-intercepted-requests/s/0/1/' \
              -e '/^enforce-blocks/s/0/1/' \
              -e '/^#debug/s/#//' /etc/privoxy/config \
    && echo "forward-socks5t   / socks_proxy:$NP_SOCKS_PORT ." >> /etc/privoxy/config

CMD privoxy --no-daemon /etc/privoxy/config