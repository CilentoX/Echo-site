FROM nginx:alpine
COPY index.html styles.css latest.json logo-512.png favicon-32.png robots.txt /usr/share/nginx/html/
COPY downloads /usr/share/nginx/html/downloads
EXPOSE 80
