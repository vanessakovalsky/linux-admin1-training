# Exercice 2 - Commandes

Cet exercice a pour objectifs : 
* de manipuler les fichiers et répertoire
* d'utiliser les utilitaires
* de manipuler le shell
* d'utiliser l'éditeur Vi
* De rechercher avec la commande find

## Manipuler les fichiers et répertoire

* Quelle commande utiliser pour connaitre le répertoire courant ?
* Copier le fichier /etc/passwd dans le dossier courant et nommer la copie motdepasse
* Copier le fichier /etc/group et /etc/profile dans le répertoire courant sans les renommer
* Lister les fichiers présents dans le répertoire
* Lister de nouveaux les fichiers du répertoire courant mais en affichant les fichiers cachés
* Créer un dossier "mondossier" 
* Copier le fichier group en gr2
* Détruire le fichier group
* Renommer le fichier gr2 en groupes
* Se rendre dans le dossier /usr/bin
* Quelles sont les caractèristiques du fichier date ?
* Revenir dans son home
* Quel est le type de fichier de /usr/bin/date ? Quel est le type de fichier pour /etc/profile ?
* Afficher page par page le contenu du fichier /etc/issue 

## Utiliser les utilitaires

* Afficher les premier ligne du fichier /etc/services 
* Afficher les dernières lignes du fichier /etc/services 
* Rechercher dans le fichier /etc/services la chaine "HTTP"
* Rechercher la même chaine sans tenir compte de la casse
* Afficher les lignes du fichier /etc/services qui contiennent la chaine "HTTP" 
* Même chose sans tenir compte de la casse
* Afficher les 3 dernières lignes du fichier /etc/services trié 
* Afficher page par page, triées, les lignes du fichiers /etc/services qui ne commencent pas par "#" 
* Afficher le nombre de lignes, de mots et de caractères du fichier /etc/services
* Afficher seulement le nombre de ligne du fichier /etc/services

## Manipuler le shell

### Redirections
* Rediriger le résultat de la commande date dans un fichier date.txt
* Ajouter dans ce fichier le résultat de la commande uname
* Supprimer, avec une redirection le contenu du fichier précédent

### Jokers
* Afficher les commandes qui commencent par "e" du répertoire /bin/
* Afficher les commandes dont le nom contient seulement 5 caractères
* Afficher les commandes dont le nom contient 2 caracteres et commencent par "e"
* Afficher les commandes commençant par w ou x ou y ou z .
* Afficher les commandes qui ne commencent pas par une lettre comprise entre "a" et "v" 

### Echappement des caractères

* Créer un fichier qui se nomme "#commentaire" 
* Créer un fichier qui se nomme "Fichier avec des espaces dans le nom" 
* Afficher la phrase "Mon home est le : $HOME" --> en remplaçant $HOME par le chemin du dossier HOME de votre utilisateur 

### Utilisation du PATH

* Afficher le contenu de la variable PATH
* En utilisant la commande whereis, localiser le binaire ifconfig 
* Avec le chemin absolu, utiliser l'option --version sur ifconfig pour connaitre la version du binaire
* Se déplacer dans le répertoire contenant le binaire
* Quelle commande utiliser pour lancer ifconfig en relatif depuis le dossier courant ?
* Ajouter ifconfig dans le PATH : PATH=$PATH:/chemin/vers/dossier/contenant/ifconfig

## Editer un fichier avec Vi

* Créer un fichier commandes.txt
* Dans ce fichier à l'aide de vi mettre une description pour chacune des commandes suivantes : ls, cp, rm, mv, find, ln, pwd, cd, mkdir, grep (plus d'autres si vous souhaitez vous constituer un petit memo)
* Avec vi ajouter à la fin de votre fichier .bash_profile la commande date, pour afficher la date lors de la connexion. Deconnectez vous et reconnecter vous pour voir s'afficher la date

## Rechercher avec la commande find

* Créer une arborescence : 
```
cd ; mkdir -p f/images f/pages
cp /etc/group f/images/f1.png
cp /etc/group f/images/f2.png
date > f/README
date > f/images/README
```
* Comment afficher les fichiers contenu dans le dossier f avec la commande find à partir du chemin relatif ? et  avec le chemin absolu ?
* Rechercher le fichier qui a pour nom README
* Rechercher les images qui ont l'extension .png
* Rechercher les répertoires 
* Rechercher les fichiers ordinaires
* Rechercher les fichier qui ont été modifié il y a plus de 5 jours 
* Recherchez les fichiers qui ont une taille > à 100ko
* Rechercher les fichiers dont le nom ne se termine par par .png
* Rechercher les fichiers dont la taille est inférieure à 100ko et dont le nom est README
* Rechercher des fichiers dont le nom commence par f ou dont le nom est README
* Lister les attributs des fichiers dont le nom est README
