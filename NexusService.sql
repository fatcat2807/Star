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
	[image] varchar(250) not null,
	UsedTime datetime,
	Assess varchar(250),
	[status] bit,
)

create table Customer
(
	Id_Customer varchar(50) primary key,
	[Name] varchar(50),
	Pass varchar(50),
	Email varchar(50),
	Phone varchar(10),
	[status] bit,
	[Role] varchar(5),
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

create table Plans
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

create table Messenger
(
	Id_Customer varchar(50),
	[Name] varchar(50),
	content varchar(250),
	
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

ALTER TABLE Plans
Add FOREIGN KEY (Id_Bill) REFERENCES Bill(Id_Bill);

ALTER TABLE Plans
Add FOREIGN KEY (Id_Store) REFERENCES Store(Id_Store);

ALTER TABLE Messenger
Add FOREIGN KEY (Id_Customer) REFERENCES Customer(Id_Customer);

insert into Customer (Id_Customer, [Name], Pass, Email, Phone, [status], [Role]) 
values ('1' ,'admin', '1234', 'admin@gmail.com', '0168461864' , 1, 'admin');

insert into Customer (Id_Customer, [Name], Pass, Email, Phone, [status], [Role]) 
values ('D000D00000000001' ,'user', '123', 'user@gmail.com', '4616486138' , 1, 'user');

insert into Product (Id_Product, Name_Product,  ConnectionType, Price, [image], UsedTime, Assess, [status]) 
values (1 ,'ST10K', '1 ngay', 10, 'ST10K.png' , 10/10/2021 , '10k', 1);

insert into Store (Id_Store, Name_Store, Id_Product, ConnectionType, [status]) 
values (1 ,'Viettle', 1, '1 ngay', 1);
