# Exercice 13 - Sécurité

Cet exercice a pour ibjectifs :
* de suivre les failles et correctifs
* de connaitre quelques éléments de sécurités
* de mettre en place un minimum de sécurité de connexion

## Suivre les failles et correctifs

* Consulter le site  http://www.us-cert.gov/ 
* Chaque faille est référencé par un numéro CVE. Voir les sites suivants : 
* * http://cve.mitre.org/  
* * https://us-cert.cisa.gov/ncas/bulletins 
* * https://nvd.nist.gov/vuln/full-listing 
* Les editeurs de distributions comme Red Hat ou de logiciel comme Nginx publient également des alertes de sécurités :
* * https://access.redhat.com/site/security/updates
* * http://nginx.org/en/security_advisories.html 
* Quel est la version de votre distribution, de votre noyau et de votre libc ?
* Quelle est la version du logiciel Gnu tar et celle du paquet associé ?


## Connaitre quelques éléments de sécurités

* Quels sont les ports réseaux ouverts ?
* Quelle applications utilisent ces ports réseaux ouverts ?
* Est ce que votre système est à jour ? 
* Afficher les informations concernant les mises à jour 
* Quelle commande utiliser pour mettre à jour votre système pour corriger les failles de sécurité ?
* Mettre en place un deconnexion automatique au bout de 120 seconde via la variable d'environnement TMOUT à positionner dans le fichier .bash_profile
* Vérifier le paquet de l'utilitaire date 

## Mettre en place un minimum de sécurité de connexion

* Est ce qu'en tant qu'utilisateur simple (sans droit d'admin) je peux accéder au fichier contenant les mots de passe ?
* Et en tant qu'administrateur ? 
* Les mots de passes sont t'ils affichés en clair ?
* Définir la validité du mot de passe pour le compte guest à 30 jours
* Quelle commande utilisée pour changer le mot de passe d'un utilisateur ?
* Vérouiller le mot de passe de l'utilisateur sacha
* Essayer de vous connecter avec le compte sacha. Que se passe t'il ?
* Dévérouiller le mot de passe et essayer de vous connecter de nouveau
* Comment visualiser les dernières connexions qui ont réussies ? 
* Et celles qui ont échouées ?
