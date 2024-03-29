
![version beta](https://img.shields.io/badge/version-beta-red)

# Aperçu 
Version 3.0 mobile

![version 3.0 mobile](https://github.com/fxpar/SQLpratique/blob/main/res/screenshot-mobile-01.png)


# Description

## Objectif
SQL Pratique
Permet aux étudiants de s'entrainer au sql.

L'étudiant choisi un exercice (une base de données)
Il va de question en question.
Le resultat attendu lui est montré.
La correction est dévoilable


Les réponses des étudiants ne sont pas collectées ni stockées
Aucune authentification.
Aucune note.


## Type d'exercices
* exercices à plusieurs tables
* pratique des jointures
* select, update, insert


# Installation
À installer sur un serveur php et mysql

# Nouvelles fonctionalités
* plusieurs exercices
* variantes de correction proposées en commentaires
* hébergement github
* insert / update / delete encadrés par des TRANSAC (Begin... Rollback)

## Exemple Rollback
La table des questions contient une colonne "ROLLBACK" avec une requête à effectuer AVANT et APRÈS:

![Rollback](https://github.com/fxpar/SQLpratique/blob/main/res/screenshot-mobile-02.png)


# Collaboration
* N'hésitez pas à proposer de nouveaux exercices en envoyant des "pull request" sur le dossier db/exercices/

# Tutoriel vidéo interactif
Apprenez les bases du sql avec une vidéo et un quiz intégré après chaque concept nouveau.

Les tutos sont téléchargeables et installables sur n'importe quelle plateforme Moodle ou Wordpress (grâce au module H5P).

## Tuto débutant: requêtes simples
Découvrer comment interroger les bases de données et réaliser les modifications simples: ajout, modification, suppression.

https://www.fxparlant.net/sql-decouverte/

![Découverte SQL H5P](https://github.com/fxpar/SQLpratique/blob/main/res/H5p-1.png)

![Découverte SQL H5P quiz](https://github.com/fxpar/SQLpratique/blob/main/res/H5p-1-quiz.png)

## Tuto avancé : les jointures
Apprenez à relier les différentes tables d'une bases de données pour obtenir des informations riches.

https://www.fxparlant.net/sql-decouverte-2/

![Découverte SQL H5P](https://github.com/fxpar/SQLpratique/blob/main/res/H5p-2.png)

![Découverte SQL H5P quiz](https://github.com/fxpar/SQLpratique/blob/main/res/H5p-2-quiz.png)





# À FAIRE
- [x] Mettre les questions dans une table par exercice
- [ ] Corriger la mise à jour de la liste déroulante des exercices
- [ ] Remettre "voir la correction" à chaque changement de question
- [ ] Nettoyer les requêtes modifications s'il n'y a pas de rollback
- [ ] Afficher les messages d'erreurs au lieu du résultat



# Auteur
François Parlant

# Licence
cc-by-sa-4.0

https://creativecommons.org/licenses/by-sa/4.0/deed.fr

# Document original
Projet construit à partir du génial tutoriel de :

Jérôme DARMONT Université Lyon 2
Version "2.0" par Huynh Ngo Uyen Kim &amp; Narumon Rojthongkum 
https://eric.univ-lyon2.fr/jdarmont/tutoriel-sql/

# Ressources
Les exercices ont été principalement crées pour les étudiants en DCG
* l'académie de Grenoble met à disposition les annales depuis 2009 
  * schéma relationnels
  
## Sql Zoo
* https://sqlzoo.net/wiki/More_JOIN_operations
  * Correction: https://github.com/mdh266/SQL-Practice
* Linkedin Skill Assessment
  * Mysql : https://github.com/Ebazhanov/linkedin-skill-assessments-quizzes/blob/master/mysql/mysql-quiz.md
* Sql Practice
  * https://github.com/mdh266/SQL-Practice
* Sql Exercise
  * https://github.com/XD-DENG/SQL-exercise
  * https://en.wikibooks.org/wiki/SQL_Exercises/The_computer_store







