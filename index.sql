exo1/*Affiche le contenu de la table*/
SHOW TABLES;

exo2/*Affiche tous les départements de la table par ordre alphabétique*/
SELECT * FROM departements ORDER BY nom_dep ASC;

exo3/*Affiche toutes les villes ayant comme département le 60 en ordonnant avec le code postal.*/
SELECT * FROM villes WHERE cp >= 60000 AND cp < 61000 ORDER BY cp ASC;

exo4/*Affiche les 3 premières villes ayant comme code postal "60400" et en ordonnant par ordre alphabétique.*/
SELECT * FROM villes WHERE cp = 60400 ORDER BY libelle ASC LIMIT 3;

exo5/*Affiche toutes les villes contenant le mot "saint".*/
SELECT * FROM villes WHERE libelle LIKE '%saint%';

exo6/*Afficher le nombre de villes par département. (Le nom des départments doit aparaitre)*/
SELECT villes.dep, departements.nom_dep, COUNT(villes.ville) FROM departements INNER JOIN villes ON departements.dep = villes.dep GROUP BY dep;

exo7/*Afficher les villes ayant comme région "Picardie".*/
SELECT regions.nom_region, regions.region, villes.ville FROM regions INNER JOIN villes ON regions.region = villes.region WHERE regions.nom_region= 'picardie';

exo8/*Afficher le nombre de villes par départment et par région. (Le nom des départments et des régions doivent aparaitre).*/
SELECT COUNT(villes.ville) AS nvreg, regions.region AS region, regions.nom_region AS nomregion FROM villes INNER JOIN regions ON regions.region = villes.region GROUP BY region UNION ALL SELECT COUNT(villes.ville) AS nvdep, departements.dep AS dep, departements.nom_dep AS nomdep FROM villes INNER JOIN departements ON departements.dep = villes.dep GROUP BY dep;
