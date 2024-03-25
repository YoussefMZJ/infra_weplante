#!/bin/bash

# Demander les tags pour chaque service
echo "Entrez le tag pour le service weplante:"
read weplantetag


# Remplacer les placeholders dans le template et créer le nouveau fichier docker-compose
sed -e "s/\[weplantetag\]/$weplantetag/g" \
    'C:\Users\Youssef\Desktop\projet_weplante\infra_weplante\templates\docker-compose.template' > 'C:\Users\Youssef\Desktop\projet_weplante\infra_weplante\envs\local\docker-compose.yml'

#Message indiquant que les tags ont été remplacés
echo "Tags remplacés avec succès"

# Naviguer vers le répertoire et commiter les changements
cd 'C:\Users\Youssef\Desktop\projet_weplante\infra_weplante'
git checkout develop
git checkout -b features/MaJdockercompose
git 'add C:\Users\Youssef\Desktop\projet_weplante\infra_weplante\envs\local\docker-compose.yml'
git commit -m "Mise à jour de docker-compose avec de nouveaux tags"
git push features/MaJdockercompose

#Message de fin

echo "Done !"
