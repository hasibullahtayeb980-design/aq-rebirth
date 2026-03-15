FROM node:24

# Set the working directory in the container.
WORKDIR /usr/src/app

# Copy the application code to the container
COPY . .

# Install the app dependencies
RUN npm install

# Compile TypeScript files to JavaScript
RUN npm run build

# Expose the port the app runs on
EXPOSE 3000

# Command to run the app
CMD ["node", "build/main.js"]

