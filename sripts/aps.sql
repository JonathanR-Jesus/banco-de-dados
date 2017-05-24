create database aps;

use aps;

create table clientes (

id int not null primary key auto_increment,
primeiro_nome varchar(50)not null,
sobrenome varchar(100)not null,
rua varchar (100)not null,
bairro varchar(100)not null,
cidade varchar(50)not null,
estado char(2)not null,
numero_casa int not null,
telefone int(10)not null,
celular int(11) not null

);

create table clientes_p_fisica (

cpf int not null primary key,
sexo char not null,
data_nasciment date not null

);

alter table clientes_p_fisica 
add id_cliente int,
add constraint fk_clientes
foreign key (id_cliente)
references clientes (id);

create table clientes_p_juridica (

cnpj int(14) not null primary key,
inscricao_estadual int (9) not null,
tipo_organizacao varchar(50),
id_cliente int

);

alter table clientes_p_juridica
add constraint fk_cliente_pjuridica
foreign key (id_cliente)
references clientes (id);


insert into clientes 

(primeiro_nome,sobrenome,rua,numero_casa,bairro,cidade,estado,celular)

values (

'jonathan','rodrigues','rua 143 bloco 02','12c','nova metropole','caucaia','ce',85986967166),
'tatiane','gomes','rua 143 bloco 02','12c','nova metropole','caucaia','ce',859883111991),
'adriano','kennedy','rua w 21 bloco 20','21c','araturi','caucaia','ce',85991577812),
'fabricio','viana','rua das amelias','43','antonio bezerra','fortaleza','ce',981997753);

insert into clientes_p_fisica 

values

('04950302361','m',19900314,1),
('07722718342','f',18370923,2),
('83772046304','m',19880726,3),
('10351638458','m',19751211,4);




