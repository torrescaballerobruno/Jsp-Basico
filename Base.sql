CREATE DATABASE proyecto

--crear un rol que sea proyecto y su contraseña sea 12345

CREATE TABLE public.usuario
(
  id integer NOT NULL,
  nombre varchar NOT NULL,
  ap_paterno character varying,
  ap_materno character varying,
  edad integer,
  sexo character(1),
  direccion character varying,
  email character varying,
  telefono character varying,
  CONSTRAINT pk_usuario PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.usuario
  OWNER TO proyecto;

insert into usuario(id,nombre,ap_paterno,ap_materno,edad ,sexo ,direccion,email,telefono) values(1,'Bruno','Torres','Caballero',22,'H','Calle 18','bruno.torres@gm3s.com.mx','551231212');
insert into usuario values(2,'Juan','Perez','Gonzo',30,'H','Iztapalacra','juan@perez.com','1234567890');

CREATE TABLE public.articulo
(
  id integer NOT NULL,
  nombre character varying NOT NULL,
  descripcion character varying,
  precio numeric(8,2) NOT NULL,
  cantidad integer NOT NULL,
  CONSTRAINT pk_articulo PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.articulo
  OWNER TO proyecto;

insert into articulo values(1,'pizza','Con piña chida',89.00,10);
insert into articulo values(2,'atun','para el foraneo que llevas dentro',23.50,15);
insert into articulo values(3,'arroz','Prepara facil',12.99,50);