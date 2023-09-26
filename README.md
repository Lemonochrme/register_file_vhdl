# Spécifications du Banc de Registres Double Port

## Description
Le Banc de Registres Double Port est conçu pour gérer un ensemble de 16 registres, chacun ayant une capacité de 8 bits. Ce banc de registres offre la possibilité de deux accès en lecture simultanés et un accès en écriture. Il est également équipé d'une fonction de réinitialisation.

## Fonctionnalités Principales
- Capacité : 16 registres de 8 bits chacun.
- Double accès en lecture avec les signaux @A et @B.
- Accès en écriture avec les signaux @W, W et DATA.
- Réinitialisation du contenu du banc de registres via le signal RST.
- Écriture synchrone avec l'horloge.
- Gestion de l'aléa de données avec une fonction de Bypass D → Q.

## Fonctionnement
- Lorsque le signal RST est actif à 0, le contenu du banc de registres est initialisé à 0x00.
- Les signaux @A et @B permettent la lecture simultanée de deux registres, dont les valeurs sont propagées vers les sorties QA et QB.
- Pour effectuer une écriture, l'entrée W doit être activée à 1. Les données présentes sur l'entrée DATA sont alors copiées dans le registre d'adresse @W.
- En cas de lecture et d'écriture simultanées sur le même registre, la sortie QX prend la valeur de DATA pour traiter l'aléa de données.

## Signaux d'Entrée/Sortie
- RST (Reset) : Signal de réinitialisation (actif à 0).
- @A et @B : Signaux pour la lecture simultanée de deux registres.
- @W, W, DATA : Signaux pour l'écriture dans le registre spécifié.
- QA et QB : Sorties des valeurs lues depuis les registres.
- QX : Sortie pour le traitement de l'aléa de données.

Le Banc de Registres Double Port est conçu pour être utilisé dans des systèmes où une gestion efficace des registres est nécessaire, notamment dans les processeurs.
