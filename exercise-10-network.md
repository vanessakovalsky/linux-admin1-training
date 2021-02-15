# Exercice 10 - Réseau

Cet exercice a pour objectifs :
* de tester et de visualiser la configuration réseau
* de savoir configurer une carte réseau
* de connaitre les services réseau
* de configurer le service xinetd
* d'utiliser les commande SSH

## Tester et visualiser la configuration réseau 

* Afficher les adresse IP de vos cartes réseaux actives
* Afficher les masques réseau de vos cartes réseaux actives
* Afficher les configuration (adresse IP et masque réseau) sur toutes les cartes de votre machine
* Afficher les tables de routage de votre réseau 
* Afficher le nom réseau du syst_me en utilisant 3 façons différentes 
* Afficher la configuration DNS
* Tester l'accès à l'adresse : wikipedia.fr
* Tester l'accès à l'adresse IP de wikipedia.fr 
* Quel est la résolution dns de www.linuxfr.org ?
* Quel est la résolution reverse-DNS de 212.27.48.10 
* Obtenez une adresse IPv6 à partir d'un nom de type AAA, en spécifiant l'adresse DNS du serveur
* Quels sont les deux commandes qui permettent d'obtenir la liste des passerelles traversées pour attteindre un système distant ?
* Comment connaitre les mécanismes de résolutions des noms utilisés ?
* Quel est le fichier local de résolution des noms ?
* Quel est l'état du service du Network Manager ?
* Afficher les identifiants et les types de connexions ?
* Afficher les connexions actives et l'état des connexions gérées par NM
* Afficher la configuration globale du NM
* Afficher la connectivité d'une carte ethernet 

## Configurer le réseau 
* Comment peut on réactiver une connexio réseau gérée par le Network Manager ?
* Modifier la configuration rémanent pour une connexion gérée de manière statique
* Changer le nom du systeme 
* Redémarrer la machine pour prendre en compte le nouveau nom système et vérifier que le nouveau nom est bien actif 
* On ajoute une adresse IPv4
* On ajoute une adresse IPv6 au poste également
* Si vous avez une deuxième machine, tester l'accès à la première machine via ces deux adresses 
* Supprimer les adresses IP que l'on a ajouter

## Services réseau
* Lister les services réseau actifs 
* Comment lister les services réseaux actifs sur les sockets suivantes :
* * Unix
* * UDP
* * UPD IPv6
* * UPD IPv4
* * TCP 
* Est ce que le service Portmapper (port 111) et Shell (port 514) sont actifs ? 
* Quel est le numéro de port réseau associé au service sunrpc ?
* Lister les ports réseau actifs du serveur DNS

### Pare-feu
* Le pare feu est t'il actif ?
* Installer Apache sur le serveur et démarrer le service
* AUtoriser l'accès au port 80
* Depuis un autre poste tester l'accès au port 80 avec l'IPv4 puis en IPv6


## Configurer le service Xinetd
* Est ce que xinetd et le serveur tftp son installé ? Si non les installé
* Activer le service tftp
* Tester la présence du service tftp
* Copier les fichier depuis /etc/hostname vers /var/lib/tftpboot/
* Autoriser le servce tftp au niveau du pare-feu 
* Tester l'accès à partir d'un autre poste 

## Commandes SSH
* Vérifier que le service SSH est intallé, activé et demarré sur votre poste et le poste distant que vous utiliser
* Se connecter au poste distant depuis son compte local guest
* On se connectecte au poste distant avec le compte root
* On copie des fichiers depuis le poste local vers le poste distant
* On télécharge des fichiers depuis le poste distant vers le poste local
* On execute la commande date sur le poste distant

### Authentification par clé
* Créer un couple de clé publiques / privées de type RSA
* Copier sa clé publique sur le système distant
* Tester l'accès distant. 
* Utiliser un agent qui va mémoriser la clé privée pour éviter de redemander le mot de passe lors de la prochaine connexion.
