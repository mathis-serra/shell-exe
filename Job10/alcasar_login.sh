#!/bin/bash

utilisateur="mathis.serra@laplateforme.io"
mot_de_passe="$1"

url_login="https://alcasar.laplateforme.io/status.php
data="auth_user=$utilisateur&auth_pass=$mot_de_passe"

curl -d "$data" "$url_login" -c cookies.txt > /dev/null 2>&1

if [ $? -eq 0 ]; then
	echo "Connexion réussie à Alcasar"
else
	echo "La connexion à Alcasar a échoué"
fi

exit 0
