create database Trazabilidad_SGVA; -- CREAREMOS LA BASE DE DATOS 
use Trazabilidad_SGVA; --SE LE ESPECIFICA QUE SE VA A USAR LA BASE DE DATOS CREADA

create table Trazabilidad ( -- SE CREA LA TABLA TRAZABILIDAD
Id_Trazabilidad int not null primary key auto_increment,
nombre_empresa varchar(45) not null,
encargado varchar(45) not null,
fecha_inicio datetime not null,
fecha_fin datetime not null,
telefono varchar(45) not null,
correo varchar(45) not null,
estado varchar(45) not null,
fecha_cierre datetime not null
);

create table Empresa(
Id_Empresa int not null primary key auto_increment,
codigo_empresa varchar(45) not null,
nombre_empresa varchar(45) not null
);

alter table Empresa
add primary key (codigo_empresa);

alter table Empresa
drop column Id_Empresa;

alter table Trazabilidad
rename column nombre_empresa to cod_empresa;

insert into Empresa
values ('COD1','SENA');
insert into Empresa
values ('COD2','Biotronitech colombia');
insert into Empresa
values ('COD3','SIEMENS');
insert into Empresa
values ('COD4','Trycore');
insert into Empresa
values ('COD5','data tools');

insert into Empresa (Codigo_empresa , nombre_empresa)
values ('COD6','SENA');
insert into Empresa (Codigo_empresa , nombre_empresa)
values ('COD7','Biotronitech colombia');
insert into Empresa (Codigo_empresa , nombre_empresa)
values ('COD8','SIEMENS');
insert into Empresa (Codigo_empresa , nombre_empresa)
values ('COD9','Trycore');
insert into Empresa (Codigo_empresa , nombre_empresa)
values ('COD10','data tools');

select * from Empresa;

describe Empresa;




