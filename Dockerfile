FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site
COPY dist/ /usr/share/nginx/html/

# Expose port 80 inside container
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
