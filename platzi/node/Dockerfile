FROM node:10
#Copio lo que necesito para hacer el npm install
COPY ["package.json", "package-lock.json", "/usr/src/"]		
#me situo en este directorio dentro del docker
WORKDIR /usr/src/
#configuro el ambiente de node
RUN npm install 		
#copio el resto del proyecto. Docker no lleva los files que ya estan ahi y no han cambiado	
COPY [".", "/usr/src/"]	
#expongo el puerto 3000
EXPOSE 3000				
#comando para levantar el node modo nodemon (cuando el file index.js cambia, se reinicia el servicio para tomar los cambios)
CMD ["npx", "nodemon", "index.js"]
#comando para levantar el node standar
#CMD ["node","index.js"]