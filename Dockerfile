# Use the official Node.js image as base
FROM node:20-alpine AS base

# Install Bun
RUN npm install -g bun

# Set working directory
WORKDIR /app

# Copy package files
COPY package.json bun.lockb ./

# Install dependencies
RUN bun install --frozen-lockfile

# Copy source code
COPY . .

# Build the application
RUN bun run build

# Expose port 6969
EXPOSE 6969

# Set environment variables for production
ENV NODE_ENV=production
ENV PORT=6969
ENV HOST=0.0.0.0

# Start the application
CMD ["node", "build"] 