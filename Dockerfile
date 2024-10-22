FROM node:20-alpine as builder
WORKDIR /app
COPY package*.json ./
#COPY yarn*.lock .
RUN npm install
COPY . .
RUN npm run build
# Expose the port
EXPOSE 4200
# Run the app
CMD ["npm", "run", "start"]
