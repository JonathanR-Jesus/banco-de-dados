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

cpf int not null primary key auto_increment,
sexo char not null,
data_nasciment date not null

);

alter table clientes_p_fisica 
add id_cliente int,
add constraint fk_clientes
foreign key (id_cliente)
references clientes (id);




