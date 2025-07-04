#!/bin/bash

# Define tus datos de alumno aquí
NOMBRE="Valentina"
APELLIDO="Torres"
DIVISION="117" # O tu división real

# Ruta al directorio del playbook y roles
ANSIBLE_BASE_PATH="$(dirname "$(pwd)")"

echo "Ejecutando Ansible Playbook..."

# Ejecutar el playbook de Ansible, pasando las variables del alumno
ansible-playbook -i localhost, playbook.yml \
	  --connection=local \
	    --ask-become-pass \
	      -e "nombre_alumno=$NOMBRE" \
	        -e "apellido_alumno=$APELLIDO" \
		  -e "division_alumno=$DIVISION"

echo "Ansible playbook ejecutado. Verifica los archivos en /tmp/2do_parcial/ y la configuración de sudoers."
