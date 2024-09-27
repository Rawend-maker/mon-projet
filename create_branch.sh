#!/bin/bash

# Vérifie si un message de commit a été fourni
if [ -z "$1" ]; then
  echo "Erreur : veuillez fournir un message pour le commit."
  exit 1
fi

# Ajoute tous les fichiers modifiés
git add *

# Crée le commit avec le message fourni
git commit -m "$1"

# Pousse les changements vers la branche actuelle
git push origin "$(git branch --show-current)"
