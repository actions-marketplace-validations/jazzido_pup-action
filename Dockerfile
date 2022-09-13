# Container image that runs your code
FROM alpine:3.10
RUN apk add --no-cache --virtual .build-utils wget ca-certificates && \
    wget "https://github.com/ericchiang/pup/releases/download/v0.4.0/pup_v0.4.0_linux_amd64.zip" && \
    unzip "pup_v0.4.0_linux_amd64.zip" && \
    rm "pup_v0.4.0_linux_amd64.zip" && \
    apk del .build-utils && \
    chmod +x pup
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
