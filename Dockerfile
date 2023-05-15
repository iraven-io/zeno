# Base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock to the working directory
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy the entire project to the working directory
COPY . .

# Build the Next.js project
RUN yarn build

# Expose the desired port (e.g., 3000 for Next.js)
EXPOSE 3000

# Start the Next.js server
CMD ["yarn", "start"]

