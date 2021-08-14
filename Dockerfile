# partir de una imagen
FROM node:14

# espacio de trabajo
WORKDIR /dockertest

# añadir package
ADD package.json package-lock.json

# instalar dependencias
RUN nmp install

#copiar el codigo, cuando tengo muclas clases se pone . para añadir todo
# se crea archivo .dockerignore  y se pone el node_modules
ADD app.js

# expose  
EXPOSE 5000

# correr contenedor
CMD ['node', 'app.js']

