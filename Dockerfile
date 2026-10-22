FROM nginx:alpine
COPY index.html styles.css latest.json /usr/share/nginx/html/
COPY downloads /usr/share/nginx/html/downloads
EXPOSE 80
