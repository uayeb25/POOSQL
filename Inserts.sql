--- INSERTS FOR STUDENTS ----
----------------------------- 

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
    , age
) values (
    'Corina'
    , 'Caballero'
    , '113'
    , 'corina.caballero@gmail.com'
    , 18
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


--- INSERTS FOR SCHOOLS ----
-----------------------------

insert into academics.schools (
    [name],
    [code]
) values (
    'Facultad de Ciencias Economicas'
    , 'CE'
),(
    'Facultad de Inegenieria'
    , 'FI'
),(
    'Facultad de Humanidades'
    , 'FH'
)




--- INSERTS FOR careers ----
-----------------------------

insert into academics.careers (
    school_id,
    [name],
    incorporated_year
) values (
    111, 
    'Ingenieria en Sistemas',
    '2002-01-01'
)

update academics.careers
set school_id = 2, name = 'Ingenieria en Sistemas'
where name = 'Ingenieria en Sistemas'


insert into academics.careers (
    school_id,
    [name],
    incorporated_year
) values (
    2, 
    'Ingenieria Electrica',
    '2002-01-01'
)

--- INSERTS FOR student_careers ----
-----------------------------

delete from academics.student_careers
truncate TABLE academics.student_careers

insert into academics.student_careers 
values(1, 1, null)

insert into academics.student_careers 
values(1, 4, '2024-01-15')

UPDATE academics.student_careers
SET enrollment_date = '2024-02-01'
where student_id = 1 and career_id = 1






