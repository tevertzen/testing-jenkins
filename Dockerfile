FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
COPY index.html /etc/nginx/conf.d/
