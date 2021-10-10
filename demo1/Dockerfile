# ref docs: https://www.indellient.com/blog/how-to-dockerize-an-angular-application-with-nginx

# -------------------------------------------
# Stage 1: Compile and Build angular codebase
# -------------------------------------------

# Use official node image as the base image
FROM node:14-alpine as build

# Set the working directory
WORKDIR /usr/local/app

# Add the source code to app
COPY ./ /usr/local/app/

# Install all the dependencies
RUN rm -rfv package-lock.json
RUN npm cache clean --force
RUN npm install

# Generate the build of the application
RUN npm run build


# ------------------------------------
# Stage 2: Serve app with nginx server
# ------------------------------------

# Use official nginx image as the base image
FROM nginx:alpine

# Copy the build output to replace the default nginx contents.
COPY --from=build /usr/local/app/dist/demo1 /usr/share/nginx/html

# Expose port 80
EXPOSE 80