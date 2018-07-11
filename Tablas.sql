CREATE TABLE grupo
( 
cod_grupo serial primary key not null constraint grupo_key_primaria,
orientacion_grupo int references orientacion (cod_orientacion) constraint grupo_fk_orientacion_grupo not null,
baja boolean NOT NULL constraint grupo_baja
)

CREATE TABLE alumno
( 
num_alumno serial not null,
grupo_alumno int references grupo (cod_grupo) constraint alumno_fk_grupo not null,
ci_alumno smallint references persona (ci) constraint ci_alumno_fk_persona not null,
baja boolean NOT NULL constraint alumno_baja
);

CREATE TABLE nota
( 
num_funcionario serial not null,
ci_alumno smallint references persona (ci) constraint nota_ci_alumno_fk_persona not null,
cod_materia integer not null,
primary key fechah_hora DATETIME YEAR TO MINUTE NOT NULL CONSTRAINT Historial_fecha,

baja boolean NOT NULL constraint alumno_baja
);

CREATE TABLE nota
( 
num_funcionario serial not null,
ci_alumno smallint references persona (ci) constraint nota_ci_alumno_fk_persona not null,
cod_materia int not null,
fechah_hora_nota  datetime year to minute primary key  NOT NULL CONSTRAINT Historial_fecha,
nota int check (nota > 0 and nota < 13),
tipo varchar(30) check (tipo in ('Oral','Escrito','Proyecto')) not null , 
baja boolean NOT NULL constraint nota_baja
);
pepe 

