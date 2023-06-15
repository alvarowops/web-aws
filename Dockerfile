FROM nginx:latest

# Instalar Node.js
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

# Directorio de trabajo de la aplicación
WORKDIR /app

# Copiar los archivos de la aplicación
COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./index.html /usr/share/nginx/html/index.html

# Copiar el archivo de configuración de MySQL
COPY ./mysql-config.js /app/mysql-config.js

# Instalar dependencias de Node.js y realizar la conexión a MySQL Aurora
RUN npm init -y
RUN npm install mysql

# Exponer el puerto 80
EXPOSE 80

# Comando para iniciar el servidor Nginx
CMD ["nginx", "-g", "daemon off;"]

