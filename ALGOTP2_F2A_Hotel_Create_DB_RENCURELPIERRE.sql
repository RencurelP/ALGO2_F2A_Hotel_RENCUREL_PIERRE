create table T_Chambre ( CHB_ID integer (12) not null,

                      CHB_NUMERO integer (12) not null,

                      CHB_ETAGE integer (10) not null,

                      CHB_BAIN smallint (1) not null,

                      CHB_DOUCHE smallint (1) not null,

                      CHB_WC smallint (1) not null,

                      CHB_COUCHAGE smallint (1) not null,

                      CHB_POSTE_TEL smallint (1) not null,

                      CLI_ID integer (10),


             primary key (CHB_ID));

create table T_Cient (CLI_ID integer (10) not null,
					CLI_NOM char (10) not null,
					CLI_PRENOM char (10) not null,
					CLI_ENSEIGNE char (10) not null,
					TEL_ID integer (10) not null,
					ADR_ID integer (10) not null,
					EML_ID integer (10) not null,
					FAC_ID integer (10) not null,
					TIT_CODE integer (10) not null,

			primary key (CLI_ID)

			foreign key TEL_ID references T_Telephone

			foreign key ADR_ID references T_Adresse

			foreign key EML_ID references T_EMAIL

			foreign key FAC_ID references T_Facture

			foreign key TIT_CODE references T_Titre);


create table T_Planning (PLN_JOUR date not null primary key);

create table T_Titre (TIT_CODE integer (10) not null,
					TIT_LIBELLE char (5) not null,

					primary key (TIT_CODE));

create table T_Adresse (ADR_ID integer (10) not null,
						ADR_LIGNE1 varchar (10) not null,
						ADR_LIGNE2 varchar (10) not null,
						ADR_LIGNE3 varchar (10) not null,
						ADR_LIGNE4 varchar (10) not null,
						ADR_CP char (15) not null,
						ADR_VILLE char (15) not null,

						primary key (ADR_ID));

create table T_EMAIL (EML_ID integer (10) not null,
					EML_ADRESSE varchar (30) not null,
					EML_LOCALISATION varchar (25) not null,

					primary key (EML_ID));

