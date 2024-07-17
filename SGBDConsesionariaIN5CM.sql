drop database  if exists SGBDConsesionariaIN5CM;

create database SGBDConsesionariaIN5CM;

use SGBDConsesionariaIN5CM;        




create table Usuario(
	usuarioId int not null auto_increment,
    nombreUsuario varchar(30),
    contraUsuario varchar(30),
    emailUsuario varchar(50),
    fechaRegistroUsuario date,
	primary key PK_usuarioId(usuarioId)
);

create table Categoria(
	categoriaId int not null auto_increment,
    nombreCategoria varchar(300),
    descripcionCategoria varchar(300),
    primary key PK_categoriaId(categoriaId)
);

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
	Create procedure sp_ListarUsuario()
		Begin
			Select
				Usuario.usuarioId,
                Usuario.nombreUsuario,
                Usuario.contraUsuario,
                Usuario.emailUsuario,
                Usuario.fechaRegistroUsuario
            from Usuario;
        End$$
Delimiter ;

INSERT INTO Usuario(usuarioId, nombreUsuario, emailUsuario, contraUsuario, fechaRegistroUsuario) VALUES
(1, 'Juan Perez', 'juan.perez@example.com', 'password123', '2023-01-15'),
(2, 'Maria Lopez', 'maria.lopez@example.com', 'password456', '2023-02-20'),
(3, 'Carlos Garcia', 'carlos.garcia@example.com', 'password789', '2023-03-25'),
(4, 'Ana Martinez', 'ana.martinez@example.com', 'password012', '2023-04-30'),
(5, 'Luis Fernandez', 'luis.fernandez@example.com', 'password345', '2023-05-05'),
(6, 'Elena Sanchez', 'elena.sanchez@example.com', 'password678', '2023-06-10');

call sp_ListarUsuario();


-- LISTAR 
Delimiter $$
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





INSERT INTO carros(carroId, nombreCarro, descripcionCarro, marcaCarro, precioCarro) VALUES
(7, 'Bugatti Veyron', 'Uno de los autos más rápidos del mundo W16', 'Bugatti', 150),
(8, 'Aston Martin Valkyrie', 'Auto deportivo híbrido con tecnología de F1', 'Aston Martin', 200),
(9, 'Chevrolet Corvette ZR1', 'Potente auto deportivo americano con motor V8 sobrealimentado', 'Chevrolet', 130),
(10, 'Ford GT', 'Inspirado en los autos de carrera, con un motor V6 biturbo', 'Ford', 140),
(11, 'Nissan GT-R', 'Conocido como "Godzilla" por su gran rendimiento y tecnología', 'Nissan', 120),
(12, 'Mercedes-AMG GT', 'Elegante deportivo con motor V8 biturbo y diseño aerodinámico', 'Mercedes', 160);


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



