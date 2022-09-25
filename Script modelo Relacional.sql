CREATE TABLE CARGOS(
IDCargo                  int PRIMARY KEY not null,
NombreCargo              varchar(30) not null,
Nombre_Area_de_Trabajo   varchar(30) not null,
Tipo_Cargo				 int FOREIGN KEY (Tipo_Cargo)  REFERENCES CARGOS(Tipo_Cargo),
)
;
	
CREATE TABLE TIPO_CARGO(
Tipo_cargo				 id PRIMARY KEY not null,
Nombre_cargo			 varchar(30) not null,
)
;

CREATE table ENTIDADES(
NIT    				        varchar(30) PRIMARY KEY, 
NombreEntidades     	    varchar(30) not null,
Categoria                   varchar(30) not null,
)
;
	
CREATE table EMPLEADO(
IDempleado               int PRIMARY KEY,
Nombre_completo   		 varchar(30) not null,
Tipo_documento     		 varchar(30) not null,
N_documento        		 varchar(30) not null, 
Salario            		 varchar(30) not null,
Fecha_ingreso      		 datetime not null,
Fecha_retiro       		 datetime,
Estado             	     boolean True ,
IDCargo                  int FOREIGN KEY (IDCargo)  REFERENCES CARGOS(IDCargo),
NIT						 varchar(30) FOREIGN KEY (Nit)  REFERENCES ENTIDADES(NIT),
)
;

CREATE TABLE AUSENTISMOS(
IDausentimos                 int PRIMARY KEY,
NombreAusentismos            varchar(30),
F.inicialAusentismos         datetime,
F.finalAusentimos            datetime,
Total_dias                   int,  
)
;	
	
CREATE TABLE INCAPACIDAD(
IDincapacidad          int PRIMARY KEY,
Valorincapacidad       varchar(30),
Valorasumidoempresa    varchar(30),
ValorasumidoENT        varchar(30),
Salarioxdia            varchar(30) not null,
Clasificación          varchar(30) not null,
IDausentismos           int FOREIGN KEY(IDausentismos) REFERENCES AUSENTISMOS (IDausentismos),
)
;

CREATE TABLE             TIPO_INCAPACIDAD(
TipoIncpacid             int PRIMARY KEY,	
Nombre_incapacidad       varchar(30), 
IDincapacidad          int FOREIGN KEY(IDincapacidad) REFERENCES INCAPACIDAD (IDincapacidad),
)
;
	
CREATE TABLE SST_INCAP(
	
IDSST                   int PRIMARY KEY,
Diagnostico             varchar(30) not null,
Clasificación           varchar(30) not null,
Origen                  varchar(30) not null,
Segmento_muscular       varchar(30) not null,
Tiponcapacidad          int FOREIGN KEY (TIPOincapacidad) REFERENCES TIPOINCAPACIDAD(Tipoincapacidad),
)
;