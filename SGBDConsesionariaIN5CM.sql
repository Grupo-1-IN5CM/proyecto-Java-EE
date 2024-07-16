create database SGBDConsesionariaIN5CM;

use SGBDConsesionariaIN5CM;        

create table Carros(

	carroId int not null auto_increment,
    nombreCarro varchar(30),
    marcaProducto varchar(30),
    descripcionCarro varchar(30),
    marcaCarro varchar(30),
    Precio decimal(10,2),
	primary key PK_carroId(carroId)

);

select * from Carros;