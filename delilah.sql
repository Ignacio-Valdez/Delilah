CREATE TABLE usuarios (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nombre_usuario VARCHAR(60) NOT NULL,
    nombre_apellido VARCHAR (100) NOT NULL,
    email VARCHAR (60) NOT NULL,
    telefono INT NOT NULL,
    direccion VARCHAR(200) NOT NULL,
    contrasena VARCHAR(100) NOT NULL,
    es_admin INT NOT NULL
    );
CREATE TABLE productos (
    id_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(60) NOT NULL,
    imagen VARCHAR (500) NOT NULL,
    precio FLOAT NOT NULL
    );
CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    hora DATETIME NOT NULL,
    estado VARCHAR (60) NOT NULL,
    total INT NOT NULL,
    metodo_pago VARCHAR (60) NOT NULL,
    id_usuario INT NOT NULL
    );
CREATE TABLE productos_x_pedidos (
    id_pro_pe INT PRIMARY KEY AUTO_INCREMENT,
    id_producto INT NOT NULL,
    id_pedido INT NOT NULL,
    cantidad INT NOT NULL
    );

INSERT INTO usuarios VALUES (NULL, 'queen_freddie', 'Freddie Mercury', 'freddiemercury@gmail.com', 123456789, '1 Logan PIKensington', 'Freddie123',0);
INSERT INTO usuarios VALUES (NULL, 'indie_john', 'John Smith', 'johnsmith@gmail.com', 234567891, 'Tardis ST, space 453, Gallifrey', 'John123',0);
INSERT INTO usuarios VALUES (NULL, 'queen_brian', 'Brian May', 'brianmay@gmail.com', 345678912, '8236 Bohemian Stret, Paddington, London B.', 'Briam123',0);
INSERT INTO usuarios VALUES (NULL, 'queen_malin', 'Malin Quist', 'malinquist@mail.com', 456789123, '246 Jefrey Gateway', 'Malin123',0);
INSERT INTO usuarios VALUES (NULL, 'jordanakit', 'Jordana Kitchener', 'jordanakitchener@gmail.com', 456715223, '5157 Grady Ridge', 'Jordana123',0);
INSERT INTO usuarios VALUES (NULL, 'ivansan', 'Ivan Sanders', 'ivansanders@gmail.com', 567891234, '81 Conrad Plain', 'Ivan123',0);
INSERT INTO usuarios VALUES (NULL, 'mribero', 'Mónica Ribeiro', 'monicaribeiro@gmail.com', 678912345, '98 Brendon Street Suite 314', 'Monica123',0);
INSERT INTO usuarios VALUES (NULL, 'Klove', 'Katie Love', 'katielove@gmail.com', 789123456, '245 Turner Spring Apt.010', 'Katie123',0);
INSERT INTO usuarios VALUES (NULL, 'IVasin', 'Ilya Vasin', 'iliavasin@gmail.com', 891234567, '3955 Dejon Green Apt. 553', 'Ilia123',0);
INSERT INTO usuarios VALUES (NULL, 'AnnaF', 'Anna Fali', 'annafali@gmail.com', 912345678, '593 Dessie Manors', 'Anna123',0);
INSERT INTO usuarios VALUES (NULL, 'HBriscam', 'Hashim Briscam', 'hashimbriscam@gmail.com', 012345678, 'Davies Green', 'Hashim123',0);
INSERT INTO usuarios VALUES (NULL, 'AntonB', 'Anton Brownstein', 'antonbrownstein@gmailcom', 123654987, '6254 McDemott Trafficway', 'Anton123',0);
INSERT INTO usuarios VALUES (NULL, 'DayaC', 'Daya Chitanis', 'danachitanis@gmail.com', 123456987, '9178 Reinhold Island', 'Daya123',0);
INSERT INTO usuarios VALUES (NULL, 'ConstanzaM', 'Constanza Mariano', 'constanzamariano@gmail.com', 456321852, '026 Harber Port', 'Constanza123',0);
INSERT INTO usuarios VALUES (NULL, 'DeboraAll', 'Débora Barbosa', 'deborabarbosa@gmail.com', 456963159, '713 Howe Crossing', 'Debora123',0);;
INSERT INTO usuarios VALUES (NULL, 'SafiyulinB', 'Benedikt Safiyulin', 'benediktsafiyulin@gmail.com', 654357985, '821 Hansen Landing Suite 633', 'Safiyulin123',0);
INSERT INTO usuarios VALUES (NULL, 'Delilah', 'Delilah Resto', 'delilahresto@gmail.com', 457327696, '351 Muller ST', 'Delilah123',1);

INSERT INTO productos VALUES (NULL, 'Bagel de salmon', 'http://DR/images/salmon',425);
INSERT INTO productos VALUES (NULL, 'Hamburguesa clásica', 'http://DR/images/hamb_clas',350);
INSERT INTO productos VALUES (NULL, 'Hamburguesa Especial', 'http://DR/images/hamb_clas_esp',380);
INSERT INTO productos VALUES (NULL, 'Sandwich veggie', 'http://DR/images/sand_ve', 310);
INSERT INTO productos VALUES (NULL, 'Ensalada veggie', 'http://DR/images/ens_ve', 340);
INSERT INTO productos VALUES (NULL, 'Focaccia', 'http://DR/images/focca', 300);
INSERT INTO productos VALUES (NULL, 'Sandwich Focaccia', 'http://DR/images/sand-focca', 440);
INSERT INTO productos VALUES (NULL, 'Sandwich Queso', 'http://DR/images/sand-queso', 268);
INSERT INTO productos VALUES (NULL, 'Cerveza Lata', 'http://DR/images/cerv-lata', 110);
INSERT INTO productos VALUES (NULL, 'Gaseosa Lata ', 'http://DR/images/gaseo-lata', 100);
INSERT INTO productos VALUES (NULL, 'Agua', 'http://DR/images/agua', 90);
INSERT INTO productos VALUES (NULL, 'Pizza Especial', 'http://DR/images/pizza-esp', 450);
INSERT INTO productos VALUES (NULL, 'Pizza Muzzarella', 'http://DR/images/pizza-c', 420);

INSERT INTO pedidos VALUES (NULL, '2020-06-25 10:46:36', 'Preparando', 670, 'Efectivo', 1);
INSERT INTO pedidos VALUES (NULL, '2020-06-25 10:58:36', 'Confirmado', 525, 'Tarjeta', 5);
INSERT INTO pedidos VALUES (NULL, '2020-06-25 11:06:36', 'Preparando', 1860, 'Tarjeta', 10);
INSERT INTO pedidos VALUES (NULL, '2020-06-25 11:08:36', 'Enviando', 900, 'Efectivo', 8);
INSERT INTO pedidos VALUES (NULL, '2020-06-25 11:58:36', 'Cancelado', 90, 'Efectivo', 13);
INSERT INTO pedidos VALUES (NULL, '2020-06-25 12:10:36', 'Entregado', 660, 'Efectivo', 5);
INSERT INTO pedidos VALUES (NULL, '2020-06-25 21:58:36', 'Preparado', 368, 'Efectivo', 6);

INSERT INTO productos_x_pedidos VALUES (NULL, 12, 1, 1);
INSERT INTO productos_x_pedidos VALUES (NULL, 9, 1, 2);
INSERT INTO productos_x_pedidos VALUES (NULL, 1, 2, 1);
INSERT INTO productos_x_pedidos VALUES (NULL, 10, 2, 1);
INSERT INTO productos_x_pedidos VALUES (NULL, 4, 3, 6);
INSERT INTO productos_x_pedidos VALUES (NULL, 2, 4, 2);
INSERT INTO productos_x_pedidos VALUES (NULL, 10, 4, 2);
INSERT INTO productos_x_pedidos VALUES (NULL, 11, 5, 1);
INSERT INTO productos_x_pedidos VALUES (NULL, 5, 6, 2);
INSERT INTO productos_x_pedidos VALUES (NULL, 9, 6, 2);
INSERT INTO productos_x_pedidos VALUES (NULL, 10, 6, 1);
INSERT INTO productos_x_pedidos VALUES (NULL, 8, 7, 1);
INSERT INTO productos_x_pedidos VALUES (NULL, 10, 7, 1);

ALTER TABLE pedidos ADD FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario);
ALTER TABLE productos_x_pedidos ADD FOREIGN KEY (id_producto) REFERENCES productos(id_producto);
ALTER TABLE productos_x_pedidos ADD FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido);

ALTER TABLE productos_x_pedidos DROP FOREIGN KEY productos_x_pedidos_ibfk_1;
ALTER TABLE productos_x_pedidos ADD CONSTRAINT productos_x_pedidos_ibfk_1 FOREIGN KEY (id_producto) REFERENCES productos(id_producto) ON DELETE CASCADE ON UPDATE RESTRICT;
ALTER TABLE productos_x_pedidos DROP FOREIGN KEY productos_x_pedidos_ibfk_2;
ALTER TABLE productos_x_pedidos ADD CONSTRAINT productos_x_pedidos_ibfk_2 FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido) ON DELETE CASCADE ON UPDATE RESTRICT;
