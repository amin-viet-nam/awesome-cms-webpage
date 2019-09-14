FROM nginx:1.16.1-alpine

COPY dist/ /usr/share/nginx/html/

COPY default.conf /etc/nginx/conf.d/default.conf

RUN htpasswd -c /etc/nginx/.htpasswd sama -b sama

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]