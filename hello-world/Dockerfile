# Use official Nginx base image
FROM nginx:alpine

# Remove the default Nginx HTML page
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML page to the web server's root directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port (not necessary for Lambda, but good for local testing)
EXPOSE 80

# Start Nginx (default command already does this)
