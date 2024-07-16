drop database  if exists SGBDConsesionariaIN5CM;

create database SGBDConsesionariaIN5CM;

use SGBDConsesionariaIN5CM;        


create table Usuario(
	usuarioId int not null auto_increment,
    nombreUsuario varchar(30),
    contraUsuario varchar(30),
	primary key PK_usuarioId(usuarioId)
);

create table Categoria(
	categoriaId int not null auto_increment,
    nombreCategoria varchar(30),
    descripcionCategoria varchar(30),
    primary key PK_categoriaId(categoriaId)
);

create table Marcas(
	marcaId int not null auto_increment,
	nombreMarca varchar(30),
    descripcionMarca varchar(30),
    primary key PK_marcaId(marcaId)
);

create table Carros(
	carroId int not null auto_increment,
    nombreCarro varchar(30),
    descripcionCarro varchar(300),
    marcaCarro varchar(30),
    precioCarro decimal(10,2),
	primary key PK_carroId(carroId)
);

create table Compras(
	compraId int not null auto_increment,
    usuarioId int,
    carroId int,
    fechacompra date,
    total decimal(10,2),
    primary key compraId(compraId),
    foreign key (usuarioId) references usuario(usuarioId),
    foreign key (carroId) references carros(carroId)
);


-- LISTAR 
Delimiter $$
	Create procedure sp_ListarCarros()
		Begin
			Select
				Carros.carroId,
                Carros.nombreCarro,
                Carros.descripcionCarro,
                Carros.precioCarro
            from Carros;
        End$$
Delimiter ;


Delimiter $$
	Create procedure sp_ListarUsuario()
		Begin
			Select
				Usuario.usuarioId,
                Usuario.nombreUsuario,
                Usuario.contraUsuario
            from Usuario;
        End$$
Delimiter ;

insert into Usuario(nombreUsuario, contraUsuario) values
(' Luis', '456875'),
('Juan', '7896523'),
('Fernando', '787895');

insert into Carros(carroId, nombreCarro, descripcionCarro, marcaCarro, precioCarro)VALUES
(1,'Spyder', 'deportivo de lujo','Porsche','50'),
(2,'Ferrari Enzo', 'Un auto deportivo de altas prestaciones con motor V','Ferrari','75'),
(3,'Lamborghini Aventador', 'Conocido por su impresionante diseño y velocidad','Lamborghini','65'),
(4,'McLaren P1', 'Un auto híbrido con un rendimiento extraordinario','McLaren','52'),
(5,'Porsche GT', 'GT Famoso por su agilidad y rendimiento en pista.','Porsche','50'),
(6,'Audi TTS', 'Deportivo con motor central y tracción en las cuatro ruedas','Audi','36');


call sp_ListarCarros();

call sp_ListarUsuario();