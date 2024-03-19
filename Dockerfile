# Use an official Node.js runtime as the base image
FROM node:18

# Set the working directory in the Docker container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json into the Docker container
COPY package*.json ./

# Install the app's dependencies inside the Docker container
RUN npm install

# Copy the rest of the app's source code into the Docker container
COPY . .

# Make port 3000 available outside the Docker container
EXPOSE 3000

# Start the app
CMD [ "npm", "start" ]