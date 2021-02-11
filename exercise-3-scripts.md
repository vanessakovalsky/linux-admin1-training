# Exercice 3 - Script Shell

Cet exercice a pour objectifs :
* d'exécuter des scripts
* de définir et d'utiliser des variables
* de se servir des structures de contrôles dans ses scripts
* de définir et d'utiliser des sous-programme

Durée totale : 85 minutes

## Exécution de script (15 minutes)

* Créer un script monscript.sh avec le contenu suivant : 
```shell
#!/bin/sh
# mon script : premier script

date 
uptime
uname -a
```
* A l'aide de la commande bash afficher la trace des commandes du script lors de son exécution (option -x)
* Exécuter le script (/!\ au droit d'exécution) depuis le répertoire courant 
* Ajouter le chemin du dossier courant au PATH et lancer le script depuis n'importe quel autre dossier 

## Variables (20 minutes)

* Créer une variable CONFIG_SHELL qui contient le chemin vers le fichier /etc/profile et afficher le contenu de la variable
* Afficher toutes les variables
* Détruire la variable CONFIG_SHELL que vous avez créé
* Modifier la variable LANG pour mettre la valeur fr_FR
* Afficher la date , quel est maintenant le format de la date ? 
* Modifier maintenant la variable LANG pour la mettre en allemand (de_DE) et afficher la date. Quel est le format de la date affiché ?
* Créer un script qui va définir une variable et l'afficher, son contenu : 
```shell
#!/bin/sh
# bonjour.sh
printf "Votre nom ? "
read nom
echo "Bonjour Mr ou Mme $nom"
```
* Ici read attend que l'on est répondu à la question de printf et appuyer sur entrée, puis stocke le resultat dans la variable nom 


## Structure de contrôle (40 minutes)

* Créér un script create-directory.sh . Celui-ci demande le nom du répertoire à crée et test si ce répertoire existe avant de le crée. S'il peut le crée il affiche "Ok", sinon il affiche "le répertoire existe déjà". Utiliser pour cela l'alternative if.
* Copier le script précédent et remplacer l'alternative if par la commande test pour vérifier si le répertoire existe.
* Créer un script test-flag.sh. Ce script test l'existence du fichier flag toutes les 10 secondes. (Utiliser pour cela la boucle while et pour attendre 10 secondes la commande sleep)
* Créer un script feu.sh. Celui ci affiche un decompte décroissant qui va de 5 à 1 puis affiche "FEU!" une fois terminée.
* Créer un script menu.sh . Celui-ci propose 3 choix : 
* * 1 - Afficher la date
* * 2 - Afficher la charge systeme
* * 3 - Afficher la version du système
* En fonction du choix effectuer et à l'aide de l'instruction case appelé la commande correspondant au choix 

## Sous-programmes (10 minutes)
* Créer un script affiche.sh qui contient le code suivant :
```
presente ()
{
for i
do
echo "===== $i"
done
echo
}
# ----- debut du programme
presente "Bonjour" "Ce matin" "nous affichons" "la date"
date
presente "au revoir" "chers amis"
```
* Executer ce script, qu'affiche t'il ?
* Reprenez votre script menu.sh de la partie précédente et ajouter une fonction confirmation qui demande à l'utilisateur de confirmer son choix de menu. 