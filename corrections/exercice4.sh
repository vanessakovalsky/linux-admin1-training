#!/bin/sh

# ## Gérer les utilisateurs

# Est ce que les comptes daemon et sacha existent ? Si oui quels sont leur uid, gid et groupes ?
cat /etc/passwd | grep daemon
cat /etc/passwd | grep sacha

# Créer les groupes dresseurs, bleu et rouge
groupadd dresseurs
groupadd bleu
groupadd rouge

# Créer des comptes utilisateurs :
## sacha appartient au groupe dresseur (comme groupe principal) et au groupe bleu (comme groupe secondaire)

 useradd -g dresseurs -G bleu sacha

## pierre appartient au groupe dresseur (comme groupe principal) et au groupe bleu (comme groupe secondaire)

 useradd -g dresseurs -G bleu pierre

## teamrocket appartient au groupe rouge 

 useradd -g rouge teamrocket

# Mettre le mot "password" comme mot de passe à l'utilisateur sacha

echo "password" | passwd sacha --stdin

# Se connecter en ssh avec le compte de sasha

ssh sacha@localhost

## Gérer les droits 
# Créer l'arborescence de fichiers suivante :
## dossier : /home/pokemon
mkdir /home/pokemon
## fichier pokedex.txt contenant "Pokedex :" dans /home/pokemon
echo "Pokedex" > /home/pokemon/pokedex.txt

## fichier ma_liste.txt contenant "Mes pokemons :" dans /home/pokemon
echo "Mes pokemons" > /home/pokemon/ma_liste.txt

## fichier vols.txt contenant "Les pokemons que l'on a emprunté :" dans /home/pokemon
echo "Les pokemons que l'on a emprunté :" > /home/pokemon/vols.txt

## Rendre sacha propriétaire du dossier pokemon

chown sacha /home/pokemon

# Donner les droits de lecture, écriture et accès au propriétaire. Lecture et accès au groupe mais pas aux autres.

chmod 750 /home/pokemon

# Rendre les fichiers accessible en lecture seule pour le groupe et rien aux autres. 

chmod g+r /home/pokemon/*


# Les fichiers pokedex.txt et ma_liste.txt on pour groupe bleu
chgrp bleu /home/pokemon/pokedex.txt
chgrp bleu /home/pokemon/ma_liste.txt

# Le fichier vols.txt appartient au groupe rouge 

chgrp rouge /home/pokemon/vols.txt

# Tester les accès :
## Avec le compte sacha, verifier que l'on peut accéder à l'ensemble des dossiers et fichiers
su sacha
ls /home/pokemon
cat /home/pokemon/*.txt
exit

## Avec le compte pierre, vérifier que l'on peut lister les fichier et qu'on ne peut ni créer ni supprimer des fichiers dans le répertoire. Vérifier également qu'il peut lire les fichiers pokedex.txt et ma_liste.txt mais pas vols.txt
su pierre
ls /home/pokemon
touch /home/pokemon/pierre.txt
cat /home/pokemon/*.txt
exit

## Avec le compte teamrocket vérifiez qu'aucun accès au dossier ou aux fichiers n'est possible
su teamrocket
ls /home/pokemon
cat /home/pokemon/*.txt
exit