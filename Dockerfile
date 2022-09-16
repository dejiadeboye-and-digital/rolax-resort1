FROM nginx:1.23.1

COPY nginx.conf /etc/nginx/nginx.conf
RUN nginx -t

COPY site/ /usr/share/nginx/html/
