FROM nginx
COPY ./application/material-dashboard/build /var/www
COPY ./application/material-dashboard/nginx.conf /etc/nginx/nginx.conf
EXPOSE 3001
ENTRYPOINT ["nginx","-g","daemon off;"]