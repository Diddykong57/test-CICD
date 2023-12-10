# Utilisation de l'image officielle Node.js LTS (Long Term Support)
FROM node:18

# Copier les fichiers de dépendances du projet
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Créer dossier
RUN mkdir /home/beginFolder

# Définir le répertoire de travail dans le conteneur
WORKDIR /home/beginFolder

# Copier le code source dans l'image
COPY . .

# Exposer le port sur lequel l'application écoute
EXPOSE 3000

# Commande à exécuter lorsque le conteneur démarre
CMD ["npm", "start"]