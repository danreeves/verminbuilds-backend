FROM openresty/openresty:alpine-fat
RUN apk upgrade --update-cache --available && \
    apk add openssl openssl-dev git && \
    rm -rf /var/cache/apk/*
RUN /usr/local/openresty/luajit/bin/luarocks install lapis
WORKDIR /app
ADD . /app
EXPOSE 3000
CMD lapis server development
