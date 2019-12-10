FROM nginx
COPY ./application/arxman/build /var/www
COPY ./application/arxman/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
ENTRYPOINT ["nginx","-g","daemon off;"]