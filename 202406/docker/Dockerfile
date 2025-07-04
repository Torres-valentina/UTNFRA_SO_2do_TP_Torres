# Usar la imagen base de Nginx
FROM nginx:latest

# Copiar tu archivo index.html modificado al directorio de Nginx
COPY index.html /usr/share/nginx/html/

# Exponer el puerto 80 del contenedor (puerto por defecto de Nginx)
EXPOSE 80

# Comando para iniciar Nginx cuando el contenedor se ejecute
CMD ["nginx", "-g", "daemon off;"]
