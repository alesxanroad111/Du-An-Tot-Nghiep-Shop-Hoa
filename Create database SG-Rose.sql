Create database SG_Rose

use SG_Rose

create table TypesOfFlowers (
 Id Varchar(20) primary key not null,
 Name Nvarchar(50) not null,
 Image Nvarchar(50)
)

create table Flowers (
	Id Varchar(20) primary key not null,
	Name Nvarchar(50) not null,
	TypeId Varchar(20) foreign key references TypesOfFlowers(Id),
	Amount int not null,
	Price int,
	Image Nvarchar(100),
	Notes Nvarchar(500),
	Created_time Date default getdate(),
	Update_time Date default getdate()
)

create table Users (
	Id Varchar(20) primary key not null,
	Name Nvarchar(50) not null,
	Email Nvarchar(100) not null,
	Address Nvarchar(200) not null,
	Phone varchar(20) not null,
	Password Nvarchar(100) not null,
	Avatar Varchar(200),
	Gender int,
	Is_Active tinyint not null,
	Created_time Date default getdate(),
	Updated_time Date default getdate()
)

create table Roles (

)

create table Staffs (

)

create table Orders (
	
)

create table OrdersDetails (

)

create table Bills (

)

create table BillsDetail (

)

create table Companys (

)

create table Supports (

)

create table Contacts (

)
