FROM nginx:1.21.3-alpine

WORKDIR /usr/share/nginx/html

COPY ./src/* ./

# Containers run nginx with global directives and daemon off
ENTRYPOINT ["nginx", "-g", "daemon off;"]