# Use an existing image as a base
FROM nginx:alpine

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Copy the necessary files from your local machine to the container
COPY index.html .
COPY style.css .
COPY script.js .

# Expose port 80 to allow incoming traffic
EXPOSE 80

# Command to start the nginx server
CMD ["nginx", "-g", "daemon off;"]
