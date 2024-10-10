# Stage 1: Build the Vite React app
FROM node:18-alpine AS builder
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files
COPY . .

# Build the app for production
RUN npm run build

# Stage 2: Serve the app with Node.js
FROM node:18-alpine

# Install serve globally to serve static files
RUN npm install -g serve

# Copy the built files from the previous stage
COPY --from=builder /app/dist /app/dist

# Expose port 4173 to the outside world
EXPOSE 4173

# Serve the app using serve
CMD ["serve", "-s", "/app/dist", "-l", "4173"]
