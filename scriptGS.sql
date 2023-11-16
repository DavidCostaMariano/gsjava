drop table java_paciente;
drop table java_medico;
drop table java_especialidade;
drop sequence id_paciente_seq;
drop sequence id_medico_seq;
drop sequence id_especialidade_seq;
commit;

create table java_paciente(
    id NUMBER NOT NULL,
    nome varchar2(50) NOT NULL,
    cpf VARCHAR2(11) NOT NULL,
    email VARCHAR2(50) NOT NULL,
    username VARCHAR2(20) NOT NULL,
    senha VARCHAR2(20) NOT NULL
);
alter table java_paciente 
add constraint nome_un unique(nome);
create sequence id_paciente_seq increment by 1 cache 20;


create table java_especialidade(
    id NUMBER NOT NULL,
    especialidade varchar2(50) NOT NULL
);

alter table java_especialidade 
add constraint especialidade_un primary key(id);

create sequence id_especialidade_seq increment by 1 cache 20;


create table java_medico(
    id NUMBER NOT NULL,
    nome varchar2(50) NOT NULL,
    crm VARCHAR2(11) NOT NULL,
    id_especialidade number NOT NULL
);


ALTER TABLE java_medico ADD CONSTRAINT medico_especialidade_fk FOREIGN KEY (id_especialidade) REFERENCES java_especialidade (id);
create sequence id_medico_seq increment by 1 cache 20;


insert into java_especialidade (id, especialidade) values(1, 'Cardiologista');
insert into java_especialidade (id, especialidade) values(2, 'Neurologia');
insert into java_especialidade (id, especialidade) values(3, 'Psiquiatria');


insert into java_medico(id,nome,crm,id_especialidade)values (1,'Ricardo', '5432158', 1);
insert into java_medico(id,nome,crm,id_especialidade)values (2,'Vanessa', '5432157', 1);
insert into java_medico(id,nome,crm,id_especialidade)values (3,'Juliana', '5432156', 1);

insert into java_medico(id,nome,crm,id_especialidade)values (4,'Rodrigo', '5432155', 2); 
insert into java_medico(id,nome,crm,id_especialidade)values (5,'Karina' , '5435154', 2);
insert into java_medico(id,nome,crm,id_especialidade)values (6,'Joel'   , '5432153', 2);

insert into java_medico(id,nome,crm,id_especialidade)values (7,'Julia'  , '5432152', 3); 
insert into java_medico(id,nome,crm,id_especialidade)values (8,'Amanda' , '5435151', 3);
insert into java_medico(id,nome,crm,id_especialidade)values (9,'Amaral' , '5432150', 3);

commit;