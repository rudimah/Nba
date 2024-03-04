------------------------------------------------------------
-- 	   Script Postgre
------------------------------------------------------------
DROP SCHEMA IF EXISTS nba CASCADE;  
CREATE SCHEMA nba;

-----------------------------------------------------------
-- Table: Stade
------------------------------------------------------------
CREATE TABLE nba.Stade(

	idStade       INT	PRIMARY KEY ,
	nom 	   VARCHAR  NOT NULL ,
	adresse    VARCHAR  NOT NULL ,
	ville  	VARCHAR  NOT NULL  ,
	capacite   INT  NOT NULL
    
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: Equipe
------------------------------------------------------------
CREATE TABLE nba.Equipe(

    idEquipe 	  INT  ,
    nom  		  VARCHAR  NOT NULL ,
    dateCreation   DATE  NOT NULL ,
    Stade    	  INT	NOT NULL ,
    
    CONSTRAINT Equipe_PK PRIMARY KEY (idEquipe)
    ,CONSTRAINT Equipe_Stade_FK FOREIGN KEY (Stade) REFERENCES nba.stade(idStade)
    
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: Joueur
------------------------------------------------------------
CREATE TABLE nba.Joueur(

	idJoueur 	INT  PRIMARY KEY ,
	nom   VARCHAR NOT NULL ,
	prenom 		 VARCHAR  NOT NULL ,
	dateNaissance   DATE  NOT NULL ,
	Nationnalite    VARCHAR NOT NULL ,
	Poste  		 VARCHAR NOT NULL ,
	numeroMaillot   	 INT  NOT NULL ,
	taille   	 INT NOT NULL
    
)WITHOUT OIDS;







------------------------------------------------------------
-- Table: Coach
------------------------------------------------------------
CREATE TABLE nba.Coach(

	idCoach      INT  PRIMARY KEY ,
	nom 	   VARCHAR NOT NULL ,
	prenom 		 VARCHAR  NOT NULL ,
	dateNaissance   DATE  NOT NULL ,
	numeroLicence    	 INT  NOT NULL

)WITHOUT OIDS;


------------------------------------------------------------
-- Table: EffectifJoueur
------------------------------------------------------------
CREATE TABLE nba.EffectifJoueur(

    idEquipe    INT ,
    idJoueur    INT ,
    
    CONSTRAINT EffectifJoueur_PK PRIMARY KEY (idEquipe,idJoueur),
    CONSTRAINT EffectifJoueur_Equipe_FK FOREIGN KEY (idEquipe) REFERENCES nba.equipe(idEquipe),
    CONSTRAINT EffectifJoueur_Joueur_FK FOREIGN KEY (idJoueur) REFERENCES nba.joueur(idJoueur)
    
);


------------------------------------------------------------
-- Table: EffectifCoach
------------------------------------------------------------
CREATE TABLE nba.EffectifCoach(

    idEquipe    INT ,
    idCoach    INT ,
    
    CONSTRAINT EffectifCoach_PK PRIMARY KEY (idEquipe,idCoach),
    CONSTRAINT EffectifJoueur_Equipe_FK FOREIGN KEY (idEquipe) REFERENCES nba.equipe(idEquipe),
    CONSTRAINT EffectifCoach_Coach_FK FOREIGN KEY (idCoach) REFERENCES nba.coach(idCoach)
    
);


------------------------------------------------------------
-- Table: Match
------------------------------------------------------------
CREATE TABLE nba.Match(

	Date   DATE  PRIMARY KEY  

)WITHOUT OIDS;

------------------------------------------------------------
-- Table: StatsMatchEquipe
------------------------------------------------------------
CREATE TABLE nba.StatsMatchEquipe(

    date     			  DATE   ,
    EquipeDomicile 	  INT   ,
    EquipeExterieur      INT  ,
    ScoreEquipeDomicile	INT  NOT NULL ,
    ScoreEquipeExterieur   INT  NOT NULL  ,
    
    CONSTRAINT StatsMatchEquipe_PK PRIMARY KEY (Date,EquipeDomicile, EquipeExterieur)
    ,CONSTRAINT StatsMatchEquipe_Equipe0_FK FOREIGN KEY (EquipeDomicile) REFERENCES nba.equipe(idEquipe)
    ,CONSTRAINT StatsMatchEquipe_Match0_FK FOREIGN KEY (Date) REFERENCES nba.match(Date)
    ,CONSTRAINT StatsMatchEquipe_Equipe1_FK FOREIGN KEY (EquipeExterieur) REFERENCES nba.equipe(idEquipe)
    
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: StatsMatchJoueur
------------------------------------------------------------

CREATE TABLE nba.StatsMatchJoueur(

    Date   	DATE   ,
    idJoueur 	INT   ,
    Points   INT  NOT NULL  ,
    PasseDecisive INT NOT NULL ,
    Rebonds INT NOT NULL ,
    BallonPerdu INT NOT NULL,
    FauteCommise INT NOT NULL,

    CONSTRAINT StatsMatchJoueur_PK PRIMARY KEY (Date,idJoueur)
    ,CONSTRAINT StatsMatchJoueur_Match_FK FOREIGN KEY (Date) REFERENCES nba.match(Date)
    ,CONSTRAINT StatsMatchJoueur_Joueur0_FK FOREIGN KEY (idJoueur) REFERENCES nba.joueur(idJoueur)

)WITHOUT OIDS;

