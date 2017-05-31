create database aps;

use aps;

create table clientes (

id int not null primary key auto_increment,
rua varchar (100)not null,
numero_casa varchar(10) not null,
bairro varchar(100)not null,
cidade varchar(50)not null,
estado char(2)not null,
telefone bigint(10),
celular bigint(11)

);

create table clientes_p_fisica (

cpf bigint not null primary key,
primeiro_nome varchar(50)not null,
sobrenome varchar(100)not null,
sexo char not null,
data_nascimento date not null,
id_cliente int not null

);

alter table clientes_p_fisica 
add constraint fk_clientes_p_fisica
foreign key (id_cliente)
references clientes (id);

create table clientes_p_juridica (

cnpj bigint(14) not null primary key,
razao_social varchar(100)not null,
inscricao_estadual bigint (9) not null,
tipo_organizacao varchar(50),
id_cliente int not null

);

alter table clientes_p_juridica
add constraint fk_clientes_p_juridica
foreign key (id_cliente)
references clientes (id);


insert into clientes 

(rua,numero_casa,bairro,cidade,estado,celular)

values
 
('rua 143 bloco 02','12c','nova metropole','caucaia','ce',85986967166),
('rua 143 bloco 02','12c','nova metropole','caucaia','ce',85988311991),
('rua w 21 bloco 20','21c','araturi','caucaia','ce',85991577812),
('rua das amelias','43','antonio bezerra','fortaleza','ce',85997752131);
 
insert into clientes

(rua,numero_casa,bairro,cidade,estado,telefone)

values

('rodovia br 020 km 12','sem numero','nova metropole','caucaia','ce',8533880001),
('rua 05','20b','araturi','caucaia','ce',34752000);

insert into clientes_p_juridica

values

(87100145823109,'motoliner amazonas',13408764438,'medio-porte',5),
(77870197888227,'helen lanches',123498766,'micro-empresa',6);



insert into clientes_p_fisica 

values

(04950302361,'jonathan','rodrigues','m',19900314,1),
(07722718342,'tatiane','gomes','f',18370923,2),
(83772046304,'adriano','kennedy','m',19880726,3),
(10351638458,'fabricio','viana','m',19751211,4);

create table vendas (

codigo int not null primary key auto_increment,
valor_venda real not null,
data_venda date not null,
tipo_venda varchar(50),
id_cliente int not null

);

alter table vendas
add constraint fk_clientes_vendas
foreign key (id_cliente)
references clientes (id);

insert into vendas

(valor_venda,data_venda,id_cliente)

values

(49.99,20170528,1),
(249.84,20141213,2),
(19.38,20150528,4);




