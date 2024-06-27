/*Crear tabla*/
CREATE TABLE products (
	id int not null auto_increment,
	name varchar(50),
    /*Columna de la llave foranea*/
    create_by int not null,
    marca varchar(50),
    primary key (id),
    /*Columna de la llave foranea*/
    foreign key (create_by) references user (id)
);

/*Cambiar el nombre de la tabla*/
rename table products to product;

/*Insertar varios atributos y varias columnas a la vez*/
INSERT INTO product (name, create_by, marca)
VALUES
	('ipad', '1', 'apple'),
    ('iphone', '1', 'apple'),
    ('watch', '2', 'apple'),
    ('macbook', '1', 'apple'),
    ('imac', '3', 'apple'),
    ('ipad mini', '2', 'apple');
    
SELECT * FROM product;

/*Let Jion
Es la union de columnas de dos tablas diferentes por medio de un campo que tengan en comun
Se les da un alias a las tablas con el que se podrar hacer selecciones especificas de las
columnas.
Se declara la union de los campos de las de las dos tablas para que cuando se selecciones informacion
de las tablas la agrupe con la informacion de del campo que tienen en comun.
En el ejemplo se une la llave primaria de la tabla user con la lleve foranea de la tabla product.
*/
/*left join se declara entre las dos tablas a unir.
  Las letras u y p representan al el alias y asi solo se uas el alias y el nombre del campo para seleccionarlo.
  on u.id = p.create_by es para especificar que campos son los que seran unidos*/
/*Trae todos los registros de la tabla user y de la tabla product trae solo los registros que
  estan asociados con un registro de la tabla user*/
select u.id, u.email, p.name from user u left join product p on u.id = p.create_by;

/*right Join
  El funcionamiento es similar solo que left Join pero con la diferencia que se toma a la tabla product 
  en este caso como la principal y mostrara todos los registros de la tabla product pero de la tabla 
  user solo mostrara los que esten asociados con un registro de la tabla product*/
select u.id, u.email, p.name from user u right join product p on u.id = p.create_by;

/*inner Join
   En este caso no toma una tabla como principal sino que selecciona los registros que se encuetran
   en la interseccion entre las dos tablas, es decir solo campos que esten asociados no importa que
   que tabla sea*/
select u.id, u.email, p.name from user u inner join product p on u.id = p.create_by;

/*croos join 
  En este caso toma un campo y va asociando uno por uno los registro de ese campo con los registro de 
  el campo seleccionado de la otra atabla tambien uno por uno y muestra todos los campos ya asociados
  todos con todos*/
select u.id, u.name, p.id, p.name from user u cross join product p;

/*group by
  Se usa para agrupar en conjuntos los registros esto a conveniencia de la consulta*/
/*Se agrupo por marca*/
select count(id), marca from product group by marca;

/*Aqui agrupamos segun el id de la tabla producto los nombres de los usuarios que crearon el producto
  Cuantos productos a creado cada usuario*/
select count(p.id), u.name from product p left join user u on u.id = create_by group by create_by; 

/*Usando having colocamos una condicion para solo seleccionar los que cumplan esa condicion*/
select count(p.id), u.name from product p left join user u on u.id = create_by group by create_by
having count(p.id) >= 2;

/*Se usa para eliminar la tabla que digamos*/
drop table animales;