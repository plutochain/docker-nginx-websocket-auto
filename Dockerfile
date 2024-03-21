# Official latest nginx image
FROM nginx:latest

# Removing default configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copying nginx configuration
COPY nginx.conf /etc/nginx/conf.d/
