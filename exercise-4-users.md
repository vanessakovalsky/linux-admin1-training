# Exercice 4 - Utilisateurs et droits

Cet exercice a pour objectifs :
* de gérer des utilisateurs
* de gérer les droits

## Gérer les utilisateurs

* Est ce que les comptes daemon et sacha existent ? Si oui quels sont leur uid, gid et groupes ?
* Créer les groupes dresseurs, bleu et rouge
* Créer des comptes utilisateurs :
* * sacha appartient au groupe dresseur (comme groupe principal) et au groupe bleu (comme groupe secondaire)
* * pierre appartient au groupe dresseur (comme groupe principal) et au groupe bleu (comme groupe secondaire)
* * teamrocket appartient au groupe rouge 
* Mettre le mot "password" comme mot de passe à l'utilisateur sacha
* Se connecter en ssh avec le compte de sasha 

## Gérer les droits 
* Créer l'arborescence de fichiers suivante :
* * dossier : /home/pokemon
* * fichier pokedex.txt contenant "Pokedex :" dans /home/pokemon
* * fichier ma_liste.txt contenant "Mes pokemons :" dans /home/pokemon
* * fichier vols.txt contenant "Les pokemons que l'on a emprunté :" dans /home/pokemon
* Rendre sacha propriétaire du dossier pokemon
* Donner les droits de lecture, écriture et accès au propriétaire. Lecture et accès au groupe mais pas aux autres.
* Rendre les fichiers accessible en lecture seule pour le groupe et rien aux autres. 
* Les fichiers pokedex.txt et ma_liste.txt on pour groupe bleu
* Le fichier vols.txt appartient au groupe rouge 
* Tester les accès :
* * Avec le compte sacha, verifier que l'on peut accéder à l'ensemble des dossiers et fichiers
* * Avec le compte pierre, vérifier que l'on peut lister les fichier et qu'on ne peut ni créer ni supprimer des fichiers dans le répertoire. Vérifier également qu'il peut lire les fichiers pokedex.txt et ma_liste.txt mais pas vols.txt
* * Avec le compte teamrocket vérifiez qu'aucun accès au dossier ou aux fichiers n'est possible


## Gérer les droits spéciaux
* Ajouter les droits spéciaux 3770 sur le répertoire pokemon (SGID et sticky-bit)
* Créer un fichier pikachu avec le compte root dans le dossier pokemon
* Créer un fichier evoli avec le compte sacha dans le dossier pokemon 
* Créer un fichier carapuce ave le compte teamrocket dans le dossier pokemon 
* A quel groupe les fichiers sont affiliés ? Qu'est ce qui provoque cela ?
* Se connecter en teamrocket
* Essayer de supprimer le fichier evoli, que se passe t'il ?
* Supprimer le sticky bit (chmod -t)
* Essayer de nouveau de supprimer le fichier evoli avec le compte teamrocket
* Copier le fichier pikachu vers tmp en gardant les attributs du fichier (y-compris son propriétaire)

## (Optionnel) Interface graphique

* Lancer en arrière plan system-config-users (installer le paquet si celui-ci n'est pas installé)
* Cliquer sur l'icone computer puis sur l'icône filesystem
* Naviguer dans l'arborescence
* Pour modifier les droits d'un fichier ou d'un dossier, clic droit sur le fichier ou le dossier concerné et se rendre dans l'onglet permissions
