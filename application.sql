create table application
(
	idApplication int not null
		primary key,
	Sum int null,
	CreditState varchar(45) null,
	Currency varchar(45) null,
	Client_idClient int not null,
	constraint fk_Application_Client1
		foreign key (Client_idClient) references client (idClient)
);

create index fk_Application_Client1_idx
	on application (Client_idClient);

