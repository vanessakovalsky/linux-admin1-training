# Exercice 6 - Sauvegarde

Cet exercice a pour objectif : 
* de créer et gérer des archives au format tar
* de créer et gérer des archives au format cpio
* de créer et gérer des archives avec la commande pax

## Créer et gérer ses archives tar

* Archiver tous les fichiers de votre home dans une archive sauve.tar à mettre dans /tmp
* Visualiser la liste des fichiers sauvegardés dans l'archive
* Restaurer un fichier contenu dans l'archive dans le dossier /tmp 
* Vérifier que le contenu du fichier restauré dans tmp correspond bien à celui que vous avez dans votre /home/
* Détruire tous les fichiers de son home
* Restaurer tous les fichiers de votre home à partir de l'archive /tmp/sauve.tar 
* Créer une nouvelle archive contenant tous les fichiers de votre home en la compressant cette fois ci au format tar.gz

* Créer un script : save-today-work.sh . Ce script effectura les actions suivantes : 
* * Trouver les fichiers modifier dans la journée dans le répertoire $HOME
* * Les sauvegarder dans une archive tar
* * Si l'archive existe, il trouvera les fichiers modifiés ce jour qui ne sont pas dans l'archive et les ajoutera dans l'archive (sauvegarde incrémentale)
* * Rajouter lors de la création de l'archive l'exclusion des dossier .cache .confg .local .mozilla .ssh 

## Archivez au format cpio 

* Archiver tous les fichiers de votre home dans une archive sauve.cpio 
* Compressez l'archive avec gzip 
* Lister le contenu des sauvegardes
* Restaurer un fichier contenu dans l'archive dans le dossier /tmp 
* Vérifier que le contenu du fichier restauré dans tmp correspond bien à celui que vous avez dans votre /home/
* Détruire tous les fichiers de son home
* Restaurer tous les fichiers de votre home à partir de l'archive /tmp/sauve.cpio.gz

## Archivez avec la commande pax

* Sauvegarder les fichiers de votre $HOME avec la commande pax au format tar
* Lister le contenu de la sauvegarder avec pax
* Restaurer un fichier contenu dans l'archive dans le dossier /tmp 
* Vérifier que le contenu du fichier restauré dans tmp correspond bien à celui que vous avez dans votre /home/
* Restaurer tous les fichiers de votre home à partir de l'archive 


