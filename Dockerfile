# Stage 1: Build the Vite app
FROM node:18-alpine AS builder
WORKDIR /app

# Install dependencies and build the app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build

# Stage 2: Serve the app using a lightweight web server
FROM nginx:alpine
COPY --from=builder /app/dist /usr/share/nginx/html

# Expose the port
EXPOSE 4173

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
