-- COISSARD Kévin - ASPE '17/11/2015'
-- ==== LE JARDIN DE CHARLOTTE === --- 


CREATE TABLE VILLE (
codePostal number, ville VARCHAR2(20), tarifLivraison number,
constraint pk_VILLE primary key (codePostal)
);


CREATE TABLE CLIENTS (
numClient number, nomClient VARCHAR2(40), adrClient VARCHAR2(60), 
codePostalClient number, villeClient VARCHAR2(20), telClient number,
constraint pk_CLIENTS_numClient primary key (numClient)
);

CREATE TABLE FLEURS (
nomFleur varchar(20), ville VARCHAR2(20), tarifFLeur number, 
constraint pk_FLEURS_nomFleur primary key (nomFleur)
);

CREATE TABLE COMMANDE (
numCommande number, dateCommande DATE, nomLivraison VARCHAR2(40),
adrLivraison VARCHAR2(60), dateLivraisonPrevue DATE, dateAcceptation DATE not null, 
dateLivraisonEffective DATE, datePaiement DATE, numClient number, 
codePostal number,
constraint pk_COMMANDE_numCommande primary key (numCommande),
constraint fk_COMMANDE_numClient foreign key (numClient) references CLIENTS(numClient),
constraint fk_COMMANDE_codePostal foreign key (codePostal) references VILLE(codePostal),
constraint ck_COMMANDE_datediff check (dateCommande < dateLivraisonPrevue)
);

CREATE TABLE BOUQUET (
numBouquet number, qtteBouquets number, numCommande number,
constraint pk_BOUQTET_NumBouquet primary key (numBouquet),
constraint fk_BOUQUET_numCommande foreign key (numCommande) references COMMANDE(numCommande)
);

CREATE TABLE COMPOSITION (
numBouquet number, nomFleur VARCHAR2(20), nbFleurs number,
constraint pk_COMPOSITION_doublecle primary key (numBouquet, nomFleur),
constraint fk_COMPOSITION_numBouquet foreign key (numBouquet) references BOUQUET(numBouquet),
constraint fk_COMPOSITION_nomFleur foreign key (nomFleur) references FLEURS(nomFleurs)
);

CREATE TABLE  ACHAT (
nomFleur VARCHAR2(20), dateAchatFleur DATE, prixAchat number,
constraint pk_ACHAT_doublecle primary key (nomFleur, dateAchatFleur),
constraint fk_ACHAT_nomFleur foreign key (nomFleur) references FLEURS(nomFleur)
);

CREATE TABLE FACTURE (
numFacture number, dateFacture DATE, numCommande number,
constraint pk_FACTURE_numFacture primary key (numFacture), 
constraint fk_FACTURE_numCommande foreign key(numCommande) references COMMANDE(numCommande)
);

commit;

insert  into VILLE values (&codePostal, &ville, &tarifLivraison);
select* from VILLE;

commit; 