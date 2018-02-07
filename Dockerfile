FROM openresty/openresty:alpine-fat

RUN rm -f /etc/nginx/conf.d/default.conf
ADD nginx.conf /etc/nginx/
ADD conf.d /etc/nginx/conf.d/
#ADD nginx-jwt /usr/local/nginx-jwt/
ADD nginx-jwt /usr/local/openresty/lualib/

ENV JWT_SECRET="VGhpcyBzZWNyZXQgaXMgc3RvcmVkIGJhc2UtNjQgZW5jb2RlZCBvbiB0aGUgcHJveHkgaG9zdA"
ENV JWT_SECRET_IS_BASE64_ENCODED true