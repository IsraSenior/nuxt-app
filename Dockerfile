# Use Node.js LTS
FROM node:18-alpine

# Create app directory
WORKDIR /

# Copy package files
COPY package*.json ./
COPY . .

# Install dependencies and build
RUN yarn install
RUN yarn run build

# Expose the port Nuxt runs on
EXPOSE 3000

# Start the application
CMD ["node", ".output/server/index.mjs"]