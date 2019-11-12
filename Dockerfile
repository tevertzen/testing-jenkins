FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
RUN rm /etc/nginx/conf.d/examplessl.conf
COPY index.html /etc/nginx/conf.d/
