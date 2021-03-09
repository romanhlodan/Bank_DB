create table client
(
	idClient int not null
		primary key,
	FirstName varchar(45) null,
	LastName varchar(45) null,
	Education varchar(45) null,
	Passport varchar(45) null,
	City varchar(45) null,
	Age varchar(45) null,
	Department_idDepartment int not null,
	constraint fk_Client_Department
		foreign key (Department_idDepartment) references department (idDepartment)
);

create index fk_Client_Department_idx
	on client (Department_idDepartment);

