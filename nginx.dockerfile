FROM nginx:1.25.3-alpine

RUN apk update

RUN ln -s /usr/share/nginx/html /data

#CMD /bin/sh
