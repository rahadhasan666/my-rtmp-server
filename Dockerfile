FROM nginx:1.24.0-alpine

RUN apk add --no-cache nginx-mod-rtmp

RUN mkdir -p /var/www/html/hls && \
    chmod 755 /var/www/html/hls

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 1935
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
