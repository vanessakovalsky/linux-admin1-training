#/bin/sh

# partie 1 - Manipuler les fichiers et répertoire

# Repertoire courant

pwd

# Copier le fichier /etc/passwd dans le dossier courant et nommer la copie motdepasse

cp /etc/passwd ./monmotdepasse

# Copier le fichier /etc/group et /etc/profile dans le répertoire courant sans les renomme

cp /etc/group .
cp /etc/profile .

# Lister les fichiers présents dans le répertoire
ls 

# Lister de nouveaux les fichiers du répertoire courant mais en affichant les fichiers cachés

ls -h 

# Créer un dossier "mondossier"

mkdir mondossier

# Copier le fichier group en gr2
cp group gr2

# Détruire le fichier group
rm group

# Renommer le fichier gr2 en groupes
mv gr2 groupes

# Se rendre dans le dossier /usr/bin
cd /usr/bin

# Quelles sont les caractèristiques du fichier date ?
ls -l date

# Revenir dans son home
cd 

# Quel est le type de fichier de /usr/bin/date ? Quel est le type de fichier pour /etc/profile ?
file /usr/bin/date
file /etc/profile$

# Afficher page par page le contenu du fichier /etc/issue

more /etc/issue

# Partie 2 - Utiliser les utilitaires

# Afficher les premier ligne du fichier /etc/services 
head /etc/services

# Afficher les dernières lignes du fichier /etc/services 
tail /etc/services

# Rechercher dans le fichier /etc/services la chaine "HTTP"

grep "HTTP" /etc/services 

# Rechercher la même chaine sans tenir compte de la casse

grep -i "HTTP" /etc/services

# Afficher les lignes du fichier /etc/services qui contiennent la chaine "HTTP" 
grep -n "HTTP" /etc/services

# Même chose sans tenir compte de la casse
grep -in "HTTP" /etc/services

# Afficher les 3 dernières lignes du fichier /etc/services trié 

sort /etc/services | tail -3 

# Afficher page par page, triées, les lignes du fichiers /etc/services qui ne commencent pas par "#" 

grep -vn ^# /etc/services | sort | more -10

# Afficher le nombre de lignes, de mots et de caractères du fichier /etc/services
wc /etc/services

# Afficher seulement le nombre de ligne du fichier /etc/services
wc -l /etc/services

# Partie 3 -  Manipuler le shell

### Redirections
# Rediriger le résultat de la commande date dans un fichier date.txt
date > date.txt

# Ajouter dans ce fichier le résultat de la commande uname
uname >> date.txt

# Supprimer, avec une redirection le contenu du fichier précédent

cat /dev/null > date.txt

### Jokers
# Afficher les commandes qui commencent par "e" du répertoire /bin/
ls /usr/bin/e*
grep ^e* /usr/bin 

# Afficher les commandes dont le nom contient seulement 5 caractères

find ????? 

# Afficher les commandes dont le nom contient 2 caracteres et commencent par "e"

find e?

# Afficher les commandes commençant par w ou x ou y ou z .

find [wxyz]*

# Afficher les commandes qui ne commencent pas par une lettre comprise entre "a" et "v" 

find [!a-v]*
ls -l /bin/[!a-v]*

### Echappement des caractères

# Créer un fichier qui se nomme "#commentaire" 

touch \#commentaire

# Créer un fichier qui se nomme "Fichier avec des espaces dans le nom" 

touch "Fichier avec des espaces dans le nom"

# Afficher la phrase "Mon home est le : $HOME" --> en remplaçant $HOME par le chemin du dossier HOME de votre utilisateur 

echo "Mon home est le : $HOME"

### Utilisation du PATH

# Afficher le contenu de la variable PATH

echo $PATH

# En utilisant la commande whereis, localiser le binaire ifconfig 

whereis ifconfig 

# Avec le chemin absolu, utiliser l'option --version sur ifconfig pour connaitre la version du binaire

/usr/sbin/ifconfig --version 

# Se déplacer dans le répertoire contenant le binaire

cd /usr/sbin

# Quelle commande utiliser pour lancer ifconfig en relatif depuis le dossier courant ?

./ifconfig

# Ajouter ifconfig dans le PATH : PATH=$PATH:/chemin/vers/dossier/contenant/ifconfig

export PATH=$PATH:/usr/sbin/ifconfig 

# ajouter /usr/sbin/ifconfig dans le fichier .bash_profile après le $HOME/bin pour que le chemin reste après redemarrage