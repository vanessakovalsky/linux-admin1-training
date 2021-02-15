# Exercice 7 - Applications

Cet exercice a pour objectifs : 
* de manipuler les processus
* d'utiliser le crontab
* de comprendre le fonctionnement de rsyslog
* de comprendre ce qu'est un processus zombie

## Processus
### Base de manipulation des processus
* Lister les processus associés au terminal
* L'application crond est t'elle active ? Quel est son PID ?
* Activez l'application sleep en tache de fond. 
* Lister les caractéristiques de tous les processus (y-compris ceux qui sont arrêtés)
* Activer une session shell ISO (commande sh) puis tuez là avec la commande kill
* Démarrer le service apache (httpd, à installer s'il n'est pas présent) 
* Vérifiez que le service est bien active 
* Arrêter le service Apache

### Complément sur la manipulation des processus
* Afficher les caractèristiques d'un processus dont on connait le PID (exemple crond)
* Afficher l'arborescence des processus 
* Lister les processus du compte guest
* Lister les processus en affichant l'utilisation des ressources
* Afficher les processus les plus consommateurs de ressources
* Gérer les priorité : 
* * lancer une application sleep en arrière plan avec une valeur NICE à 10
* * Lister les processus du terminal courant avec leur valeur NICE
* * Modifier la valeur du NICE pour la mettre à 20 et visualiser le résultats 
* Visualiser les fichiers ouverts par le démon syslogd
* Quels sont les applications qui accèdent au fichier /var/log/messages ?
* Lister les bibliothèques utilisées par l'application date 
* Vérifier si le fichier /bin/ksh est un exécutable
* Démarrer le service Apache (httpd) et afficher le PGID des processus activés
* Affiche la charge système
* Afficher la mémoire vive et la mémoire swapt totale, utilisée et livre
* Afficher les espaces de swap actifs

## Crontab
### Démarrer avec Crontab
* Connectez vous sous le coompte guest et vérifier s'il possède un crontav
* Créer avec ce compte un crontab qui effectue les tâches suivantes : 
 * * Ajouter la date chaque minute dans le fichier /tmp/date.log
 * * Ecrire la liste des processus toutes les 10 minutes entre 9h et 17h du lundi au vendredi à la fin du fichier /tmp/process.log
* Afficher le crontab de guest
* Vérifier dans le fichier /tmp/date.log l'effet de la première commande
* Supprimer le crontab de guest
### Allez plus loin avec Crontab
* Le service crontab est t'il actif ?
* Créer une requête crontab dans un fichier (ajotuer la date dan /tmp/date2.log toutes les minutes) 
* Ajouter cette requête sur le crontab de l'utilisateur guest 
* Après 5 minutes, supprimer cette crontab
* Regarder dans le log de crond ce qu'il s'est passé 
* Lister les crontab existants. Dans quels fichiers peut t'on écrire des taches cron ?


## Rsyslog
* Dans quel fichier sont enregistrés les messages liés au courriel ? Afficher la dernière ligne de ce fichier 
* Envoyer un message de niveau warning à destination du sous-syteme user
* Copier le fichier /etc/httpd/conf/httpd.conf en /etc/httpd/conf/httpd.conf.000
* Modifier dans le fichier source  la ligne ErrorLog ... et la remplacer par 
ErrorLog syslog:daemon
* Vérifier que la syntaxe est correcte avec sydo apachectl configtest
* Créer un fichier pour réceptionner les fichiers d'erreur d'Apache : /ect/rsyslog.d/daemon.conf
* Ce fichier contient 
daemon.info /var/log/apache.log
daemon.=debug /var/log/web_debug
* Rédemarrer le service rsyslog
* Redémarrer le service apache (httpd)
* Afficher les log de apache /var/log/apache.log et /var/log/web_debug 
* Vérifier si logrotate est activé 
* Vérifier ensuite si sa configuration gère la rotation des fichiers /var/mog/messages et des journaux d'Apache

## Processus Zombies
* Créer un fichier zombie.c avec le contenu suivant :
```c
/* zombie.c */
# include <stdio.h>
# include <stdlib.h>
# include <unistd.h>
# include <sys/types.h>
# include <sys/wait.h>
int main(int argc, char ** argv) {
int status;
if ( fork() == 0 )
execlp("cal","cal",argv[1],argv[2],0);
else {
sleep(20);
wait(&status);
printf("code retour:%d\n", WEXITSTATUS(status));
return 0;
}
}
```
* Compiler le fichiesr avec gcc
* Il est nécessaire d'installer cal avant de lancer le binaire obtenu
* Exécuter le binaire obtenu en tache de fond
* Vérifier la liste de processus un processus zombie apparait car l'application attend 20 secondes avant de récupérer un code retour. Durant ce temps un processus cal zombie existe, il apparaît sour l'appellation <defunct> . Il est supprimé lorsque l'application a terminé de s'exécuter.

