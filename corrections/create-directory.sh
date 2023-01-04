#!/bin/sh

printf "Nom du dossier ? "
read nomdossier

if [[ ! -e $nomdossier ]]; then
    mkdir $nomdossier
else
    echo "$nomdossier already exists but is not a directory" 1>&2
fi

