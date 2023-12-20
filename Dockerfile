# Use the Nginx image from Docker Hub
FROM nginx:alpine

# Copy the static files to the Nginx content directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx when the container has provisioned
CMD ["nginx", "-g", "daemon off;"]