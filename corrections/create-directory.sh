#!/bin/sh

printf "Nom du dossier ? "
read nomdossier

if [[ ! -e $nomdossier ]]; then
    mkdir $nomdossier
else
    echo "$nomdossier existe déja" 1>&2
fi

