FROM node:latest

WORKDIR /usr/src/app

# COPY package*.json ./
COPY my_file /etc/important/ 
# very important!

RUN npm install

COPY . .

EXPOSE 3000
CMD [ "node", "index.js" ]

# Pull the minimal Ubuntu image
#FROM ubuntu

# Install Nginx
#RUN apt-get -y update && apt-get -y install nginx

# Copy the Nginx config
#COPY default /etc/nginx/sites-available/default

# Expose the port for access
#EXPOSE 80/tcp

# Run the Nginx server
#CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
