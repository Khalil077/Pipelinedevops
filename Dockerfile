# Étape 1 : Utiliser une image Node.js comme base
FROM node:16-alpine

# Étape 2 : Définir le répertoire de travail
WORKDIR /app

# Étape 3 : Copier les fichiers du projet
COPY package*.json ./
COPY index.js ./

# Étape 4 : Installer les dépendances
RUN npm install

# Étape 5 : Exposer le port utilisé par l'API
EXPOSE 3000

# Étape 6 : Commande de démarrage
CMD ["node", "index.js"]
