/*Crear Base de Datos*/
CREATE database HolaMundo;
/*Mostrar bases de Datos Existentes*/
SHOW DATABASES;
/*Usar Base de Datos especificada*/
USE HolaMundo;
/*Crear Tabla en la Base de Datos*/
CREATE TABLE animales (
	/*Crear Columanas en la Tabla*/
	id INT AUTO_INCREMENT,
    tipo VARCHAR(255),
    estado VARCHAR(255),
    PRIMARY KEY (id)
); 

/*Insertar datos en las columnas*/
INSERT INTO animales (tipo, estado) VALUES ('Caballo', 'Corriendo');
INSERT INTO animales (tipo, estado) VALUES ('Tortuga', 'Caminando');
INSERT INTO animales (tipo, estado) VALUES ('Perro', 'Comiendo');

/*Modificar una tabla
ALTER TABLE animales MODIFY id INT AUTO_INCREMENT;*/

/*Mostrar codigo de creacion de la tabla
SHOW CREATE TABLE animales;*/

/*Seleccionar informacion de las tablas*/
SELECT * FROM animales;
SELECT id FROM animales;
SELECT tipo FROM animales;
SELECT estado FROM animales;
/*Seleccionar por atributo, puede ser cualquier atributo*/
SELECT * FROM animales WHERE id='1';
/*Seleccionar por atributo pero mas especifico*/
SELECT * FROM animales WHERE estado='Caminando' AND tipo='Tortuga';

/*Actualizacion de campo*/
UPDATE animales SET estado='Ladrando' WHERE id='3';

/*Error 1175. Se debe especificar la clave primaria para eliminar, 
  esto evita eliminar todo lo de la tabla
DELETE FROM animales WHERE estado='Ladrando';*/
DELETE FROM animales WHERE id='1';

/*Error 1175. Se debe especificar la clave primaria para actualizar al igual que al eliminar, 
UPDATE animales SET estado='Ladrando' WHERE tipo='Perro';*/
UPDATE animales SET estado='Ladrando' WHERE id='3';


