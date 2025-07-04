#!/bin/bash

# Comando para levantar la imagen de Docker web1-torres
# Mapea el puerto 8080 del host al puerto 80 del contenedor (Nginx)
# y ejecuta el contenedor en segundo plano (-d)
docker run -d -p 8080:80 valentina2707/web1-torres:latest

echo "Contenedor 'web1-torres' iniciado en el puerto 8080 del host."
echo "Puedes acceder a la página web en http://localhost:8080 (desde tu máquina local si el puerto está mapeado por Vagrant)"
