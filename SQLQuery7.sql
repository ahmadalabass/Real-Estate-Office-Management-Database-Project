 create table Boss(IdBoss int primary key, Name varchar not null,
Age int not null,Salary int check(Salary between 1000 and 2000));

create table Section(IdSection int primary key,Type varchar,
IdBoss int references Boss(IdBoss));

create table Deal(IdDeal int primary key,typeDeal varchar,DateEnd date,
DateStart date,AmountDeal int not null,AmountRemaining int);

create table Customers(IdCustomers int primary key,Name varchar,
Gander varchar  default ('male'),Naionality varchar default ('Syria'),
ContactNumber int not null,Location varchar not null,
IdDeal int references Deal(IdDeal));

create table Realty(IdRealty int primary key,TypeRealty varchar,SpaceRealty int,
RealtyLocatin varchar,OwnersipStatus varchar,RealtyOwner varchar,
ConlaclNumber int  ,IdDeal int references Deal(IdDeal),IdCustomers int references Customers(IdCustomers));

create table Employe(IdEmploye int primary key,Name varchar not null,
Salary int  check(Salary between 1000 and 2000),Gender varchar not null,
Nationality varchar  default ('Syria'),WorkHours int,DateOfBirth date,
IdSection int references Section(IdSection));

create table Employe_Section(Id int primary key,
IdDeal int references Deal(IdDeal),
IdEmploye int references Employe(IdEmploye));

create table Realty_Section(Id int primary key,
IdSection int references Section(IdSection),IdRealty int references Realty(IdRealty));





