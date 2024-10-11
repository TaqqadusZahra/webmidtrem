FROM nginx:latest

COPY . /usr/share/nginx/html

RUN  apt-get update && apt-get install -y git
RUN  rm -rf /usr/local/apache2/htdocs/*



RUN chmod -R 755 /usr/local/apache2/htdocs/

EXPOSE 80


# Start the NGINX server
CMD ["nginx", "-g", "daemon off;"]
