CREATE schema academics

create table academics.students(
    id int IDENTITY(1,1) PRIMARY KEY
    , firstname nvarchar(100) not null 
    , lastname nvarchar(100) not null
    , idperson NVARCHAR(100) not null UNIQUE
    , email nvarchar(100) not null UNIQUE
)


--Modificar la estructura de la tabla agregando una nueva columna 
alter table academics.students add age int null


select * from academics.students


--- Ejemplo de inserción exitosa
INSERT into academics.students(
    firstname
    , lastname
    , idperson
    , email
) values (
    'Uayeb'
    , 'Caballero'
    , '111'
    , 'uayeb.caballero@gmail.com'
)


INSERT into academics.students(
    firstname
    , lastname
    , idperson
    , email
) values (
    'Uayeb'
    , 'Caballero'
    , '111'
    , 'uayeb.caballero@gmail.com'
)


--- Ejemplo de actualizacion exitosa
UPDATE academics.students
SET firstname = 'Uayeb', lastname = 'Rodriguez', email = 'uayeb.caballero@gmail.com', idperson= '111'
WHERE id = 3

-- ejemplo para actualizar todos los registros
update academics.students
set age = 19

-- actualizar el "age" a 36, donde el lastname es igual a Caballero
UPDATE academics.students
set age = 36
where lastname = 'Caballero'

-- ejemplo para eliminiar un registro con id = 3
delete FROM academics.students
where id = 3


--- selecionar a todos los estudiantes menores de 20 años
select
    id 
    , lastname
    , email
    , age
from academics.students
where age < 20