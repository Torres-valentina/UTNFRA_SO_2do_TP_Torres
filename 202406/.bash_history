sudo apt update
sudo apt install git -y
pwd
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc
pwd
mkdir RTA_Examen_$(date +%Y%m%d)
sudo apt update
ansible --version
sudo apt install ansible -y
ansible --version
sudo shutdown now
lsblk
cd ~/RTA_Examen_$(date +%Y%m%d)
touch Punto_A.sh
chmod +x Punto_A.sh
vim Punto_A.sh
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo pvs
sudo pvcreate /dev/sdc1
sudo pvcreate /dev/sdd1
sudo pvs
vim Punto_A.sh
sudo vgcreate vg_valentinat /dev/sdc1
sudo vgcreate vg_temp /dev/sdd1
sudo vgs
vim Punto_A.sh
sudo lvcreate -L 1G -n lv_datos vg_valentinat
sudo lvcreate -L 500M -n lv_docker vg_valentinat
sudo lvcreate -L 500M -n lv_temp vg_temp
sudo lvs
vim Punto_A.sh
sudo lvs
sudo mkfs.ext4 /dev/mapper/vg_valentinat-lv_datos
sudo mkfs.ext4 /dev/mapper/vg_valentinat-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_temp-lv_temp
vim Punto_A.sh
sudo mkdir -p /mnt/datos
sudo mkdir -p /mnt/docker
sudo mkdir -p /mnt/temp
sudo mount /dev/mapper/vg_valentinat-lv_datos /mnt/datos
sudo mount /dev/mapper/vg_valentinat-lv_docker /mnt/docker
sudo mount /dev/mapper/vg_temp-lv_temp /mnt/temp
df -h
vim Punto_A.sh
sudo vim /etc/fstab
sudo mount -a
sudo reboot
df -h
sudo touch /usr/local/bin/TorresAltaUser-Groups.sh
sudo chmod +x /usr/local/bin/<Torres>AltaUser-Groups.sh
sudo chmod +x /usr/local/bin/TorresAltaUser-Groups.sh
sudo vim /usr/local/bin/TorresAltaUser-Groups.sh
cat ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo vim /usr/local/bin/TorresAltaUser-Groups.sh
sudo /usr/local/bin/TorresAltaUser-Groups.sh valentinat ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo vim /usr/local/bin/TorresAltaUser-Groups.sh
sudo userdel -r 2P_202406_Prog1
sudo userdel -r 2P_202406_Prog2
sudo userdel -r 2P_202406_Test1
sudo userdel -r 2P_202406_Supervisor
sudo groupdel 2P_GDesa
sudo groupdel 2P_GTest
sudo groupdel 2PSupervisores
sudo /usr/local/bin/TorresAltaUser-Groups.sh valentinat ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
ls -l /work/
sudo touch /usr/local/bin/TorresAudit-Users-Disk.sh
sudo chmod +x /usr/local/bin/TorresAudit-Users-Disk.sh
sudo vim /usr/local/bin/TorresAudit-Users-Disk.sh
sudo /usr/local/bin/TorresAudit-Users-Disk.sh 1
cat /tmp/2do_parcial/reportes/Reporte_Espacio_Usuarios-$(date +"%Y-%m-%d").log
sudo touch /usr/local/bin/TorresManage-Processes.sh
sudo chmod +x /usr/local/bin/TorresManage-Processes.sh
sudo vim /usr/local/bin/TorresManage-Processes.sh
sudo /usr/local/bin/TorresManage-Processes.sh 100
sudo apt update
sudo apt install dos2unix
sudo dos2unix /usr/local/bin/TorresManage-Processes.sh
sudo /usr/local/bin/TorresManage-Processes.sh 100
file /usr/local/bin/TorresManage-Processes.sh
head -1 /usr/local/bin/TorresManage-Processes.sh | cat -v
sudo vim /usr/local/bin/TorresManage-Processes.sh
sudo /usr/local/bin/TorresManage-Processes.sh 100
cat /tmp/2do_parcial/reportes/Reporte_Procesos-$(date +"%Y-%m-%d").log
cd ~/UTN-FRA_SO_Examenes/
cd 202406/docker/
vim index.html
touch Dockerfile
vim Dockerfile
docker build -t web1-Torres .
sudo apt update
sudo apt install docker.io
sudo usermod -aG docker valentinat
exit
docker version
cd ~/UTN-FRA_SO_Examenes/202406/docker/
docker build -t web1-Torres .
docker build -t web1-torres .
vim Dockerfile
docker build -t web1-torres .
docker images | grep web1-torres
docker login
docker tag web1-torres valentina2707/web1-torres:latest
docker push valentina2707/web1-torres:latest
touch run.sh
vim run.sh
chmod +x run.sh
cd ~/UTN-FRA_SO_Examenes/202406/docker/
./run.sh
docker ps
exit
cd ~/UTN-FRA_SO_Examenes/202406/docker/
docker stop $(docker ps -aq --filter ancestor=valentina2707/web1-torres) 2>/dev/null
docker rm $(docker ps -aq --filter ancestor=valentina2707/web1-torres) 2>/dev/null 
./run.sh
docker ps
vim Dockerfile
docker build -t web1-torres .
docker stop $(docker ps -aq --filter ancestor=valentina2707/web1-torres) 2>/dev/null
docker rm $(docker ps -aq --filter ancestor=valentina2707/web1-torres) 2>/dev/null
./run.sh
docker ps
docker stop $(docker ps -aq --filter ancestor=valentina2707/web1-torres) 2>/dev/null
docker rm $(docker ps -aq --filter ancestor=valentina2707/web1-torres) 2>/dev/nulldocker rmi web1-torres:latest
docker rmi web1-torres:latest
docker build --no-cache -t web1-torres .
./run.sh
docker ps
vim index.html
docker build --no-cache -t web1-torres .
docker stop $(docker ps -aq --filter ancestor=valentina2707/web1-torres) 2>/dev/null
docker rm $(docker ps -aq --filter ancestor=valentina2707/web1-torres) 2>/dev/null
./run.sh
vim index.html
docker build --no-cache -t web1-torres .
docker stop $(docker ps -aq --filter ancestor=valentina2707/web1-torres) 2>/dev/null
docker rm $(docker ps -aq --filter ancestor=valentina2707/web1-torres) 2>/dev/null
./run.sh
docker ps
docker exec -it <ID_CONTENEDOR> /bin/bash
docker exec -it <ID_CONTENEDOR> /bin/sh
cd /usr/share/nginx/html/
ls -l
cat index.html
vim index.html
docker build --no-cache -t web1-torres .
docker stop 05aa2f56f67a # Usar el ID real
docker stop 05aa2f56f67a
docker rm 05aa2f56f67a
./run.sh
docker ps
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
mkdir -p roles/tp2_examen/{tasks,templates}
vim roles/tp2_examen/tasks/main.yml
vim roles/tp2_examen/templates/datos_alumno.txt.j2
vim roles/tp2_examen/templates/datos_equipo.txt.j2
vim playbook.yml
vim playbook.yml 
mkdir -p RTA_Examen_20250704
vim RTA_Examen_20250704/Punto_D.sh
chmod +x RTA_Examen_20250704/Punto_D.sh
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
./RTA_Examen_20250704/Punto_D.sh
vim RTA_Examen_20250704/Punto_D.sh
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
./RTA_Examen_20250704/Punto_D.sh
vim playbook.yml
./RTA_Examen_20250704/Punto_D.sh
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
cat playbook.yml
vim playbook.yml
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
./RTA_Examen_20250704/Punto_D.sh
vim playbook.yml
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
cat -A playbook.yml
vim playbook.yml
cat -A playbook.yml
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
cat << EOF > playbook.yml
---
- name: Ejecutar tareas del TP2 Examen
  hosts: all
  become: yes
  gather_facts: yes

  roles:
    - tp2_examen
EOF

cat -A playbook.yml
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
./RTA_Examen_20250704/Punto_D.sh
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
cat << EOF > roles/tp2_examen/tasks/main.yml
---
- name: Crear directorio base /tmp/2do_parcial
  ansible.builtin.file:
    path: /tmp/2do_parcial
    state: directory
    mode: '0755'

- name: Crear directorio alumno
  ansible.builtin.file:
    path: /tmp/2do_parcial/alumno
    state: directory
    mode: '0755'

- name: Crear directorio equipo
  ansible.builtin.file:
    path: /tmp/2do_parcial/equipo
    state: directory
    mode: '0755'

- name: Generar datos_alumno.txt
  ansible.builtin.template:
    src: datos_alumno.txt.j2
    dest: /tmp/2do_parcial/alumno/datos_alumno.txt
    mode: '0644'

- name: Generar datos_equipo.txt
  ansible.builtin.template:
    src: datos_equipo.txt.j2
    dest: /tmp/2do_parcial/equipo/datos_equipo.txt
    mode: '0644'

- name: Asegurar que el grupo 2PSupervisores exista
  ansible.builtin.group:
    name: 2PSupervisores
    state: present

- name: Configurar sudoers para 2PSupervisores (NOPASSWD)
  ansible.builtin.lineinfile:
    path: /etc/sudoers.d/2psupervisores_nopasswd
    state: present
    create: yes
    mode: '0440'
    line: '%2PSupervisores ALL=(ALL) NOPASSWD: ALL'
    validate: '/usr/sbin/visudo -cf %s'
EOF

cat -A roles/tp2_examen/tasks/main.yml
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
./RTA_Examen_20250704/Punto_D.sh
./RTA_Examen_20250704/Punto_D.sh --ask-become-pass
vim RTA_Examen_20250704/Punto_D.sh
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
./RTA_Examen_20250704/Punto_D.sh
vim RTA_Examen_20250704/Punto_D.sh
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
./RTA_Examen_20250704/Punto_D.sh
ls -l /tmp/2do_parcial/alumno/
ls -l /tmp/2do_parcial/equipo/
cat /tmp/2do_parcial/alumno/datos_alumno.txt
cat /tmp/2do_parcial/equipo/datos_equipo.txt
sudo groupadd 2PSupervisores # Esto es idempotente, si ya existe no hará nada
sudo groupadd 2PSupervisores 
sudo useradd -m -g 2PSupervisores usuario_prueba 
sudo passwd usuario_prueba # Establece una contraseña para 'usuario_prueba'. Puedes poner "password" (es solo para el login inicial, no para sudo)
su - usuario_prueba
cd ~
git clone https://github.com/Torres-valentina/UTNFRA_SO_2do_TP_Torres.git
cd UTNFRA_SO_2do_TP_Torres/
pwd
ls -la .git/
cd UTNFRA_SO_2do_TP_Torres/
cp -r ~/UTN-FRA_SO_Examenes/202406/ .
cp -r 202406/ansible/RTA_Examen_20250704/ 202406/RTA_Examen_20250704_Entrega/
history -a
