CREATE TABLE clientes (
    rut_cliente NUMBER(11) NOT NULL,
    dv CHAR(1) NOT NULL,
    primer_nombre VARCHAR(250) NOT NULL,
    segundo_nombre VARCHAR(250) ,
    primer_paterno VARCHAR(250) NOT NULL,
    segundo_materno VARCHAR(250) ,
    direccion VARCHAR(250) NOT NULL,
    fono NUMBER NOT NULL,
    correo VARCHAR(250) NOT NULL,
    comuna_id NUMBER NOT NULL,
);