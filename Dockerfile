# Utiliser une image de base légère avec un serveur web
FROM nginx:alpine

# Copier le fichier HTML dans le répertoire du serveur web
COPY index.html /usr/share/nginx/html/

# Exposer le port 80
EXPOSE 80

# Commande pour démarrer nginx
CMD ["nginx", "-g", "daemon off;"]
```

**À savoir :**
- `FROM nginx:alpine` = on utilise l'image nginx (un serveur web)
- `COPY index.html` = on copie ton fichier HTML dans le conteneur
- `EXPOSE 80` = on expose le port 80 (port web standard)
- `CMD` = la commande qui démarre le serveur quand le conteneur s'exécute

---

## Fichier 2 : .dockerignore
```
.git
.github
README.md