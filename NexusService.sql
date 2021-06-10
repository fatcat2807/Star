create database NexusService
go

use NexusService
go

create table Product
(
	Id_Product varchar(50) primary key,
	Name_Product varchar(50),
	Id_Customers int,
	Customers varchar(50),
	ConnectionType varchar(50),
	Price money,
	PriceType varchar(50),
	Assess varchar(250),
	[status] bit,
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
	Id_Connection int
)

create table Store
(
	Id_Store int primary key,
	Id_Connection int,
	ConnectionType varchar(50),
	Price money,
	PriceType varchar(50),
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
	Quantity int,
	Information varchar(250),
)