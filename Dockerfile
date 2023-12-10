LABEL authors="Nicolas"

# Utilisation de l'image officielle Node.js LTS (Long Term Support)
FROM node:18

# Définir le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copier les fichiers de dépendances du projet
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le code source dans l'image
COPY . .

# Exposer le port sur lequel l'application écoute
EXPOSE 3000

# Commande à exécuter lorsque le conteneur démarre
ENTRYPOINT ["npm", "start"]