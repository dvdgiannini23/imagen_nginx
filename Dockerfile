##Descargamos una versión concreta de UBUNTU, a través del tag
FROM ubuntu
MAINTAINER Apasoft Formacion "apasoft.formacion@gmail.com"
##Actualizamos el sistema
RUN apt-get update
##Instalamos nginx
RUN apt-get install -y nginx
##Creamos un fichero index.html en el directorio por defecto de nginX
#RUN echo 'Mi primer Dockerfile' > /usr/share/nginx/www/index.html
VOLUME /usr/share/nginx/www/
ADD web /usr/share/nginx/www/
##Arrancamos NGINX a través de ENTRYPOINT para que no pueda seR
##modificar en la creación del contenedoR
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
##Exponemos el Puerto 80
EXPOSE 80
