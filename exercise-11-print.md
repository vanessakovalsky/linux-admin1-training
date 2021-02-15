# Exercice 11 - Impression

Cet exercice a pour objectifs : 
* de configurer une file d'attente sans pilote, le sppoler
* d'installer un nouveau pilote
* de configurer une file d'attente en utilsiant un pilote, tester le spooler
* de gérrer des classe d'imprimantes
* de tester physiquement une imprimante
* d'utiliser l'interface graphique des imprimantes

## Configurer une file d'attente sans pilote, le spooler
* Créer une imprimante réseau fictive (de type JetDirect) qui imprime dans des fichiers 
* Créer la file d'attente sans utiliser de pilote (pilote "raw" = cru) et activer la :
* * Lister les backend disponibles
* * Créer une file d'attente de nom impression1, sans pilote qui permet d'imrimer sur l'imprimante réseau reliée au serveur local selon le protocole JetDirect sur le port 12000
* * Est ce que le démon d'impression est actif ?
* * Autoriser le deoôt de requête pour notre imprimante
* * Activer la prise en compte des requêtes par l'imprimante
* * Afficher l'état courant du système
* Tester l'imprimante
* Définir l'imprimante impression1 par défaut pour l'utilisateur courant
* Définir l'imprimante impression1 par défaut au niveau du système

## Installer un nouveau pilote
* Vérifiez l'absence du pilote
* Télécharger le pilote 
* Installer le pilote dans le dossier /usr/share/cups/model
* Redemarrer CUPS
* Vérifier la présence du pilote
* Vérifier la présence d'un pilote d'une imprimante non-PostScript

## Configurer une file d'attente en utilsiant un pilote, tester le spooler
* Vérifier la présence du pilote
* Créer la file d'attente et activer la
* Tester le spooler 
* Quelques opérations de gestions :
* * Fixer l'imprimante par défaut
* * Bloquer les impressions
* * Supprimer une ou plusieurs impressions
* * Interdire ou accepter le depôt de requêtes, autoriser les impressions
* Détruire une file d'attente

## Gérer des classe d'imprimantes
* Créer la classe d'imprimante classe1 
* Afficher la liste des classe et pour chacune ses membres
* Activer la classe (comme n'importe quel imprimante)
* Imprimer un fichier sur la classe classe1
* Supprimer la classe classe1

## Tester physiquement une imprimante
* Créer un fichier au format PostScript avec le contenu suivant :
```PostScript
%!PS-Adobe-2.0
%%Title: Hello
%%BeginSetup
10 20 div dup scale
%%EndSetup
% quelque procedures
/CM { 0.0351 div } def
/RP { findfont 5 CM scalefont setfont } def
% corps du programme
/Times-Roman RP
2 CM 27 CM moveto
(Hello World) show
showpage
%%Trailer
%%EOF
```
* Créer un fichier PDF à partir du fichier PS 
* Créer un fichier PCL à partir du fichier PS
* Si votre machine est physiquement branché à une imprimante, vous pouvez lancer une impression.


## Utiliser l'interface graphique des imprimantes
* Ouvrir un navigateur et se rendre à  l'adresse : http://localhost:631 
* Il est possible à partir de cette interface d'administrer le service, les imprimantes, les classes et les travaux d'impressions.
* Ouvrir le fichier /tmp/jetdirect.Txt avec un editeur de texte graphique comme gedit. 
* Imprimer le fichier à partir de l'éditeur graphique