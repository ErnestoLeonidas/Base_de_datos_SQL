-- crear tabla clientes
CREATE TABLE Clientes( 
    rut_cliente         NUMBER(11) NOT NULL, 
    dv                  CHAR(1) NOT NULL, 
    primer_nombre       VARCHAR2(250) NOT NULL, 
    segundo_nombre      VARCHAR2(250), 
    apellido_paterno    VARCHAR2(250) NOT NULL, 
    apellido_materno    VARCHAR2(250), 
    direccion           VARCHAR2(250) NOT NULL, 
    fono                NUMBER NOT NULL,  
    correo              VARCHAR2(250) NOT NULL, 
    comuna_id           NUMBER NOT NULL 
);

--Añadir PK a la tabla cliente
ALTER TABLE Clientes ADD CONSTRAINT cliente_PK PRIMARY KEY (rut_cliente);

-- Creo la tabla comuna
CREATE TABLE Comunas( 
    id_comuna NUMBER NOT NULL, 
    nombre VARCHAR2(250) NOT NULL, 
    provincia_id NUMBER NOT NULL 
);

-- Añado la PK a la tabla comuna
ALTER TABLE Comunas ADD CONSTRAINT comuna_PK PRIMARY KEY (id_comuna);

-- Añadir la clave Clave foranea FK
ALTER TABLE Clientes ADD CONSTRAINT comuna_FK FOREIGN KEY (comuna_id) 
    REFERENCES Comunas (id_comuna);

-- Ingresar datos a la tabla Comunas
INSERT INTO Comunas VALUES (1,'Arica', 1)
INSERT INTO Comunas VALUES (2,'Camarones', 1)
INSERT INTO Comunas VALUES (3,'General Lagos', 1)
INSERT INTO Comunas VALUES (4,'Putre', 1)

SELECT * FROM Comunas;
SELECT * FROM Clientes;

-- Ingresar datos a la tabla Clientes
INSERT INTO Clientes VALUES (123,'K','Alan','','Frito','','Avenida Siempre viva #117' ,555,'alan@brito.cl',1);
INSERT INTO Clientes VALUES (132,'K','Pedro','','Frito','','Avenida Siempre viva #117' ,666,'pedro@brito.cl',1);
INSERT INTO Clientes VALUES (123,'K','Maria','','Frito','','Avenida Siempre viva #117' ,777,'maria@brito.cl',1);