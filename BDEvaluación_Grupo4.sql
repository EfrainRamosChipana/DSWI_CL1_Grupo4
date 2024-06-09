-- borra la bd si existe
DROP DATABASE IF EXISTS BDEvaluacion;
-- creamos la bd
CREATE DATABASE BDEvaluacion;
-- activamos la bd
USE BDEvaluacion;

CREATE TABLE usuario (
    idusuario INT AUTO_INCREMENT NOT NULL,
    nomusuario VARCHAR(100) NULL,
    email VARCHAR(200) NULL,
    password VARCHAR(300) NULL,
    nombres VARCHAR(100) NULL,
    apellidos VARCHAR(100) NULL,
    activo BOOL NULL,
    CONSTRAINT users_pk PRIMARY KEY (idusuario)
);


CREATE TABLE rol (
	idrol INT auto_increment NOT NULL,
	nomrol varchar(300) NULL,
	CONSTRAINT roles_pk PRIMARY KEY (idrol)
);


CREATE TABLE usuario_rol (
	idusuario INT NOT NULL,
	idrol INT NOT NULL,
	CONSTRAINT user_role_pk PRIMARY KEY (idusuario),
	CONSTRAINT user_role_FK FOREIGN KEY (idusuario) REFERENCES usuario(idusuario),
	CONSTRAINT user_role_FK_1 FOREIGN KEY (idrol) REFERENCES rol(idrol)
);

CREATE TABLE Autor
(
 IdAutor 		INT NOT NULL AUTO_INCREMENT,
 NomAutor		VARCHAR(50) NOT NULL,
 ApeAutor 		VARCHAR(50) NOT NULL,
 FechNacAutor	DATE NOT NULL,
 PRIMARY KEY (IdAutor)
);

CREATE TABLE Publicacion
(
 IdPublicacion 		INT NOT NULL AUTO_INCREMENT,
 Titulo 			VARCHAR(250) NOT NULL,
 Resumen 			VARCHAR(250) NOT NULL,
 FechPublicacion	DATE NOT NULL,
 IdAutor 			INT NOT NULL,
 PRIMARY KEY (IdPublicacion),
 FOREIGN KEY (IdAutor) REFERENCES Autor(IdAutor)
 );
 
 INSERT INTO usuario (nomusuario, email, password, nombres, apellidos, activo) VALUES 
('juanperez', 'juan.perez@example.com', 'pass123', 'Juan', 'Perez', true),
('mariagonzalez', 'maria.gonzalez@example.com', 'password456', 'Maria', 'Gonzalez', true),
('luisrodriguez', 'luis.rodriguez@example.com', 'mypassword', 'Luis', 'Rodriguez', false),
('anafernandez', 'ana.fernandez@example.com', 'ana123', 'Ana', 'Fernandez', true),
('carlossanchez', 'carlos.sanchez@example.com', 'carlos456', 'Carlos', 'Sanchez', true),
('lauragomez', 'laura.gomez@example.com', 'laurapass', 'Laura', 'Gomez', false),
('pedromartinez', 'pedro.martinez@example.com', 'pedro123', 'Pedro', 'Martinez', true),
('saragarcia', 'sara.garcia@example.com', 'sarapass', 'Sara', 'Garcia', true);

INSERT INTO rol (nomrol) VALUES 
('SuperAdmin'),
('EditorSenior'),
('UsuarioBasico'),
('Moderador'),
('Colaborador'),
('Lector'),
('Invitado'),
('Miembro');

INSERT INTO usuario_rol (idusuario, idrol) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);
INSERT INTO Autor (NomAutor, ApeAutor, FechNacAutor) VALUES 
('Paulo', 'Uscamayta', '1947-08-24'),
('Cralos', 'Condori', '1949-01-12'),
('Ernesto', 'Pacori', '1947-09-21'),
('Fernando', 'Flores', '1890-09-15'),
('Leo', 'marquez', '1828-09-09'),
('Gabriel', 'Garcia ', '1927-03-06'),
('Sergio.', 'quispe', '1892-01-03'),
('George', 'Fernandez', '1903-06-25');

INSERT INTO Publicacion (Titulo, Resumen, FechPublicacion, IdAutor) VALUES 
('El Alquimista', 'Un joven pastor busca su leyenda personal', '1988-01-01', 1),
('Kafka en la Orilla', 'Una novela de fantasía y realidad', '2002-09-12', 2),
('El Resplandor', 'Una historia de horror en un hotel aislado', '1977-01-28', 3),
('Diez Negritos', 'Un misterio en una isla', '1939-11-06', 4),
('Guerra y Paz', 'Un clásico de la literatura rusa', '1869-01-01', 5),
('Cien Años de Soledad', 'Una saga familiar en un pueblo ficticio', '1967-05-30', 6),
('El Señor de los Anillos', 'Una épica aventura en la Tierra Media', '1954-07-29', 7),
('1984', 'Una distopía sobre un futuro totalitario', '1949-06-08', 8);

Select * from usuario;
Select * from rol;
Select * from usuario_rol;
Select * from Autor;
Select * from Publicacion



 
 
 
