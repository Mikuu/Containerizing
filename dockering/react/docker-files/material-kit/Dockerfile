FROM nginx
COPY ./application/material-kit/build /var/www
COPY ./application/material-kit/nginx.conf /etc/nginx/nginx.conf
EXPOSE 3002
ENTRYPOINT ["nginx","-g","daemon off;"]