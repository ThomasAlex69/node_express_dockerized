# Use the official Node.js 14 image as a parent image
FROM node:14

# Set the working directory to /usr/src/app inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json into the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your app's source code from your local directory to the image
COPY . .

# Inform Docker that the container listens on port 8080 at runtime
EXPOSE 3000

# Define the command to run your app using CMD which defines your runtime
CMD ["node", "server.js"]
