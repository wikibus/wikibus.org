FROM nginx

COPY nginx.conf .

CMD envsubst < nginx.conf > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
