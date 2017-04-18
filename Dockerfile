FROM nginx:1-alpine

ADD redirect.conf.template /etc/nginx/conf.d

CMD envsubst '$REDIRECT_HOST' < /etc/nginx/conf.d/redirect.conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'

