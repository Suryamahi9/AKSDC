# Use official Nginx image to serve the static content
FROM nginx:alpine

# Copy the HTML content into the nginx container
COPY index.html /usr/share/nginx/html/


# Expose port 80 (default for Nginx)
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
