# Use Node official image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json (if exists)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app code
COPY . .

# Expose port 3000 to the outside
EXPOSE 3000

# Command to start the app
CMD ["npm", "start"]

