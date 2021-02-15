# Exercice 6  - Installation d'applications

Cet exercice a pour objectifs : 

* D'installer une applicatio à partir de sources 
* D'installer une application à partir de source sans compilateur
* D'installer en utilisant rpm ou deb
* D'installer une application en utilisan yum ou apt

## Installer une application à partir des sources
* Télécharger les sources du serveur web Nginx http://hg.nginx.org/nginx/archive/tip.tar.gz 
* Décompressez et extraire l'archive
* Créer le fichier Makefile qui contrôle la compilation (voir dans le Readme la procédure à suivre)
* Compiler l'application
* Installer l'application
* Activer l'application
* Vérifier son fonctionnement
* Arrêter l'application

## Installer une application à partir des sources sans compiler
* Créer une archive du dossier nginx se trouvant dans /usr/local suite à la compilation de l'exercice précédent
* Copier l'archive sur un autre poste linux 
* Extraire l'archive dans /usr/local
* Vous pouvez mainenant lancer, tester et arrêter l'application sur l'autre poste

## Gérer les applications avec la commande rpm ou deb
* Lister les applications installées
* Vérifier si l'application Apache (httpd) est installée
* Afficher les caractèristique du paquet Apache
* Lister les fichiers appartenant au paquet Apache
* A quel paquet appartient le fichier httpd.conf ?
* Installer le paquet lynx à récupérer sur le site officiel de la distribution utilisée

## Installer des applications avec la commande yum ou apt 
* Vérifier la configurationd de Yum ou Apt
* Lister les dépôts utilisées par cotre distribution
* Rechercer un paquet ftp
* Installer le logiciel ftp à partir des depôts
* Mettre à jour l'ensemble des paquets sans demander de confirmation
* Lister l'ensemble des paquets installés et disponibles.

### Spécial Red Hat (la notion de groupe de paquets n'existent pas sur Debian)
* Lister les groupes de paquets
* Lister le contenu d'un groupe
* Installer un groupe de paquets 'Development tools'