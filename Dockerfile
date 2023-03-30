# Use an official NGINX runtime as a parent image
FROM nginx:latest

WORKDIR .
# Copy the default NGINX configuration file to the container

# Copy the application code to the container
COPY . /usr/share/nginx/html

# Expose port 80 (or any other port used by the NGINX server)
EXPOSE 80

# Start the NGINX server
CMD ["nginx", "-g", "daemon off;"]
