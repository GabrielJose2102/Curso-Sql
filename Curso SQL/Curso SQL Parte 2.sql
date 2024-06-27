USE HolaMundo;

CREATE TABLE user (
	id int not null auto_increment,
    name varchar(50) not null,
    edad int not null,
    email varchar(100) not null,
    primary key (id)
);

INSERT INTO user (name, edad, email) VALUES ('Oscar', 25, 'oscar@gmail.com');
INSERT INTO user (name, edad, email) VALUES ('Layla', 15, 'layla@gmail.com');
INSERT INTO user (name, edad, email) VALUES ('Nicolas', 36, 'nico@gmail.com');
INSERT INTO user (name, edad, email) VALUES ('Juan', 7, 'juan@gmail.com');

/*Uso mas especifico de SELECT*/
SELECT * FROM user;
/*Se le coloca un limite de filas que seleccionara*/
SELECT * FROM user LIMIT 1;
SELECT * FROM user WHERE edad > 15;
SELECT * FROM user WHERE edad >= 15;
SELECT * FROM user WHERE edad < 15;
/*Debe de cumplir todas las condiciones para ser seleccionado*/
SELECT * FROM user WHERE edad > 20 AND email='nico@gmail.com';
/*Debe cumplir una de las condiciones para ser seleccionado*/
SELECT * FROM user WHERE edad > 20 OR email='layla@gmail.com';
SELECT * FROM user WHERE email != 'layla@gmail.com';
/*Solo se seleccionaran los registro que esten dentro del rango*/
SELECT * FROM user WHERE edad BETWEEN 15 AND 30;
/*Debe de contener lo que esta indicado para que sea seleccionado no importan que va antes o despues*/
SELECT * FROM user WHERE email LIKE '%@gmail%';
/*Debe de contener lo que esta indicado para que sea seleccionado no importan que va antes pero si lo que despues*/
SELECT * FROM user WHERE email LIKE '%@gmail';
/*Debe de contener lo que esta indicado para que sea seleccionado no importan que va despues pero si antes*/
SELECT * FROM user WHERE email LIKE 'OScar%';

/*Buscar y ordenar los campos de forma ascendente y descendente*/
SELECT * FROM user ORDER BY edad asc;
SELECT * FROM user ORDER BY edad desc;

/*Selecciona dependiendo el caso, si es mayor o menor*/
SELECT max(edad) AS mayor FROM user;
SELECT min(edad) AS menor FROM user;


/*Seleccionar de forma especifica columnas de una tabla*/
SELECT id, name FROM user;
/*Seleccionar de forma especifica columnas de una tabla y canbiar nombre de una columna*/
SELECT id, name AS nombre FROM user;