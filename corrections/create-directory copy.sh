#!/bin/sh

printf "Nom du dossier ? "
read nomdossier

test -d $nomdossier || mkdir $nomdossier

