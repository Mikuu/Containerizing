FROM nginx
COPY ./application/vcer-ui/build /var/www
COPY ./application/vcer-ui/nginx.conf /etc/nginx/nginx.conf
EXPOSE 3000
ENTRYPOINT ["nginx","-g","daemon off;"]