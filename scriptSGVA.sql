create database Trazabilidad_SGVA;
use Trazabilidad_SGVA;

create table Trazabilidad (
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