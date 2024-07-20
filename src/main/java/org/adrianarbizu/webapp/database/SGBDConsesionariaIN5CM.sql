drop database  if exists SGBDConsesionariaIN5CM;

create database SGBDConsesionariaIN5CM;

use SGBDConsesionariaIN5CM;        


create table Categoria(
	categoriaId int not null auto_increment,
    nombreCategoria varchar(300),
    descripcionCategoria varchar(300),
    primary key PK_categoriaId(categoriaId)
);

create table Usuario(
	usuarioId int not null auto_increment,
    nombreUsuario varchar(30),
    contraUsuario varchar(30),
    emailUsuario varchar(50),
    fechaRegistroUsuario date,
	primary key PK_usuarioId(usuarioId)
);

<<<<<<< HEAD
<<<<<<< HEAD
=======
create table Categoria(
	categoriaId int not null auto_increment,
    nombreCategoria varchar(300),
    descripcionCategoria varchar(300),
    primary key PK_categoriaId(categoriaId)
);

>>>>>>> Adrian-Arbizu
=======
>>>>>>> Giovanni-Carrera
create table Marcas(
	marcaId int not null auto_increment,
	nombreMarca varchar(30),
    descripcionMarca varchar(300),
    primary key PK_marcaId(marcaId)
);

create table Carros(
	carroId int not null auto_increment,
    nombreCarro varchar(30),
    descripcionCarro varchar(300),
    marcaId int,
    categoriaId int,
    precioCarro decimal(10,2),
	primary key PK_carroId(carroId),
    CONSTRAINT FK_Carros_Marcas FOREIGN KEY Carros(marcaId)
	REFERENCES Marcas(marcaId),
    CONSTRAINT FK_Carros_Categoria FOREIGN KEY Carros(categoriaId)
	REFERENCES Categoria(categoriaId)
);

create table Compras(
	compraId int not null auto_increment,
    usuarioId int,
    carroId int,
    fechacompra varchar(60),
    total decimal(10,2),
    primary key compraId(compraId),
    CONSTRAINT FK_Compras_Carros FOREIGN KEY Compras(carroId)
	REFERENCES Carros(carroId),
    CONSTRAINT FK_Compras_Usuario FOREIGN KEY Compras(usuarioId)
	REFERENCES Usuario(usuarioId)
);


-- LISTAR 
Delimiter $$
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> Giovanni-Carrera
	Create procedure sp_ListarCategoria()
		Begin
			Select * from Categoria;
        End$$
Delimiter ;

insert into Categoria(categoriaId, nombreCategoria, descripcionCategoria) VALUES
(1, 'Deportivos', 'Autos diseñados para altas prestaciones y velocidad.'),
(2, 'Sedanes', 'Autos de lujo con características de confort y elegancia.'),
(3, 'SUVs', 'Vehículos todo terreno ideales para familias y aventuras.'),
(4, 'Compactos', 'Autos pequeños y económicos, ideales para la ciudad.'),
(5, 'Coupés', 'Autos deportivos con líneas elegantes y techo bajo.'),
(6, 'Camionetas', 'Vehículos robustos diseñados para carga y trabajo pesado.');

call sp_ListarCategoria();

-- LISTAR 
Delimiter $$
	Create procedure sp_ListarUsuario()
		Begin
			Select * from Usuario;
<<<<<<< HEAD
=======
	Create procedure sp_ListarUsuario()
		Begin
			Select
				Usuario.usuarioId,
                Usuario.nombreUsuario,
                Usuario.contraUsuario,
                Usuario.emailUsuario,
                Usuario.fechaRegistroUsuario
            from Usuario;
>>>>>>> Adrian-Arbizu
=======
>>>>>>> Giovanni-Carrera
        End$$
Delimiter ;

INSERT INTO Usuario(usuarioId, nombreUsuario, emailUsuario, contraUsuario, fechaRegistroUsuario) VALUES
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> Giovanni-Carrera
(1, 'Juan Perez', 'juanPerez@gmail.com', 'password123', '2023-01-15'),
(2, 'Maria Lopez', 'maria.lopez@Outlock.com', 'password456', '2023-02-20'),
(3, 'Carlos Garcia', 'carlosGarcia@hotmail.com', 'password789', '2023-03-25'),
(4, 'Ana Martinez', 'ana-Martinez@gmail.com', 'password012', '2023-04-30'),
(5, 'Luis Fernandez', 'luisFernandez@gmail.com', 'password345', '2023-05-05'),
(6, 'Elena Sanchez', 'elenaSanchez@hotmail.com', 'password678', '2023-06-10');
<<<<<<< HEAD
=======
(1, 'Juan Perez', 'juan.perez@example.com', 'password123', '2023-01-15'),
(2, 'Maria Lopez', 'maria.lopez@example.com', 'password456', '2023-02-20'),
(3, 'Carlos Garcia', 'carlos.garcia@example.com', 'password789', '2023-03-25'),
(4, 'Ana Martinez', 'ana.martinez@example.com', 'password012', '2023-04-30'),
(5, 'Luis Fernandez', 'luis.fernandez@example.com', 'password345', '2023-05-05'),
(6, 'Elena Sanchez', 'elena.sanchez@example.com', 'password678', '2023-06-10');
>>>>>>> Adrian-Arbizu
=======
>>>>>>> Giovanni-Carrera

call sp_ListarUsuario();


-- LISTAR 
Delimiter $$
<<<<<<< HEAD
	Create procedure sp_ListarMarcas()
		Begin
			Select * from Marcas;
        End$$
Delimiter ;




insert into Marcas(marcaId, nombreMarca, descripcionMarca)VALUES

(1,'Bugatti', 'es un fabricante de automóviles superdeportivos y de carreras con sede en Molsheim'),
(2,'Aston Martin', 'es una firma fundada en 1913 y que está especializada en vehículos de lujo y deportivos de altas prestaciones'),
(3,'Chevrolet ', 'es un fabricante estadounidense de automóviles y camiones con sede en Detroit'),
(4,'Ford', 'es una organización multinacional fundada en Estados Unidos la cual se dedica a la construcción de automóviles con base en Michigan, Estados Unidos.'),
(5,'Nissan', 'es un fabricante japonés de automóviles, con base en Nishi-ku (Yokohama).'),
(6,'Mercedes', 'es una empresa alemana fabricante de vehículos, subsidiaria de la compañía Mercedes-Benz Group.');

call sp_ListarMarcas();

=======
	Create procedure sp_ListarCategoria()
		Begin
			Select
				Categoria.categoriaId,
                Categoria.nombreCategoria,
                Categoria.descripcionCategoria
            from Categoria;
        End$$
Delimiter ;

insert into Categoria(categoriaId, nombreCategoria, descripcionCategoria) VALUES
(7, 'Deportivos', 'Autos diseñados para altas prestaciones y velocidad.'),
(8, 'Sedanes', 'Autos de lujo con características de confort y elegancia.'),
(9, 'SUVs', 'Vehículos todo terreno ideales para familias y aventuras.'),
(10, 'Compactos', 'Autos pequeños y económicos, ideales para la ciudad.'),
(11, 'Coupés', 'Autos deportivos con líneas elegantes y techo bajo.'),
(12, 'Camionetas', 'Vehículos robustos diseñados para carga y trabajo pesado.');

call sp_ListarCategoria();
>>>>>>> Adrian-Arbizu

-- LISTAR 
Delimiter $$
	Create procedure sp_ListarCarros()
		Begin
			Select * from Carros;
        End$$
Delimiter ;





<<<<<<< HEAD
INSERT INTO carros(carroId, nombreCarro, descripcionCarro, marcaId, categoriaId, precioCarro) VALUES
(1, 'Bugatti Veyron', 'Uno de los autos más rápidos del mundo W16', 1,1, 150),
(2, 'Aston Martin Valkyrie', 'Auto deportivo híbrido con tecnología de F1', 2, 2, 200),
(3, 'Chevrolet Corvette ZR1', 'Potente auto deportivo americano con motor V8 sobrealimentado', 3, 3, 130),
(4, 'Ford GT', 'Inspirado en los autos de carrera, con un motor V6 biturbo', 4, 4, 140),
(5, 'Nissan GT-R', 'Conocido como "Godzilla" por su gran rendimiento y tecnología', 5,5, 120),
(6, 'Mercedes-AMG GT', 'Elegante deportivo con motor V8 biturbo y diseño aerodinámico', 6,6, 160);
=======
INSERT INTO carros(carroId, nombreCarro, descripcionCarro, marcaCarro, precioCarro) VALUES
(7, 'Bugatti Veyron', 'Uno de los autos más rápidos del mundo W16', 'Bugatti', 150),
(8, 'Aston Martin Valkyrie', 'Auto deportivo híbrido con tecnología de F1', 'Aston Martin', 200),
(9, 'Chevrolet Corvette ZR1', 'Potente auto deportivo americano con motor V8 sobrealimentado', 'Chevrolet', 130),
(10, 'Ford GT', 'Inspirado en los autos de carrera, con un motor V6 biturbo', 'Ford', 140),
(11, 'Nissan GT-R', 'Conocido como "Godzilla" por su gran rendimiento y tecnología', 'Nissan', 120),
(12, 'Mercedes-AMG GT', 'Elegante deportivo con motor V8 biturbo y diseño aerodinámico', 'Mercedes', 160);
>>>>>>> Adrian-Arbizu


call sp_ListarCarros();

-- LISTAR 
Delimiter $$
	Create procedure sp_ListarMarcas()
		Begin
			Select
				Marcas.marcaId,
                Marcas.nombreMarca,
                Marcas.descripcionMarca
            from Marcas;
        End$$
Delimiter ;




insert into Marcas(marcaId, nombreMarca, descripcionMarca)VALUES

(7,'Bugatti Veyron', 'Uno de los autos más rápidos del mundo W16'),
(8,'Aston Martin Valkyrie', 'Auto deportivo híbrido con tecnología de F1'),
(9,'Chevrolet Corvette ZR1', 'Potente auto deportivo americano con motor V8 sobrealimentado'),
(10,'Ford GT', 'Inspirado en los autos de carrera, con un motor V6 biturbo'),
(11,'Nissan GT-R', 'Conocido como "Godzilla" por su gran rendimiento y tecnología'),
(12,'Mercedes-AMG GT', 'Elegante deportivo con motor V8 biturbo y diseño aerodinámico');

call sp_ListarMarcas();



-- LISTAR 
Delimiter $$
	Create procedure sp_ListarCompras()
		Begin
			Select
				Compras.compraId,
                Compras.usuarioId,
                Compras.carroId,
                Compras.fechacompra,
                Compras.total
            from Compras;
        End$$
Delimiter ;


INSERT INTO Compras(compraId, usuarioId, carroId, fechacompra, total) VALUES
(1, 1, 7, '2023-06-10', 150),
(2, 2, 8, '2023-07-15', 200),
(3, 3, 9, '2023-08-20', 130),
(4, 4, 10, '2023-09-25', 140),
(5, 5, 11, '2023-10-30', 120),
(6, 6, 12, '2023-11-05', 160);



call sp_ListarCompras();





-- LISTAR 
Delimiter $$
	Create procedure sp_ListarCarros()
		Begin
			Select * from Carros;
        End$$
Delimiter ;





INSERT INTO carros(carroId, nombreCarro, descripcionCarro, marcaId, categoriaId, precioCarro) VALUES
(1, 'Bugatti Veyron', 'Uno de los autos más rápidos del mundo W16', 1,1, 150),
(2, 'Aston Martin Valkyrie', 'Auto deportivo híbrido con tecnología de F1', 2, 2, 200),
(3, 'Chevrolet Corvette ZR1', 'Potente auto deportivo americano con motor V8 sobrealimentado', 3, 3, 130),
(4, 'Ford GT', 'Inspirado en los autos de carrera, con un motor V6 biturbo', 4, 4, 140),
(5, 'Nissan GT-R', 'Conocido como "Godzilla" por su gran rendimiento y tecnología', 5,5, 120),
(6, 'Mercedes-AMG GT', 'Elegante deportivo con motor V8 biturbo y diseño aerodinámico', 6,6, 160);


call sp_ListarCarros();





-- LISTAR 
Delimiter $$
	Create procedure sp_ListarCompras()
		Begin
			Select * from Compras;
        End$$
Delimiter ;


INSERT INTO Compras(compraId, usuarioId, carroId, fechacompra, total) VALUES
(1, 1, 1, '2023-06-10', 150),
(2, 2, 2, '2023-07-15', 200),
(3, 3, 3, '2023-08-20', 130),
(4, 4, 4, '2023-09-25', 140),
(5, 5, 5, '2023-10-30', 120),
(6, 6, 6, '2023-11-05', 160);
<<<<<<< HEAD
=======



call sp_ListarCompras();
>>>>>>> Giovanni-Carrera



call sp_ListarCompras();