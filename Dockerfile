# Build stage - this uses node to build the frontend
FROM node:lts-alpine as build-stage

WORKDIR /app
# Copy package list and install
COPY package*.json ./
RUN npm install
# Copy code and build
COPY . .
RUN npm run build

# Production stage - this takes the static files and hosts uses nginx
FROM nginx:stable-alpine as production-stage
# Copy built files
COPY --from=build-stage /app/dist /usr/share/nginx/html
# Expose port
EXPOSE 80
# Run nginx
CMD ["nginx", "-g", "daemon off;"]