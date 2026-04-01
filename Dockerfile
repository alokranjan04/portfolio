# Use a lightweight Nginx server
FROM nginx:alpine

# Copy all static files to the Nginx html directory
COPY . /usr/share/nginx/html

# Cloud Run defaults to port 8080, so we update the default Nginx config
RUN sed -i 's/listen  *80;/listen 8080;/g' /etc/nginx/conf.d/default.conf

# Expose the Cloud Run port
EXPOSE 8080
