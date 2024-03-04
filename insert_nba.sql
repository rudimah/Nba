------------------------------------------------------------
--  Table : Stade
------------------------------------------------------------

INSERT INTO nba.stade (idStade, nom, adresse, ville, capacite) VALUES

(1, 'TD Garden', '123 Main Street', 'Boston', 19580 ),
(2, 'Crypto.com Arena', '456 Oak Avenue', 'Los Angeles', 18997 ),
(3, 'United Center', '789 Pine Lane', 'Chicago', 23500 ),
(4, 'Rocket Mortgage FieldHouse', '101 Elm Boulevard', 'Cleveland', 19432 ),
(5, 'AT&T Center' , '1 Frost Bank Center Dr' , 'San Antonio' , 19000 ),
(6, 'Chase Center' , '1 Warriors Way' , 'San Francisco' , 18064 ),
(7, 'Kaseya Center' , '601 Biscayne boulevard' , 'Miami' , 19600),
(8, 'Footprint Center', '201 E Jefferson Street', 'Phoenix' , 18422);

------------------------------------------------------------
-- Table : Equipe
------------------------------------------------------------

INSERT INTO nba.equipe (idEquipe, nom, dateCreation, stade) VALUES

(1, 'Boston Celtics', '1946-06-06', 1),
(2, 'Los Angeles Lakers', '1947-08-03', 2),
(3, 'Chicago Bulls', '1966-01-26', 3),
(4, 'Cleveland Cavaliers', '1970-06-04', 4),
(5, 'San Antonio Spurs', '1967-01-01' , 5),
(6, 'Golden State Warriors', '1946-05-01' , 6),
(7, 'Miami Heat' , '1988-11-30' , 7),
(8, 'Phoenix Suns' , '1968-08-24' , 8);



------------------------------------------------------------
-- Table : Joueur
------------------------------------------------------------

INSERT INTO nba.joueur (idJoueur, nom, prenom, dateNaissance, nationnalite, poste, numeroMaillot, taille) VALUES

(1, 'Tatum', 'Jayson', '1998-03-03', 'Amérique', 'Ailier fort', 0, 203),
(2, 'Brown', 'Jaylen', '1997-10-24', 'Amérique', 'Arrière', 7, 198),
(3, 'White', 'Derrick', '1994-08-02', 'Amérique', 'Meneur de jeu', 4, 193),
(4, 'Holiday', 'Jrue', '1990-06-12', 'Amérique', 'Arrière', 11, 185),
(5, 'Porzingis', 'Kristaps', '1995-08-02', 'Lituanie', 'Pivot', 6, 221),
(6, 'James', 'LeBron', '1984-12-30', 'Amérique', 'Ailier', 23, 206),
(7, 'Davis', 'Anthony', '1993-03-11', 'Amérique', 'Ailier fort', 3, 208),
(8, 'Russel', 'D’Angelo', '1996-02-23', 'Amérique', 'Meneur de jeu', 1, 193),
(9, 'Reaves', 'Austin', '1997-05-29', 'Amérique', 'Arrière', 15, 196),

(10, 'Hachimura', 'Rui', '1998-02-08', 'Japon', 'Ailier', 28, 208),
(11, 'DeRozan', 'DeMar', '1989-08-07', 'Amérique', 'Ailier fort', 11, 201),
(12, 'LaVine', 'Zach', '1995-03-10', 'Amérique', 'Arrière', 8, 196),
(13, 'White', 'Coby', '2000-02-16', 'Amérique', 'Meneur de jeu', 0, 196),
(14, 'Caruso', 'Alex', '1994-02-28', 'Amérique', 'Meneur de jeu', 6, 196),
(15, 'Vucevic', 'Nikola', '1990-10-24', 'Monténégro', 'Pivot', 9, 211),
(16, 'Mitchell', 'Donovan', '1996-09-07', 'Amérique', 'Arrière', 45, 185),
(17, 'Garland', 'Darius', '2000-01-26', 'Amérique', 'Meneur de jeu', 10, 188),
(18, 'Mobley', 'Evan', '2001-06-18', 'Amérique', 'Ailier fort', 4, 213),
(19, 'LeVert', 'Caris', '1994-08-25', 'Amérique', 'Ailier', 3, 198),
(20, 'Allen', 'Jarrett', '1998-03-21', 'Amérique', 'Pivot', 31, 211),

(21, 'Wembanyama', 'Victor', '2004-01-04', 'France', 'Pivot', 1, 224),
(22, 'Sochan', 'Jeremy', '2003-05-20', 'Amérique', 'Ailier fort', 10, 203),
(23, 'Vassell', 'Devin', '2000-08-23', 'Amérique', 'Arrière', 24, 196),
(24, 'Johnson', 'Keldon', '1999-10-11', 'Amérique', 'Ailier', 3, 196),
(25, 'Jones', 'Tre', '2000-01-08', 'Amérique', 'Meneur de jeu', 33, 185),
(26, 'Curry', 'Stephen', '1988-03-14', 'Amérique', 'Meneur de jeu', 30, 191),
(27, 'Thompson', 'Klay', '1990-02-08', 'Amérique', 'Arrière', 11, 201),
(28, 'Green', 'Draymond', '1990-03-04', 'Amérique', 'Ailier fort', 23, 198),
(29, 'Paul', 'Chris', '1985-05-06', 'Amérique', 'Meneur de jeu', 3, 183),
(30, 'Wiggins', 'Andrew', '1995-02-23', 'Canada', 'Ailier', 22, 203),

(31 , 'Butler', 'Jimmy', '1989-09-14', 'Amérique', 'Ailier', 22, 203),
(32 , 'Herro', 'Tyler', '2000-01-20', 'Amérique', 'Arrière', 14, 193),
(33 , 'Adebayo', 'Bam', '1997-07-18', 'Amérique', 'Pivot', 13, 208),
(34 , 'Lowry', 'Kyle', '1986-03-25', 'Amérique', 'Meneur de jeu',7, 183),
(35 , 'Richardson', 'Josh', '1993-09-15', 'Amérique', 'Arrière', 0, 196),
(36 , 'Durant', 'Kevin', '1988-09-29' , 'Amérique', 'Ailier fort' , 7 , 211),
(37 , 'Booker', 'Devin' , '1996-10-30' , 'Amérique' , 'Meneur de jeu' , 1 , 198),
(38 , 'Beal' , 'Bradley' , '1993-06-28' , 'Amérique' , 'Arrière' , 3 , 193),
(39 , 'Nurkić' , 'Jusuf' , '1994-08-23' , 'Bosnie-Herzégovine' , 'Pivot' , 20 , 213),
(40 , 'Allen' , 'Grayson' , '1995-10-08', 'Amérique' , 'Ailier' , 8 , 199),

(41 , 'Queta'  , 'Neemias' , '1999-07-13', 'Portugal' , 'Pivot' , 8 , 213),
(42 , 'Bol' , 'Bol' , '1999-11-16' , 'Soudan' , 'Pivot' , 11 , 221),
(43 , 'Thomas' , 'Isaiah' , '1989-02-07' , 'Amérique' , 'Meneur de jeu', 4 , 175),
(44 , 'Wall' , 'John' , '1990-09-06' , 'Amérique' ,'Meneur de jeu' , 11 , 191),
(45 , 'Parker' , 'Tony' , '1982-05-17' , 'France' , 'Meneur de jeu' , 9 , 188);


------------------------------------------------------------
-- Table : Coach
------------------------------------------------------------

INSERT INTO nba.coach (IdCoach, nom, prenom, dateNaissance, numerolicence) VALUES

(1, 'Mazzulla', 'Joe', '1988-6-30', 1500),
(2, 'Darvin', 'Ham', '1973-7-23', 800),
(3, 'Donovan' , 'Billy' ,  '1965-5-30' , 950),
(4, 'Bickerstaff', 'John-Blaire', '1979-3-10', 500),
(5, 'Popovich' , 'Gregg' , '1949-01-28' , 279),
(6, 'Kerr' , 'Steve' , '1965-09-27', 345 ),
(7, 'Spoelstra' , 'Erik' , '1970-11-01' , 416 ),
(8, 'Vogel' , 'Frank' , '1973-06-21', 649),
(9, 'Stevens' , 'Brad' , '1976-10-22' , 2078),
(10, 'Atkinson' , 'Kenny' , '1967-06-02' , 1967);

------------------------------------------------------------
-- Table: EffectifJoueur
------------------------------------------------------------

INSERT INTO nba.EffectifJoueur (idEquipe, idJoueur) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 41),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(4, 16),
(4, 17),
(4, 18),
(4, 19),
(4, 20),
(5, 21),
(5, 22),
(5, 23),
(5, 24),
(5, 25),
(6, 26),
(6, 27),
(6, 28),
(6, 29),
(6, 30),
(7, 31),
(7, 32),
(7, 33),
(7, 34),
(7, 35),
(8, 36),
(8, 37),
(8, 38),
(8, 39),
(8, 40),
(8, 42);

------------------------------------------------------------
-- Table: EffectifCoach
------------------------------------------------------------

INSERT INTO nba.EffectifCoach (idEquipe, idCoach) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

------------------------------------------------------------
-- Table : Match
------------------------------------------------------------

INSERT INTO nba.match (date) VALUES

('2023-10-10'),
('2023-10-12'),
('2023-10-13'),
('2023-10-14'),
('2023-10-15'),
('2023-10-28'),
('2023-10-30'),
('2023-11-09'),
('2023-11-10'),
('2023-12-18'),
('2023-12-25');


------------------------------------------------------------
-- Table : StatsMatchEquipe
------------------------------------------------------------

INSERT INTO nba.StatsMatchEquipe (date, equipeDomicile, equipeExterieur, scoreEquipeDomicile, scoreEquipeExterieur) VALUES

('2023-10-10', 1, 2, 140, 100),
('2023-10-12', 4, 3, 123, 122),
('2023-10-13', 8 , 7 , 116 , 110),
('2023-10-14', 4, 2, 92, 95),
('2023-10-14' , 5, 6 , 99 , 105),
('2023-10-15', 3, 1, 98, 126),
('2023-10-28', 7, 8, 120, 148),
('2023-10-30', 3, 2, 95, 90),
('2023-11-09', 8 , 2 , 112, 110),
('2023-11-10', 1, 7 , 150 , 97),
('2023-12-18', 8 , 1 , 100 , 135),
('2023-12-25' , 2 , 1 , 135 , 138),
('2023-12-25' , 4 , 6 , 115 , 108),
('2023-12-25' , 5 , 8 , 120 , 122),
('2023-12-25' , 7 , 3 , 105 , 113);

------------------------------------------------------------
-- Table : StatsMatchJoueur
------------------------------------------------------------

INSERT INTO nba.StatsMatchJoueur (date, idJoueur, points , PasseDecisive, Rebonds , BallonPerdu , FauteCommise) VALUES

('2023-10-10', 1, 40, 7, 13, 1, 3),
('2023-10-10', 2, 30, 3, 7, 3, 2),
('2023-10-10', 3, 25, 5, 5, 1, 2),
('2023-10-10', 4, 25, 4, 7, 0, 1),
('2023-10-10', 5, 20, 2, 10, 1, 4),
('2023-10-10', 41, 10, 0, 10, 1, 4),
('2023-10-10', 6, 10, 0, 0, 5, 4),
('2023-10-10', 7, 30, 7, 9, 0, 0),
('2023-10-10', 8, 20, 4, 7, 3, 2),
('2023-10-10', 9, 20, 5, 8, 2, 1),
('2023-10-10', 10, 20, 6, 3, 1, 2),

('2023-10-12', 21, 29, 7, 15, 2, 3),
('2023-10-12', 22, 20, 6, 4, 3, 2),
('2023-10-12', 23, 26, 8, 2, 1, 1),
('2023-10-12', 24, 10, 1, 5, 3, 0),
('2023-10-12', 25, 14, 3, 6, 2, 4),
('2023-10-12', 26, 35, 8, 2, 1, 1),
('2023-10-12', 27, 20, 4, 3, 0, 3),
('2023-10-12', 28, 15, 1, 6, 2, 4),
('2023-10-12', 29, 15, 12, 1, 0, 2),
('2023-10-12', 30, 20, 5, 5, 3, 1),

('2023-10-13', 36, 40, 12, 8, 2, 3),
('2023-10-13', 37, 20, 5, 1 , 3, 4),
('2023-10-13', 38, 15 , 6 , 0 , 0 , 2),
('2023-10-13', 39, 10 , 3 , 15 , 1 , 4),
('2023-10-13', 40 , 10 , 4 , 4 , 5 , 3),
('2023-10-13', 31 , 30 , 5 , 8 , 1 , 2),
('2023-10-13', 32 , 21 , 2 , 3 , 4 , 1),
('2023-10-13', 33 , 18 , 0 , 20 , 1 , 1),
('2023-10-13', 34 , 15 , 5 , 1 , 4 , 4),
('2023-10-13', 35 , 10 , 6 , 4 , 3 , 2),

('2023-10-14', 16, 17, 5, 8, 2, 3),
('2023-10-14', 17, 20, 6, 9, 1, 2),
('2023-10-14', 18, 15, 3, 7, 0, 1),
('2023-10-14', 19, 19, 2, 5, 2, 3),
('2023-10-14', 20, 20, 4, 10, 1, 4),
('2023-10-14', 6, 19, 7, 6, 3, 2),
('2023-10-14', 7, 18, 5, 8, 1, 1),
('2023-10-14', 8, 18, 4, 7, 2, 2),
('2023-10-14', 9, 21, 6, 9, 1, 3),
('2023-10-14', 10, 19, 3, 4, 0, 1),

('2023-10-14' , 21, 30, 8 , 10 , 3 , 2),
('2023-10-14' , 22, 15, 4 , 4 , 2 , 2 ),
('2023-10-14' , 23 , 24 , 6 , 4 , 1 , 3),
('2023-10-14' , 24 ,  24 , 8 , 2 , 0 , 0),
('2023-10-14' , 25 , 13 , 6 , 6 , 4 , 3),
('2023-10-14' , 26 , 31 , 10 , 2 , 2 , 1 ),
('2023-10-14' , 27 , 20 , 4 , 3 , 3 , 2),
('2023-10-14' , 28 , 18 , 2 , 7 , 2 , 4),
('2023-10-14' , 29 , 20 , 3 , 8 , 0 , 2),
('2023-10-14' , 30 , 22 , 5 , 5 , 1 , 0),


('2023-10-15', 11, 20, 6, 7, 2, 2),
('2023-10-15', 12, 20, 5, 8, 1, 3),
('2023-10-15', 13, 20, 4, 5, 2, 1),
('2023-10-15', 14, 18, 3, 6, 1, 2),
('2023-10-15', 15, 15, 2, 3, 0, 1),
('2023-10-15', 1, 35, 8, 12, 3, 2),
('2023-10-15', 2, 31, 7, 9, 2, 1),
('2023-10-15', 3, 18, 5, 4, 1, 2),
('2023-10-15', 4, 20, 6, 7, 1, 3),
('2023-10-15', 5, 22, 7, 11, 2, 4),
('2023-10-15', 41, 6, 1, 8, 2, 4),

('2023-10-28', 36, 25, 5, 8, 2, 3),
('2023-10-28', 37, 18, 3, 6, 1, 2),
('2023-10-28', 38, 20, 4, 7, 2, 2),
('2023-10-28', 39, 22, 6, 9, 1, 3),
('2023-10-28', 40, 24, 7, 11, 2, 4),
('2023-10-28', 31, 15, 2, 3, 0, 1),
('2023-10-28', 32, 21, 6, 7, 2, 2),
('2023-10-28', 33, 14, 1, 6, 3, 1),
('2023-10-28', 34, 19, 4, 8, 1, 2),
('2023-10-28', 35, 20, 5, 5, 2, 1),

('2023-10-30', 11, 20, 5, 6, 3, 2),
('2023-10-30', 12, 19, 4, 8, 1, 1),
('2023-10-30', 13, 15, 2, 4, 2, 2),
('2023-10-30', 14, 18, 3, 6, 1, 2),
('2023-10-30', 15, 18, 4, 5, 0, 1),
('2023-10-30', 6, 21, 6, 7, 2, 2),
('2023-10-30', 7, 15, 3, 5, 1, 1),
('2023-10-30', 8, 19, 5, 8, 3, 2),
('2023-10-30', 9, 17, 4, 6, 2, 1),
('2023-10-30', 10, 18, 6, 9, 1, 3),

('2023-11-09', 36, 25, 5, 8, 2, 3),
('2023-11-09', 37, 30, 4, 6, 1, 2),
('2023-11-09', 38, 22, 7, 10, 3, 1),
('2023-11-09', 39, 18, 3, 5, 2, 2),
('2023-11-09', 40, 28, 6, 9, 1, 3),
('2023-11-09', 6, 15, 2, 3, 2, 1),
('2023-11-09', 7, 20, 5, 8, 0, 2),
('2023-11-09', 8, 19, 4, 6, 3, 1),
('2023-11-09', 9, 23, 6, 7, 2, 3),
('2023-11-09', 10, 18, 3, 4, 1, 1),

('2023-11-10', 1, 48, 7, 11, 2, 2),
('2023-11-10', 2, 22, 5, 8, 1, 3),
('2023-11-10', 3, 25, 6, 7, 0, 2),
('2023-11-10', 4, 30, 8, 12, 3, 1),
('2023-11-10', 5, 18, 4, 5, 2, 4),
('2023-11-10', 31, 32, 9, 10, 1, 3),
('2023-11-10', 32, 28, 7, 9, 2, 2),
('2023-11-10', 33, 20, 4, 8, 1, 2),
('2023-11-10', 34, 15, 3, 6, 0, 1),
('2023-11-10', 35, 26, 5, 7, 2, 3),
('2023-12-18', 36, 25, 5, 8, 2, 3),
('2023-12-18', 37, 22, 4, 6, 1, 2),
('2023-12-18', 38, 18, 3, 7, 2, 1),
('2023-12-18', 39, 20, 6, 9, 1, 3),
('2023-12-18', 40, 23, 5, 8, 2, 2),
('2023-12-18', 42, 10, 2, 16, 2, 2),
('2023-12-18', 1, 30, 10, 12, 3, 2),
('2023-12-18', 2, 28, 7, 9, 2, 1),
('2023-12-18', 3, 18, 5, 4, 1, 2),
('2023-12-18', 4, 22, 6, 7, 1, 3),
('2023-12-18', 5, 25, 7, 11, 2, 4),

('2023-12-25', 6, 19, 4, 5, 2, 2),
('2023-12-25', 7, 20, 6, 8, 1, 1),
('2023-12-25', 8, 18, 5, 7, 3, 2),
('2023-12-25', 9, 17, 3, 6, 2, 1),
('2023-12-25', 10, 18, 6, 9, 1, 3),
('2023-12-25', 1, 28, 7, 10, 2, 2),
('2023-12-25', 2, 26, 5, 8, 3, 1),
('2023-12-25', 3, 24, 6, 7, 1, 2),
('2023-12-25', 4, 21, 4, 5, 0, 1),
('2023-12-25', 5, 23, 8, 11, 3, 2),


('2023-12-25', 16, 17, 5, 8, 2, 3),
('2023-12-25', 17, 20, 6, 9, 1, 2),
('2023-12-25', 18, 15, 3, 7, 0, 1),
('2023-12-25', 19, 19, 2, 5, 2, 3),
('2023-12-25', 20, 20, 4, 10, 1, 4),
('2023-12-25', 26, 22, 7, 6, 3, 2),
('2023-12-25', 27, 23, 6, 8, 2, 1),
('2023-12-25', 28, 25, 8, 7, 1, 2),
('2023-12-25', 29, 19, 5, 9, 2, 3),
('2023-12-25', 30, 20, 6, 8, 1, 2),

('2023-12-25', 21, 18, 3, 4, 2, 2),
('2023-12-25', 22, 24, 5, 7, 1, 1),
('2023-12-25', 23, 26, 7, 6, 0, 2),
('2023-12-25', 24, 19, 4, 8, 1, 3),
('2023-12-25', 25, 21, 6, 7, 2, 2),
('2023-12-25', 36, 25, 5, 8, 2, 3),
('2023-12-25', 37, 22, 4, 6, 1, 2),
('2023-12-25', 38, 18, 3, 7, 2, 1),
('2023-12-25', 39, 20, 6, 9, 1, 3),
('2023-12-25', 40, 23, 5, 8, 2, 2),
('2023-12-25', 42, 13, 5, 15, 1, 2),

('2023-12-25', 31, 20, 4, 6, 3, 2),
('2023-12-25', 32, 18, 5, 7, 1, 1),
('2023-12-25', 33, 22, 6, 8, 2, 2),
('2023-12-25', 34, 21, 4, 5, 0, 1),
('2023-12-25', 35, 24, 7, 10, 3, 2),
('2023-12-25', 11, 18, 3, 4, 1, 2),
('2023-12-25', 12, 20, 6, 7, 2, 1),
('2023-12-25', 13, 23, 5, 8, 3, 2),
('2023-12-25', 14, 22, 4, 6, 2, 1),
('2023-12-25', 15, 26, 7, 9, 1, 3);

