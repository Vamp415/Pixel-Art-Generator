# Use lightweight nginx image
FROM nginx:alpine

# Copy static files to nginx html directory
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY index.js /usr/share/nginx/html/
COPY logo.png /usr/share/nginx/html/
COPY favicon-logo.png /usr/share/nginx/html/

# Copy SEO and PWA files
COPY robots.txt /usr/share/nginx/html/
COPY sitemap.xml /usr/share/nginx/html/
COPY site.webmanifest /usr/share/nginx/html/
COPY favicon.ico /usr/share/nginx/html/
COPY apple-touch-icon.png /usr/share/nginx/html/
COPY android-icon-192.png /usr/share/nginx/html/
COPY android-icon-512.png /usr/share/nginx/html/

# Copy custom nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]