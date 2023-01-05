#!/bin/sh

# Gérer les applications avec la commande rpm 

# Obtenir des informations sur le paquet

rpm -q -i http://rpmfind.net/linux/centos/7.9.2009/os/x86_64/Packages/httpd-2.4.6-95.el7.centos.x86_64.rpm

# Lister les fichiers et les endroits ou ils seront installés
rpm -qlp http://rpmfind.net/linux/centos/7.9.2009/os/x86_64/Packages/httpd-2.4.6-95.el7.centos.x86_64.rpm

# Trouver un fichier specifique (ne renvoit rien si le fichier n'est pas dans un paquet installé)

rpm -q --whatprovides httpd.conf # /!\ ne retrouve pas le fichier 
find / -name "httpd.conf" # A PRIVILEGIER

# Installer Lynx et une dépendance

rpm -i http://rpmfind.net/linux/centos/7.9.2009/os/x86_64/Packages/lynx-2.8.8-0.3.dev15.el7.x86_64.rpm
rpm - i http://rpmfind.net/linux/centos/7.9.2009/os/x86_64/Packages/centos-indexhtml-7-9.el7.centos.noarch.rpm

# Gérer les applications avec la commande dpkg (pour les paquets deb) @TODO


## Installer des applications avec la commande yum ou apt 
# Vérifier la configurationd de Yum ou Apt

cat /etc/yum.conf

# Lister les dépôts utilisées par votre distribution
yum repolist # RedHat
grep -rhE ^deb /etc/apt/sources.list* # Debian


# Rechercer un paquet ftp
yum search ftp # renvoie tous les paquet qui contiennent dans leur nom "ftp"
apt search ftp 

# Installer le logiciel ftp à partir des depôts
yum install ftp
apt search ftp 

# Mettre à jour l'ensemble des paquets sans demander de confirmation

yum update -y
apt update -y


# Lister l'ensemble des paquets installés et disponibles.

yum list 
apt list 

#Spécial Red Hat (la notion de groupe de paquets n'existent pas sur Debian)
#   Lister les groupes de paquets
yum grouplist

#    Lister le contenu d'un groupe

yum groupinfo 'Development tools'

# Installer un groupe de paquets 'Development tools'

yum groupinstall 'Development tools'


