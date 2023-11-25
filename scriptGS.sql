
drop table java_consulta;
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

ALTER TABLE java_paciente ADD CONSTRAINT nome_un UNIQUE(nome);
ALTER TABLE java_paciente ADD CONSTRAINT paciente_pk PRIMARY KEY(id);


create table java_especialidade(
    id NUMBER NOT NULL,
    especialidade varchar2(50) NOT NULL,
    valor_consulta number
);

ALTER TABLE java_especialidade ADD CONSTRAINT especialidade_pk PRIMARY KEY(id);


create table java_medico(
    id NUMBER NOT NULL,
    nome varchar2(50) NOT NULL,
    crm VARCHAR2(11) NOT NULL,
    id_especialidade number NOT NULL
);

ALTER TABLE java_medico ADD CONSTRAINT medico_pk PRIMARY KEY(id);
ALTER TABLE java_medico ADD CONSTRAINT medico_especialidade_fk FOREIGN KEY (id_especialidade) REFERENCES java_especialidade (id);

create table java_consulta(
    id number not null,
    id_paciente number,
    id_medico number,
    data_consulta Date
    );

ALTER TABLE java_consulta ADD CONSTRAINT medico_consulta_fk FOREIGN KEY (id_medico) REFERENCES java_medico(id);
ALTER TABLE java_consulta ADD CONSTRAINT paciente_consulta_fk FOREIGN KEY (id_paciente) REFERENCES java_paciente (id);
ALTER TABLE java_consulta ADD CONSTRAINT consulta_pk PRIMARY KEY(id);

CREATE SEQUENCE id_medico_seq INCREMENT BY 1 CACHE 20;
CREATE SEQUENCE id_especialidade_seq INCREMENT BY 1 CACHE 20;
CREATE SEQUENCE id_paciente_seq INCREMENT BY 1 CACHE 20;


insert into java_especialidade (id, especialidade, valor_consulta) values(1, 'Cardiologista', 700);
insert into java_especialidade (id, especialidade, valor_consulta) values(2, 'Neurologia', 800);
insert into java_especialidade (id, especialidade, valor_consulta) values(3, 'Psiquiatria', 1000);

insert into java_paciente(id, nome, cpf, email, username, senha) values(1, 'David da Costa', 12345678990,'davidteste@gmail.com', 'david.mariano', 'senhamuitoforte');
insert into java_paciente(id, nome, cpf, email, username, senha) values(2, 'Lucas de ávila', 12345678991,'lucasteste@gmail.com', 'lucas.avila', 'senhamuitoforte');
insert into java_paciente(id, nome, cpf, email, username, senha) values(3, 'Seu zé', 12345678992,'seuZeteste@gmail.com', 'seu.ze', 'senhamuitoforte');

insert into java_medico(id,nome,crm,id_especialidade)values (1,'Ricardo', '5432158', 1);
insert into java_medico(id,nome,crm,id_especialidade)values (2,'Vanessa', '5432157', 1);
insert into java_medico(id,nome,crm,id_especialidade)values (3,'Juliana', '5432156', 1);

insert into java_medico(id,nome,crm,id_especialidade)values (4,'Rodrigo', '5432155', 2); 
insert into java_medico(id,nome,crm,id_especialidade)values (5,'Karina' , '5435154', 2);
insert into java_medico(id,nome,crm,id_especialidade)values (6,'Joel'   , '5432153', 2);

insert into java_medico(id,nome,crm,id_especialidade)values (7,'Julia'  , '5432152', 3); 
insert into java_medico(id,nome,crm,id_especialidade)values (8,'Amanda' , '5435151', 3);
insert into java_medico(id,nome,crm,id_especialidade)values (9,'Amaral' , '5432150', 3);

insert into java_consulta(id, id_paciente, id_medico, data_consulta)values (1,1,1, TO_DATE(SYSDATE));
insert into java_consulta(id, id_paciente, id_medico, data_consulta)values (2,1,5, TO_DATE(SYSDATE));
insert into java_consulta(id, id_paciente, id_medico, data_consulta)values (3,2,9, TO_DATE(SYSDATE));
insert into java_consulta(id, id_paciente, id_medico, data_consulta)values (4,2,5, TO_DATE(SYSDATE));
insert into java_consulta(id, id_paciente, id_medico, data_consulta)values (5,3,2, TO_DATE(SYSDATE));
insert into java_consulta(id, id_paciente, id_medico, data_consulta)values (6,3,3, TO_DATE(SYSDATE));
insert into java_consulta(id, id_paciente, id_medico, data_consulta)values (7,1,4, TO_DATE(SYSDATE));
insert into java_consulta(id, id_paciente, id_medico, data_consulta)values (8,1,6, TO_DATE(SYSDATE));
insert into java_consulta(id, id_paciente, id_medico, data_consulta)values (9,2,7, TO_DATE(SYSDATE));
insert into java_consulta(id, id_paciente, id_medico, data_consulta)values (10,2,8, TO_DATE(SYSDATE));
commit;