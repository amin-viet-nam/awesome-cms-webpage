FROM nginx:1.16.1-alpine

COPY dist/ /usr/share/nginx/html/

COPY default.conf /etc/nginx/conf.d/default.conf
COPY .htpasswd /etc/nginx/.htpasswd

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]