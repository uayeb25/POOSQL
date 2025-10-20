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

--Tabla de facultades 

CREATE TABLE academics.schools(
    id int IDENTITY(1,1) PRIMARY KEY
    , name nvarchar(200) NOT NULL
    , code nvarchar(20) NOT NULL UNIQUE
)

-- Tablas de carreras 
CREATE TABLE academics.careers(
    id int identity(1,1) PRIMARY KEY
    , school_id int not null
    , name nvarchar(200) NOT NULL
    , incorporated_year date null 
)

alter TABLE academics.careers
add CONSTRAINT FK_Careers_schools
FOREIGN key (school_id) REFERENCES academics.schools(id)


--- Tabla de Estudiantes y Carreras 
CREATE table academics.student_careers(
    student_id int NOT NULL
    , career_id int not null
    , enrollment_date date null
)

alter TABLE academics.student_careers
add CONSTRAINT PK_SC PRIMARY KEY (student_id, career_id)

alter table academics.student_careers
add CONSTRAINT FK_SC_S 
FOREIGN key (student_id) REFERENCES academics.students(id)

alter table academics.student_careers
add CONSTRAINT FK_SC_C
FOREIGN key (career_id) REFERENCES academics.careers(id)