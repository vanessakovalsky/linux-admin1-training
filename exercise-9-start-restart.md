# Exercice 9 - Arrêt / Démarrage

Cet exercice a pour uobjectifs : 
* de gérer les tâches courantes au démarrage
* de mieux comprendre le démarrage
* de créer un service
* de gérer l'arrêt et le redemarrage du système

## Gérer les tâches courantes au démarrage

* Lister les unités actives ayant démarré ou non
* Lister les unités dont le démarrage a echoué
* Afficher la cible par défaut 
* Afficher l'état du service atd
* Afficher le fichier décrivant une unité de type de service 
* Arrêter le service atd 
* Désactiver le service atd
* Reactiver le service atd au démarrage
* Démarrer le service atd

## Mieux comprendre le démarrage 
* Quel est le système de démarrage utilisé ? (init SV, upstartd ou systemd )
* Quel est l'état du système (niveau d'init ou cible principal) ?
* Afficher la cible par défaut
* Lister les cibles actives
* Lister toutes les cibles (actives ou non)
* Lister les unités installées 
* Est ce que la cible multiuser a été démarrée ?
* Lister les unités actives ayant démarré ou non et ensuite les unités actives ou non (all)
* Lister les unités de types service
* Lister les dépendances entre cibles et services
* Afficher une sortie complète de la commande systemctl
* Afficher une unité de type cible : multi-user
* Afficher une unité de type service : sshd

## Créer un service
### Créer et gérer un service simple
* Créer un script avec le contenu suivant :
```sh
#!/bin/sh
# uptime.sh
while : ; do
uptime >> /var/log/uptime.log 2>&1
sleep 60
done
```
* Que fait le script ? 
* Créer un fichier de service qui gère le démon précédent 
* Afficher l'état du service
* Activer le service
* Démarrer le service
* Arrêter le service
* Désactiver le service

### Créer un service associé à un script RC SV
* Créer un service SV (RC )
* Redémarrer la machine
* Le fichier est t'il activé ? chargé ?
* Activer le service 
* Démarrer le service


## Arrêt / redémarrage du système 
* Provoquer l'arrêt du système complet dans 20 minutes
* Supprimer le shutdown précédent à partir d'un autre terminal
* Passer en mode maintenance et revenir au mode normal
* Redémarrer le système dans 3 minutes en affichant un message "Reboot pour maintenance"
* Arrêter le système via la commande systemctl
