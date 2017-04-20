create table PUF as select * from benslimane.PUF;
create table P as select * from benslimane.P;
create table U as select * from benslimane.U;
create table F as select * from benslimane.F;
commit;

select * from U; ** QUESTION 1 **
select * from U where ville= 'londres';  ** QUESTION 2 **
select NF from PUF where NU= 1 and NP= 1;  ** QUESTION 3 **
select NOMP, COULEUR from PUF, P where NF=1; **QUESTION 4 **
select NF from PUF, P where NU=1 and COULEUR='rouge' and PUF.NP = P.NP;  ** QUESTION 5 **

select NF from PUF,U,P where ( U.NU=PUF.NU and PUF.NP=P.NP and couleur='rouge' 
                                            and ville in ('londres', 'paris')); ** QUESTION 6 **
                                            
select distinct NP from PUF, U, F where PUF.NU=U.NU and PUF.NF=F.NF and U.ville=F.ville;


select NF from PUF where NU=1
intersect
select NF from PUF where NU=2; ** QUESTION 10 **








