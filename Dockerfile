FROM nginx:alpine
COPY index.html styles.css latest.json /usr/share/nginx/html/
EXPOSE 80
