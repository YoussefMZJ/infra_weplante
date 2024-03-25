#!/bin/bash

# Demander à l'utilisateur d'entrer le nom de l'image
echo "Entrez le nom de l'image Docker (imagename):"
read imagename

# Demander le chemin vers le Dockerfile
echo "Entrez le chemin vers le Dockerfile (dockerfilepath):"
read dockerfilepath

# Demander le tag de l'image
echo "Entrez le tag pour l'image Docker (tag):"
read tag

# Demander le registre Docker
#echo "Entrez le registre Docker (dockerregistry):"
dockerregistry=youssefmzj


# Construire l'image Docker
docker build -t $imagename:$tag $dockerfilepath

# Taguer l'image Docker
docker tag $imagename:$tag $dockerregistry/$imagename:$tag

# Pousser l'image Docker vers le registre
docker push $dockerregistry/$imagename:$tag
