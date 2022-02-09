# Build Docker Image: docker build -t test-project .
# Run Docker container with port 3000: docker run -p 3000:3000 test-project


FROM node:9

# Create app directory
WORKDIR /app

# Install app dependencies
# COPY package*.json ./

# RUN npm install

# Copying rest of the application to app directory
COPY . /app

# Expose the port and start the application
Expose 3000

CMD ["node","app.js"]
