#!/bin/bash
chiffre1="$1"
operation="$2"
chiffre2="$3"

if [ "$operation" != "+" ] && [ "$operation" != "-" ] && [ "$operation" !="*" ] && [ "$operation" != "/" ]; then
    cho "Opération non valide : $operation"
    exit 1
fi

resultat=$(echo "$chiffre1 $operation $chiffre2" | bc)

echo "Le résultat de $chiffre1 $operation $chiffre2 est égal à : $resultat"

exit 0
