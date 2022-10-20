# Use NodeJS base image
FROM nginx:alpine
 
# Create app directory
WORKDIR /usr/share/nginx/html/
 
# Install app dependencies by copying
# package.json and package-lock.json
# COPY package*.json ./
 
# # Install dependencies
# RUN npm install
 
# Copy app source
COPY . .
 
# Bind the port that the image will run on
EXPOSE 8080
 
# Define the Docker image's behavior at runtime
CMD ["nginx"]