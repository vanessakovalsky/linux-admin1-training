# Exercice 1 - Installation d'une machine Linux

Cet exercice a pour objectifs : 
* d'installer une distribution linux sur une VM
* de prendre en main sa distribution

## Pré-requis :
* Afin de réaliser cet exercice, vous devez créer une machine Virtuel avec l'outil de votre choix : 
* * Oracle Virtual Box
* * Hyper-V 
* * Ou tout autre outil à votre convenance
* Pour les caractèristiques de la VM : 
* * 8GO de RAM Minimum
* * 20Go d'espace disque

## Installation 

* Télécharger l'image disque (ISO) de votre distribution : 
* * Ubuntu server : https://ubuntu.com/download/server 
* * CentOs : https://www.centos.org/download/ 
* Insérer l'image disque dans votre VM 
* Lancer la VM qui va démarrer à partir du disque d'installation
* Suivre les différentes étapes d'installation et de configuration (différentes en fonction de la distribution)

## Prise en main

### Connexion et informations

* Se connecter sur la machine que vous avez installé
* Afficher votre identité 
* Afficher vos groupes et UID / GID
* Quelles sont les dates et heures du système ?
* Quel est la version du noyau Linux que vous utilisez ?
* Quel est la distribution et sa version ?
* Se déconnecter

## Recherche d'information sur le web

* Ouvrir un navigateur
* Rechercher quel est la dernière version de votre distribution
* Rechercher un HowTo sur les droits utilisateurs
* Y'a t'il différentes versions de la distribution que vous utilisez ? Quelles sont leurs principales différences ?

## Utilisation du manuel

* Afficher la page de manuel de la commande date
* Mettre à jour l'index du manuel (permet de faire des recherches ) : commande mandb 
* Rechercher les pages en rapport avec le mot-clé "date"
* Afficher la page 5 du manuel de passwd

## Utilisation de la commande script

La commande script permet d'enregistrer les commandes saisies et leur résultat.
* Démarrer un script avec: script -a 
* Faite une recherche pour trouver les fichiers de type .h dans tous le dossier /ect (et ses sous-dossier)
* Rechercher si le mot "shell" est présent dans les fichiers trouvés lors de la recherche précédente
* Arrêter le script avec la commande exit 
* Afficher le script enregistré (fichier typescript)