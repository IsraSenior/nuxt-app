# Use Node.js LTS
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy package files
COPY package*.json ./
COPY . .

# Install dependencies and build
RUN npm install
RUN npm run build

# Expose the port Nuxt runs on
EXPOSE 3000

# Start the application
CMD ["node", ".output/server/index.mjs"]