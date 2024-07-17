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
    usuario varchar(30),
    carro varchar(30),
    fechacompra date,
    total decimal(10,2),
    primary key compraId(compraId)
);


-- LISTAR 
Delimiter $$
	Create procedure sp_ListarUsuario()
		Begin
			Select * from Usuario;
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
	Create procedure sp_ListarCarros()
		Begin
			Select * from Carros;
        End$$
Delimiter ;





INSERT INTO carros(carroId, nombreCarro, descripcionCarro, marcaCarro, precioCarro) VALUES
(1, 'Bugatti Veyron', 'Uno de los autos más rápidos del mundo W16', 'Bugatti', 150),
(2, 'Aston Martin Valkyrie', 'Auto deportivo híbrido con tecnología de F1', 'Aston Martin', 200),
(3, 'Chevrolet Corvette ZR1', 'Potente auto deportivo americano con motor V8 sobrealimentado', 'Chevrolet', 130),
(4, 'Ford GT', 'Inspirado en los autos de carrera, con un motor V6 biturbo', 'Ford', 140),
(5, 'Nissan GT-R', 'Conocido como "Godzilla" por su gran rendimiento y tecnología', 'Nissan', 120),
(6, 'Mercedes-AMG GT', 'Elegante deportivo con motor V8 biturbo y diseño aerodinámico', 'Mercedes', 160);


call sp_ListarCarros();

-- LISTAR 
Delimiter $$
	Create procedure sp_ListarMarcas()
		Begin
			Select * from Marcas;
        End$$
Delimiter ;




insert into Marcas(marcaId, nombreMarca, descripcionMarca)VALUES

(1,'Bugatti Veyron', 'Uno de los autos más rápidos del mundo W16'),
(2,'Aston Martin Valkyrie', 'Auto deportivo híbrido con tecnología de F1'),
(3,'Chevrolet Corvette ZR1', 'Potente auto deportivo americano con motor V8 sobrealimentado'),
(4,'Ford GT', 'Inspirado en los autos de carrera, con un motor V6 biturbo'),
(5,'Nissan GT-R', 'Conocido como "Godzilla" por su gran rendimiento y tecnología'),
(6,'Mercedes-AMG GT', 'Elegante deportivo con motor V8 biturbo y diseño aerodinámico');

call sp_ListarMarcas();



-- LISTAR 
Delimiter $$
	Create procedure sp_ListarCompras()
		Begin
			Select * from Compras;
        End$$
Delimiter ;


INSERT INTO Compras(compraId, usuario, carro, fechacompra, total) VALUES
(1, 'Juan Perez', 'Bugatti Veyron', '2023-06-10', 150),
(2, 'Maria Lopez', 'Aston Martin Valkyrie', '2023-07-15', 200),
(3, 'Carlos Garcia', 'Chevrolet Corvette ZR1', '2023-08-20', 130),
(4, 'Ana Martinez', 'Ford GT', '2023-09-25', 140),
(5, 'Luis Fernandez', 'Nissan GT-R', '2023-10-30', 120),
(6, 'Elena Sanchez', 'Mercedes-AMG GT', '2023-11-05', 160);



call sp_ListarCompras();



