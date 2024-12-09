# docker/frontend.Dockerfile
FROM node:18-slim

WORKDIR /app

# Install dependencies
COPY frontend/package*.json ./

RUN npm install

# Copy application code
COPY frontend/ ./

# Start development server
CMD ["npm", "run", "start"]