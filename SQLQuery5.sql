create database Author
use Author

create table Books
(
Id int primary key identity,
Name nvarchar(100)not null,
AuthorId int foreign key references Author(id),
PageCount int
)

create table Author
(
 Id int primary key identity,
 name nvarchar(100) not null,
 Surname nvarchar(100) not null
)

insert into Books(Name,AuthorId,PageCount) values('Ali ve Nino',1,10)

insert into Author(name,Surname) values('Ali','Qurban')

CREATE VIEW BooksAuthorsView 
AS
SELECT 
    b.Id AS BookId,
    b.Name AS BookName,
    b.PageCount,
    CONCAT(a.Name, ' ', a.Surname) AS AuthorFullName
FROM 
    Books b
INNER JOIN 
    Author a ON b.AuthorId = a.Id;

SELECT * FROM BooksAuthorsView;