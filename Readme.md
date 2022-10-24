# Tarea: DNS - docker compose - Git
services:
  asir_dockerGit:
    container_name: asir_dockerGit
    image: internetsystemsconsortium/bind9:9.16
    ports:
      - 5300:53/udp
      - 5300:53/tcp
    volumes:
      - /home/asir2a/Documentos/SRI/practica2/conf:/etc/bind
      - /home/asir2a/Documentos/SRI/practica2/zonas:/var/lib/bind

## Configuración Volumenes
Lo primero que haremos será crear la carpeta "conf" con el archivo named.conf y la carpeta "zonas" con el archivo db.asri.com además de crear el "docker-compose.yml" y el Readme.md que es donde estoy escribiendo ahora.
Dentro del docker-compose creamos el services "asir_bind9":

Para asignar el nombre al contenedor:
container_name: asir_dockerGit

Para seleccionar la imagen:
image: internetsystemsconsortium/bind9:9.16

Para los puertos:
ports:
      - 5300:53/udp
      - 5300:53/tcp
Y por último configuramos los volúmenes colocandolos en las carpetas que creamos antes:
volumes:
      - /home/asir2a/Documentos/SRI/practica2/conf:/etc/bind
      - /home/asir2a/Documentos/SRI/practica2/zonas:/var/lib/bind
