# Base Image
FROM node:20

# This creates a working directory
WORKDIR /app

# Copies all the folders and files to current working directory - ignore node_modules(.dockerignore)
COPY . .

# These are the commands that we run to start the project
RUN npm install 
RUN npm run build
RUN npx prisma generate

EXPOSE 3000

# This runs after the image started
CMD [ "node", "dist/index.js" ]

# Build the Image
# docker build -t image_name .

# Run the image