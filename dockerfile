# Use a base image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json .
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 80 for the application
EXPOSE 80

# Start the application
CMD ["npm", "start"]

