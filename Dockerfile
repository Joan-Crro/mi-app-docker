FROM node:20

# Instalar Yarn Classic (misma versión que se usa en local)
RUN npm install -g yarn

WORKDIR /usr/src/app

# Copiar archivos de configuración
COPY package.json yarn.lock ./

# Instalar dependencias con Yarn (esto creará node_modules)
RUN yarn install --frozen-lockfile

# Copiar el resto del proyecto
COPY . .

EXPOSE 3000

CMD ["yarn", "start"]
