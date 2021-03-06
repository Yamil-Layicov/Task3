Create Database Anyway

Use Anyway

Create Table Brands(
   Id int Primary Key Identity,
   Name nvarchar(50)
)

Create Table Nootbooks(
   Id int Constraint PK_Nootbooks_Id Primary Key Identity,
   Name nvarchar(50),
   Price money,
   BrandId int Foreign Key References Brands(Id)
)

Create Table Phones(
   Id int Constraint PK_Phones_Id Primary Key Identity,
   Name nvarchar(50),
   Price money,
   BrandId int Foreign Key References Brands(Id)
)

Select a.Name,b.Name BrandName From Nootbooks a  Join Brands b On a.BrandId=b.Id

Select a.Name,b.Name BrandName From Phones a  Join Brands b On a.BrandId=b.Id

Select * From Nootbooks Where Price Between 2000 And 5000 Or Price > 5000

Select * From Phones Where Price Between 1000 And 1500 Or Price > 1500

Select b.Name, Count(*)  From Brands b
Join Nootbooks n on n.BrandId=b.Id
Group By b.Name

