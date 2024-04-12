# Use the official NGINX image as the base image
FROM nginx 
# Update package lists and install git
RUN apt-get update && \
      apt-get install -y git && \
      rm -rf /var/lib/apt/lists/*
# Remove default NGINX HTML files
RUN rm -rf /usr/share/nginx/html/* 
# Clone static website example from GitHub
RUN git clone https://github.com/diranetafen/static-website-example.git /usrr
    /share/nginx/html
# Set the default entry point for the container
ENTRYPOINT ["nginx", "-g", "daemon off;"]
