# Exercice 12 - Interface Graphique

Cet exercice a pour objectifs : 
* de savoir activer une application graphique
* de manipuler le X dépouillé
* De configurer un serveur de connexions graphique
* de choisir son bureau
* de configurer un serveur X VNC

## Savoir activer une application graphique

* Activer l'application gedit à partir du menu du bureau graphique
* Afficher la variable DISPLAY 
* Ouvrir un fichier texte avec gedit depuis le terminal
* Basculer en mode texte (CTR + Alt + F1)
* Ouvrir gedit : DISPLAY=:0 gedit & 
* Rebasculer dans l'environnement graphique (Ctrl + Alt + F1 )
* Afficher dans les processus le serveur X 
* Quel est le socket Unix utilisé entre le client et le serveur X ?
* Afficher la configuration du serveur X
* Recréer la configuration du serveur X


## Manipuler le X dépouillé

* Arrêter le serveur X
* Activer un serveur X 
* Activer un client gedit 
* Activer le gestionnaire de fenêtre (metacity)
* Revenir en mode graphique standard 

## Configurer un serveur de connexions graphique

* Changer la valeur du paramètre Enable de la section [xdmcp] du fichier gdm.conf
* Redemarrer le poste
* Vérifier l'ouverture du port 177 et du port 6000
* Depuis un second poste, arrêter le serveur X local
* Activer le serveur X local qui dialogue avec le serveur
* Se connecter sur le compte guest du second poste
* Redemarrer le système local
* Activer une session X distante sur le second poste 

## Choisir son bureau

### KDE 

* quels sont les menus disponibles ?
* Comment accéder à un terminal ?
* Quel est le gestionnaire de fichier ?
* Où se trouve la configuration ?
* Qu'est ce que le KDE control central ?

### Gnome

* quels sont les menus disponibles ?
* Comment accéder à un terminal ?
* Quel est le gestionnaire de fichier ?
* Où se trouve la configuration ?
* Quel différence entre Gnome et Gnome classic ?

## Configurer un serveur X VNC

* Installer un client et un serveur VNC sur le poste local et sur le second poste (exemple : tigervnc et tigervnc-server)
* Activer le serveur X Xvnc à l'aide du script perl vncserver : $ vncserver :1 
* Activer le client VNC 
* Saisir le mot de passe (taper lors de l'activation)
* Travailler sur le second poste, puis fermer la fenêtre cliente
* Arrêter le serveur