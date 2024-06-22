# Use the official Node.js 18 image.
FROM node:20.10.0-bookworm

# Set the working directory.
WORKDIR /app

# Copy the package.json and package-lock.json files.
COPY package*.json ./

# Install dependencies.
RUN npm install

# Copy the rest of the application code.
COPY . .

# Build the Next.js application.
RUN npm run build

# Expose the port on which the app will run.
EXPOSE 3000

# Start the application.
ENTRYPOINT ["npm", "start"]