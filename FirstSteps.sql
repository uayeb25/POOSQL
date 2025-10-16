CREATE schema academics

create table academics.students(
    id int IDENTITY(1,1) PRIMARY KEY
    , firstname nvarchar(100) not null 
    , lastname nvarchar(100) not null
    , idperson NVARCHAR(100) not null UNIQUE
    , email nvarchar(100) not null UNIQUE
)

select * from academics.students

INSERT into academics.students(
    firstname
    , lastname
    , idperson
    , email
) values (
    'John'
    , 'Doe'
    , '111'
    , 'john2.doe@example.com'
)