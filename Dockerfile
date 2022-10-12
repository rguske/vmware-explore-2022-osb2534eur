FROM nginx:alpine

LABEL maintainer="aullah"

EXPOSE 80

COPY ./html /usr/share/nginx/html
