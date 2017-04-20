
create table cours as select * from benslimane.cours;
create table personne as select * from benslimane.persone;
create table etudiant as select * from benslimane.etudiant;
create table enseignant as select * from benslimane.enseignant;
create table obtenu as select * from benslimane.obtenu;
create table inscrit as select * from benslimane.inscrit;
create table cycle as select * from benslimane.cycle;

 select * from cours;
 Select nomC, cycle, Nens from cours; 
 select nom, adr from personne; 
 select NE, nomC, note*1.2, annee from Obtenu; 
 select NE as numetudiant, nomC, note*2 as noteFinale, annee from Obtenu; 
 select * from personne order by adr asc; 
 Select * from personne order by adr asc, nom desc; 
 select DISTINCT NE from obtenu; 
 Select * from cours where cycle = 2 and nomC='BD'; 
 select * from cours where cycle = 1 and nomC like 'a%'; 
 Select * from cours where cycle = 1 and nomC not like 'a%'; 
 select * from personne, enseignant; 
 select * from personne, enseignant where personne.NP = enseignant.NP; 
 Select Personne.NP, nom from personne, enseignant where personne.NP = enseignant.NP; 
 Select Personne.NP, nom from personne, enseignant where personne.NP = enseignant.NP and enseignant.NP=3333; 
 Select distinct R1.NE from obtenu R1, obtenu R2 where R1.NE = R2.NE and R1.nomc != R2.nomC; 
 select NP from personne intersect select NP from etudiant; 