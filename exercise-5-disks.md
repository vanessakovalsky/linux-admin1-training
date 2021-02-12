# Exercice 5 - Disques et système de fichiers

Cet exercice a pour objects : 
* de visualiser les disques et les partitions
* de visualiser les FS, d'utiliser un media
* De créer un FS dans un fichier
* De gérer LVM et le FS
* (Optionnel) De gérer les partitions
* (Optionnel) De connaitre les inodes

## Visualiser les disques et les partitions

* Lister les différents disques, aussi bien physique que les LV
* Lister l'ensemble des partitions
* Lister les partitions d'un disque particulier

## Visualiser les FS, utiliser un media 
* Lister les FS monté et pour chacun afficher l'espace disque disponible
* A quel file system appartient le fichier .bash_profile (situé à la racine du dossier home)
* Brancher une clé usb (ou insérer un CDROM si vous etes sur une VM)
* Dans quel répertoire est automatiquement monter la clé USB ?
* Démonter la clé USB et la remonter dans /mnt/usb 
* Se dépacer dans le dossier de la clé usb
* Lister son contenu
* Démonter la clé usb 
* Visualiser le type de contenu (FS, ...) des différents disques (partitions et LV)
* Afficher l'étiquette (label) et l'UUID d'une partition

## Créer un FS dans un fichier

* Créer un fichier de taille 1Go
* Formater le fichier en ext3
* Monter le FS sur le répertoire /mnt/disk
* Créer deux fichiers et un répertoire sur ce FS
* Visualiser le nombre de blocs et d'inodes libres présents sur le FS
* Démonter le FS
* Le vérifier avec fsck

## LVM et FS

* Transformer un disque en PV
* Lister les PV
* Analyser le contenu d'un disque 
* Créer un VG
* Lister les VG
* Créer des LV : 
* * Dans le VG web, un premier LV de 200Mo qui sera nommé par défaut lvol0
* * Un deuxième de 300Mo nommé htdocs
* Lister les LV
* Afficher la configuration LVM (VG, PV, LV)
* Formater les LV (le premier en ext4, le deuxièe en xfs)
* Monter les FS, puis étendez les LV (lvextend) puis les FS à chaud (resize2fs pour le LV en ext4, xfs_growfs pour le LV en xfs)
* Démonter les FS
* Supprimer les LV, le VG et le PV

## (Optionnel - Avancé) Gestion des partitions 

/!\ Cet exercice doit être fait sur un deuxième disque ou sur une clé USB 

* Lister la table des partitions d'un disque
* A l'aide de la commande fdisk, on va gérer les partitions 
* * Créer une table de partition vide
* * Créer la partition primaire n°1 de taille 200Mo
* * Afficher la table des partitions
* Créer une deuxième partition primaire qui occupe le reste du disque
* * Afficher la table des partitions et sauvegarder les actions
* Afficher de nouveau la table des partitions
* Gérer les partitions avec la commande parted (reprendre les consigne de création de partitions faite avec fdisk et les refaire avec parted)

## (Optionnel - Avancé) Inodes

* Créer un répertoire, et deux fichiers (f1 et f2) à l'intérieur de ce répertoire
* Lister les fichiers de ce répertoires avec leurs numéros d'inodes
* Créer un lien sur le premier fichier (f1) appeler nomdufichierbis
* Modifier le contenu de f1 et ses droits 
* Afficher les numéros d'inodes de l'ensemble du répertoire
* Supprimer le fichier f1
* Renommer le lien fibis en f1
* Créer un lien symbolique vers f1
* Détruire le fichier lié

