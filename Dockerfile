FROM openresty/openresty:alpine

RUN rm -f /etc/nginx/conf.d/default.conf && \
    mkdir /etc/nginx/nginx-jwt
ADD nginx.conf /etc/nginx/
ADD conf.d /etc/nginx/conf.d/
ADD nginx-jwt /etc/nginx/nginx-jwt/

ENV JWT_SECRET hoge
ENV JWT_SECRET_IS_BASE64_ENCODED true