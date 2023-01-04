#!/bin/sh

# Execution de script

chmod +x monscript.sh
bash -x monscript.sh

export PATH=$PATH:${pwd}/monscript.sh # temporaire si vous voulez le garder en permanent il faut rajouter cette ligne dans le fichier $HOME/.bashrc

cd /home
monscript.sh 

# Variables

export CONFIG_SHELL=/etc/profile

set

unset CONFIG_SHELL # pour supprimer la variable CONFIG_SHELL

export LANG=fr_FR

date 

export LANG=de_DE

date

chmod +x bonjour.sh 

./bonjour.sh 

# Structure de controle

