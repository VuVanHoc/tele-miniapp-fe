# Sử dụng một base image với Node.js
FROM node:18-alpine

# Thiết lập thư mục làm việc trong container
WORKDIR /usr/src/app

# Copy file package.json và package-lock.json
COPY package*.json ./

# Cài đặt các dependencies
RUN npm install

# Copy toàn bộ source code vào container
COPY . .

# Build dự án bằng npx
RUN npm run build

# Expose port mà NestJS sẽ chạy
EXPOSE 4173

# Khởi động ứng dụng
CMD ["npm", "run", "start:prod"]
