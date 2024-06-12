# Base Image
FROM node:20

# This creates a working directory
WORKDIR /app

# Copy all the package.json, package-lock.json and prisma files 
# seperately as we don't change them frequently

COPY package* .
COPY ./prisma .

# After copying package files and prisma, we run the scripts
RUN npm install 
RUN npm run build
RUN npx prisma generate

# After running the scripts we will copy the remaining source code
COPY . .

EXPOSE 3000

# This runs after the image started
CMD [ "node", "dist/index.js" ]

# Build the Image
# docker build -t image_name .

# Run the image