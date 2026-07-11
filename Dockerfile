FROM node:20

WORKDIR /usr/src/app

# Copiar archivos de configuración
COPY package.json yarn.lock ./

# Instalar dependencias con Yarn (esto creará node_modules)
RUN yarn install --frozen-lockfile

# Copiar el resto del proyecto
COPY . .

EXPOSE 3000

CMD ["yarn", "start"]
