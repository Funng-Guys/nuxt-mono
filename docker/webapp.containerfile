# Set the base image with the specified Node.js version
ARG NODE_VERSION=22.14.0
FROM node:${NODE_VERSION}-alpine

# Set the environment variable for Node.js to run in production mode
ENV NODE_ENV production

# Create and set the working directory inside the container
WORKDIR /usr/src/app

# Switch to a non-root user for running the application
USER node

# Copy all the application files to the working directory
COPY webapp/.output .

# Expose port 3000 for the application
EXPOSE 3000

# Define the command to run the application
CMD ["node", "server/index.mjs"]