-- 1. Retrouver le nom de l'équipe coaché par le prenom Joe et le nom Mazzulla --

SELECT equipe.nom 
FROM nba.equipe INNER JOIN nba.effectifcoach USING(idEquipe) INNER JOIN nba.coach USING(idCoach) 
WHERE coach.nom = 'Mazzulla' AND coach.prenom = 'Joe';


      nom       
----------------
 Boston Celtics
(1 row)


-- 2. Retrouver le nom et prenom des joueurs ayant mis au moins une fois plus de 20 points , plus de 5 passe décisive et plus de 5 rebonds lorsque son équipe jouait à l'exterieur. --

SELECT DISTINCT joueur.nom , joueur.prenom 
FROM nba.statsmatchjoueur NATURAL JOIN nba.joueur INNER JOIN nba.effectifJoueur USING (idJoueur) INNER JOIN nba.statsmatchequipe ON idEquipe = EquipeExterieur  
WHERE points>20 AND passedecisive>5 AND rebonds>5;


    nom     |  prenom  
------------+----------
 Allen      | Grayson
 Beal       | Bradley
 Porzingis  | Kristaps
 Durant     | Kevin
 Herro      | Tyler
 Brown      | Jaylen
 White      | Derrick
 Davis      | Anthony
 Adebayo    | Bam
 Holiday    | Jrue
 Curry      | Stephen
 Reaves     | Austin
 Thompson   | Klay
 Nurkić     | Jusuf
 Tatum      | Jayson
 James      | LeBron
 Green      | Draymond
 Richardson | Josh
 Butler     | Jimmy
 Vucevic    | Nikola
(20 rows)



-- 3. Obtenir la moyenne (en arrondissant) de points, de passe decisive et de rebonds de tous les joueurs --

SELECT joueur.prenom , joueur.nom , ROUND(avg(points)) as "moyenne points" , ROUND(avg(passedecisive)) as "moyenne passe decisive" , ROUND(avg(rebonds)) as "moyenne rebonds"
FROM nba.joueur NATURAL JOIN nba.statsmatchjoueur 
GROUP BY idjoueur;


  prenom  |    nom     | moyenne points | moyenne passe decisive | moyenne rebonds 
----------+------------+----------------+------------------------+-----------------
 Jeremy   | Sochan     |             20 |                      5 |               5
 DeMar    | DeRozan    |             19 |                      5 |               6
 Bol      | Bol        |             12 |                      4 |              16
 Grayson  | Allen      |             22 |                      5 |               8
 Austin   | Reaves     |             20 |                      5 |               7
 Nikola   | Vucevic    |             20 |                      4 |               6
 Stephen  | Curry      |             29 |                      8 |               3
 Caris    | LeVert     |             19 |                      2 |               5
 Andrew   | Wiggins    |             21 |                      5 |               6
 Victor   | Wembanyama |             26 |                      6 |              10
 Derrick  | White      |             22 |                      5 |               5
 Darius   | Garland    |             20 |                      6 |               9
 Devin    | Booker     |             22 |                      4 |               5
 Draymond | Green      |             19 |                      4 |               7
 Kristaps | Porzingis  |             22 |                      6 |              10
 Chris    | Paul       |             18 |                      7 |               6
 Jrue     | Holiday    |             24 |                      6 |               8
 Kyle     | Lowry      |             18 |                      4 |               5
 Rui      | Hachimura  |             19 |                      5 |               6
 Josh     | Richardson |             20 |                      6 |               7
 LeBron   | James      |             17 |                      4 |               4
 Jusuf    | Nurkić     |             18 |                      5 |               9
 Kevin    | Durant     |             28 |                      6 |               8
 Jimmy    | Butler     |             24 |                      5 |               7
 Alex     | Caruso     |             19 |                      3 |               6
 Coby     | White      |             19 |                      4 |               6
 Jaylen   | Brown      |             27 |                      5 |               8
 Donovan  | Mitchell   |             17 |                      5 |               8
 Neemias  | Queta      |              8 |                      1 |               9
 Tyler    | Herro      |             22 |                      5 |               7
 Anthony  | Davis      |             21 |                      5 |               8
 Bradley  | Beal       |             19 |                      5 |               6
 Zach     | LaVine     |             20 |                      5 |               8
 Keldon   | Johnson    |             18 |                      4 |               5
 Tre      | Jones      |             16 |                      5 |               6
 Jarrett  | Allen      |             20 |                      4 |              10
 Bam      | Adebayo    |             19 |                      3 |              11
 Jayson   | Tatum      |             36 |                      8 |              12
 Evan     | Mobley     |             15 |                      3 |               7
 Klay     | Thompson   |             21 |                      5 |               5
 Devin    | Vassell    |             25 |                      7 |               4
 D’Angelo | Russel     |             19 |                      4 |               7
(42 rows)


-- 4. Nom de(s) équipes ayant gagné un match à domicile en comptant le nombre de victoires de l’équipe à domicile trié en fonction du nombre de victoires --

SELECT nom ,  count(*) as "Nombre de victoire à domicile à domicile"
FROM nba.equipe INNER JOIN nba.statsmatchequipe ON idEquipe = EquipeDomicile 
WHERE scoreEquipeDomicile > ScoreEquipeExterieur
GROUP BY nom 
ORDER BY "Nombre de victoire à domicile à domicile" DESC;


         nom         | Nombre de victoire à domicile à domicile 
---------------------+------------------------------------------
 Cleveland Cavaliers |                                        2
 Phoenix Suns        |                                        2
 Boston Celtics      |                                        2
 Chicago Bulls       |                                        1
(4 rows)



-- 5. Retrouver le nom et prenom des joueurs qui n'ont aucune equipe affilié --

SELECT nom , prenom 
FROM nba.joueur 
WHERE idJoueur 
NOT IN (SELECT idJoueur FROM nba.effectifjoueur);


  nom   | prenom 
--------+--------
 Thomas | Isaiah
 Wall   | John
 Parker | Tony
(3 rows)


