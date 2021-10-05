FROM alpine:3.13

WORKDIR /proxy
COPY start_proxy.sh ./
RUN apk add --no-cache openssh && \
    chmod +x start_proxy.sh
EXPOSE $NP_SOCKS_PORT

CMD ["./start_proxy.sh"]
