create database NexusService
go

use NexusService
go

create table EquipmentManagement
(
	TypeOfEuipment varchar(1) primary key,
	Name_Equip varchar(50),
	Id_Customer varchar(50),
	[Name] varchar(50),
)

create table Product
(
	Id_Product varchar(50) primary key,
	Name_Product varchar(50),
	Customers varchar(50),
	ConnectionType varchar(50),
	Price money,
	PriceType varchar(50),
	UsedTime datetime,
	Assess varchar(250),
	[status] bit,
	roll bit
)

create table Customer
(
	Id_Customer varchar(50) primary key,
	[Name] varchar(50),
	Pass varchar(50),
	Email varchar(50),
	Sex varchar(50),
	Phone varchar(10),
	[status] bit,
)
create table Bill
(
	Id_Bill int identity primary key,
	Id_Product varchar(50),
	Name_Product varchar(50),
	Id_Customer varchar(50),
	[Name] varchar(50),
	Price money,
	PriceType varchar(50),
)

create table Store
(
	Id_Store int primary key,
	Name_Store varchar(50),
	Id_Product varchar(50),
	ConnectionType varchar(50),
	[status] bit,
)

create table Staff
(
	Id_Staff int primary key,
	[Name] varchar(50),
	Pass varchar(50),
	Age int,
	Sex varchar(50),
	Id_Store int,
	[status] bit,
)

create table ProductDetails 
(
	
	Id_Product varchar(50),
	Name_Product varchar(50),
	Price money,
	Information varchar(250),
)

create table Plane
(
	Id_Plane int identity primary key,
	Id_Customer varchar(50),
	[Name] varchar(50),
	Id_Bill int,
	Id_Product varchar(50),
	Name_Product varchar(50),
	Id_Store int,
	Name_Store varchar(50),
	Area varchar(50),
	ConnectionType varchar(50),
	Price money,
)


ALTER TABLE Bill
Add FOREIGN KEY (Id_Product) REFERENCES Product(Id_Product);

ALTER TABLE Bill
Add FOREIGN KEY (Id_Customer) REFERENCES Customer(Id_Customer);

ALTER TABLE Store
Add FOREIGN KEY (Id_Product) REFERENCES Product(Id_Product);

ALTER TABLE ProductDetails
Add FOREIGN KEY (Id_Product) REFERENCES Product(Id_Product);

ALTER TABLE Staff
ADD FOREIGN KEY (Id_Store) REFERENCES Store(Id_Store);

ALTER TABLE EquipmentManagement
Add FOREIGN KEY (Id_Customer) REFERENCES Customer(Id_Customer);

ALTER TABLE Plane
Add FOREIGN KEY (Id_Bill) REFERENCES Bill(Id_Bill);

ALTER TABLE Plane
Add FOREIGN KEY (Id_Store) REFERENCES Store(Id_Store);
