-- 1) CLIENTES
-- Crear Tabla Clientes
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

--Añadir la PK a la Tabla Clientes
ALTER TABLE Clientes ADD CONSTRAINT cliente_PK PRIMARY KEY (rut_cliente);

-- 2) COMUNAS
--Creo Tabla Comunas
CREATE TABLE Comunas( 
    id_comuna         NUMBER NOT NULL, 
    nombre            VARCHAR2(250) NOT NULL, 
    provincia_id      NUMBER NOT NULL 
);

-- Añadir la PK a la tabla Comunas
ALTER TABLE Comunas ADD CONSTRAINT comuna_PK PRIMARY KEY (id_comuna);

-- Añadir la Clave Foranea o FK a la tabla Clientes
ALTER TABLE Clientes ADD CONSTRAINT comuna_FK FOREIGN KEY (comuna_id) 
    REFERENCES Comunas (id_comuna);

-- 3) PROVINCIA
-- Crear Tabla Provincias
CREATE TABLE Provincias( 
    id_provincia        NUMBER NOT NULL, 
    nombre              VARCHAR2(250) NOT NULL,
    region_id           NUMBER NOT NULL, 
);

-- Añadir la PK a la tabla Provincia
ALTER TABLE Provincias ADD CONSTRAINT provincia_PK PRIMARY KEY (id_provincia);

-- Añadir la Clave Foranea o FK a la tabla Comunas
ALTER TABLE Comunas ADD CONSTRAINT provincia_FK FOREIGN KEY (provincia_id) 
    REFERENCES Provincias (id_provincia);

-- 4) REGION
-- Crear Tabla Regiones
CREATE TABLE Regiones( 
    id_region         NUMBER NOT NULL, 
    nombre            VARCHAR2(250) NOT NULL,
);

-- Añadir la PK a la tabla Region
ALTER TABLE Regiones ADD CONSTRAINT region_PK PRIMARY KEY (id_region);

-- Añadir la Clave Foranea o FK a la tabla Provincias
ALTER TABLE Provincias ADD CONSTRAINT provincia_FK FOREIGN KEY (region_id) 
    REFERENCES Regiones (id_region);

-- 5) SECTOR
-- Crear Tabla Sector
CREATE TABLE Sector( 
    id_sector         NUMBER NOT NULL, 
    nombre            VARCHAR2(250) NOT NULL,
    parque_id         NUMBER NOT NULL, 
);

-- Añadir la PK a la tabla Sector
ALTER TABLE Sector ADD CONSTRAINT sector_PK PRIMARY KEY (id_sector);

-- 6) PARQUE
-- Crear Tabla Parques
CREATE TABLE Parques( 
    id_parque         NUMBER NOT NULL, 
    nombre            VARCHAR2(250) NOT NULL,
);

-- Añadir la PK a la tabla Parque
ALTER TABLE Parque ADD CONSTRAINT parque_PK PRIMARY KEY (id_parque);

-- Añadir la Clave Foranea o FK a la tabla Sector
ALTER TABLE Sector ADD CONSTRAINT parque_FK FOREIGN KEY (parque_id) 
    REFERENCES Parques (id_parque);

-- 7) Acompañante
-- Crear Tabla Acompañante
CREATE TABLE Acompanantes( 
    rut_acompanante     NUMBER(11) NOT NULL, 
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

-- Añadir la PK a la tabla Acompañante
ALTER TABLE Acompanantes ADD CONSTRAINT acompanante_PK PRIMARY KEY (rut_acompanante);

-- 8) RESERVAS
-- Crear Tabla Reservas
CREATE TABLE Reservas( 
    numero_reserva      NUMBER(11) NOT NULL,
    fecha_reserva       DATE NOT NULL,
    cliente_rut         NUMBER(11) NOT NULL,
    check_in            DATE NOT NULL,
    check_out           DATE NOT NULL,
    total_a_pagar       NUMBER NOT NULL,
    total_final         NUMBER NOT NULL,
    descuento_id        NUMBER NOT NULL,
    habitacion_id       NUMBER NOT NULL,
    parque_id           NUMBER NOT NULL,
);

-- Añadir la PK a la tabla Acompañante
ALTER TABLE Reservas ADD CONSTRAINT reservas_PK PRIMARY KEY (numero_reserva);