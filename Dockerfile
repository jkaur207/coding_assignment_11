# Use Node.js as base image
FROM node:18-alpine

# Set working directory inside container
WORKDIR /Kaur_Jaspreet_site

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy all files to container
COPY . .

# Expose port 7775
EXPOSE 7775

# Run the React app
CMD ["npm", "start"]
