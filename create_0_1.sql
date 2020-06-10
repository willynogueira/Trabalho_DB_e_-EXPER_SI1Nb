create table Funcionario (
id Number not null ,
Matricula Number(32) not null,
cpf Varchar2(100) not null,
Nome Varchar2(32) not null,
Sobrenome Varchar2(32) not null,
Filial_id Number not null

);

create table Filial (
id Number not null ,
cnpj Varchar2(100) not null

);
create table Produto (
id Number not null ,
Marca Varchar2(32) not null,
Modelo Varchar2(32) not null,
Valor Number not null,
Quantidade Number not null

);
create table Atendente (
Nota Number (32) not null,
Funcionario_id Number not null

);
create table Atendimento (
id Number not null ,
Descricao Varchar2(100) not null,
Data Timestamp not null,
Avaliacao Number(32) not null,
Atendente_Funcionario_id Number not null

);
create table Vendedor (
Comissao Number(32) not null,
Funcionario_id Number not null

);
create table Venda (
id Number not null ,
Data Date not null,
Total Number(8,2) not null,
Vendedor_Funcionario_id Number not null

);
create table Item (
id Number not null ,
qtd Number (32) not null,
Produto_id Number not null,
Venda_id Number not null

);

create table Clientes(
id Integer primary key,
nome Varchar(32) not null,
sobrenome Varchar(32) not null,
cpf Varchar(100) not null unique,
email Varchar(32) unique,
unique(nome,sobrenome)
);

create table Tipdepag(
id Number not null primary key,
Numero Number not null,
Nome Varchar(32) not null,

unique(Numero, nome)

);


alter table Funcionario add constraint PK_Funcionario primary key(id);
alter table Filial add constraint PK_Filial primary key (id);
alter table Produto add constraint PK_Produto primary key (id);
alter table Atendimento add constraint PK_Atendimento primary key (id);
alter table Venda add constraint PK_Venda primary key (id);
alter table Item add constraint PK_Item primary key (id);

alter table Funcionario add constraint UK_Funcionario unique(Matricula);
alter table Filial add constraint UK_Filial unique(cnpj);

alter table Funcionario add constraint FK_Filial foreign key (Filial_id) references Filial(id);
alter table Atendimento add constraint FK_Atendente_Funcionario_id foreign key (Atendente_Funcionario_id) references Funcionario(id);
alter table Vendedor add constraint FK_Funcionario_id foreign key (Funcionario_id) references Funcionario(id);
alter table Venda add constraint FK_Vendedor_Funcionario_id foreign key (Vendedor_Funcionario_id) references Funcionario(id);
alter table Item add constraint FK_Produto_id foreign key (Produto_id) references Produto (id);
alter table Item add constraint FK_Venda_id foreign key (Venda_id) references Venda (id);


insert into Produto    (id,  Marca,  Modelo,   Valor, Quantidade)
				values(1001,'BIC','Caneta Azul',5.25,50);
				
				
				
insert into Clientes (id, nome, sobrenome, cpf, email) values (1000,'joaquina', 'cabral', '551.154.067-05', 'joaquina.cabral@uvvnet.com.br');
insert into Clientes (id, nome, sobrenome, cpf, email) values (1001,'mariana', 'sousa', '137.517.050-02', 'mariana.sousa@uvvnet.com.br');
insert into Clientes (id, nome, sobrenome, cpf, email) values (1002,'adriano', 'cabral', '718.134.154-16', 'adriano.cabral@uvvnet.com.br');
insert into Clientes (id, nome, sobrenome, cpf, email) values (1003,'susileia', 'silveira', '211.613.110-41', 'susileia.silveira@uvvnet.com.br');
insert into Clientes (id, nome, sobrenome, cpf, email) values (1004,'nielsen', 'santos', '135.868.077-33', 'nielsen.santos@uvvnet.com.br');
insert into Clientes (id, nome, sobrenome, cpf, email) values (1005,'gabi', 'cabral', '462.724.317-80', 'gabi.cabral@uvvnet.com.br');
insert into Clientes (id, nome, sobrenome, cpf, email) values (1006,'jorge', 'cabral', '018.180.451-28', 'jorge.cabral@uvvnet.com.br');
insert into Clientes (id, nome, sobrenome, cpf, email) values (1007,'thiago', 'cabral', '448.837.228-55', 'thiago.cabral@uvvnet.com.br');
insert into Clientes (id, nome, sobrenome, cpf, email) values (1008,'rodrigo', 'rocha', '673.061.671-15', 'rodrigo.rocha@uvvnet.com.br');
insert into Clientes (id, nome, sobrenome, cpf, email) values (1009,'ricardo', 'alves', '614.026.767-88', 'ricardo.alves@uvvnet.com.br');
insert into Clientes (id, nome, sobrenome, cpf, email) values (1010,'nielsen', 'alves', '474.322.013-75', 'nielsen.alves@uvvnet.com.br');
insert into Clientes (id, nome, sobrenome, cpf, email) values (1011,'alessandro', 'alves', '285.048.385-05', 'alessandro.alves@uvvnet.com.br');
insert into Clientes (id, nome, sobrenome, cpf, email) values (1012,'gabi', 'santos', '376.581.120-58', 'gabi.santos@uvvnet.com.br');
insert into Clientes (id, nome, sobrenome, cpf, email) values (1013,'marcelo', 'cabral', '326.622.176-55', 'marcelo.cabral@uvvnet.com.br');
insert into Clientes (id, nome, sobrenome, cpf, email) values (1014,'joana', 'silveira', '063.722.381-47', 'joana.silveira@uvvnet.com.br');
insert into Clientes (id, nome, sobrenome, cpf, email) values (1015,'analise', 'cabral', '150.450.680-62', 'analise.cabral@uvvnet.com.br');
insert into Clientes (id, nome, sobrenome, cpf, email) values (1016,'mariana', 'pinheiro', '030.855.747-03', 'mariana.pinheiro@uvvnet.com.br');
insert into Clientes (id, nome, sobrenome, cpf, email) values (1017,'isac', 'silveira', '683.402.361-36', 'isac.silveira@uvvnet.com.br');
insert into Clientes (id, nome, sobrenome, cpf, email) values (1018,'susileia', 'alves', '018.263.411-35', 'susileia.alves@uvvnet.com.br');
insert into Clientes (id, nome, sobrenome, cpf, email) values (1019,'alessandro', 'rocha', '785.454.868-34', 'alessandro.rocha@uvvnet.com.br');




insert into Tipdepag (id, Numero,  nome) values   (202, 102, 'AMEX');
insert into Tipdepag (id, Numero,  nome) values   (203, 1382, 'BANESCARD CREDITO');
insert into Tipdepag (id, Numero,  nome) values   (204, 139, 'BANESCARD DEBITO');
insert into Tipdepag (id, Numero,  nome) values   (205, 101, 'CHEQUE A VISTA');
insert into Tipdepag (id, Numero,  nome) values   (206, 103, 'CHEQUE A PRAZO');
insert into Tipdepag (id, Numero,  nome) values   (207, 520, 'COMPROCARD');
insert into Tipdepag (id, Numero,  nome) values   (208, 262, 'ELO CREDITO');
insert into Tipdepag (id, Numero,  nome) values   (209, 261, 'ELO DEBITO');
insert into Tipdepag (id, Numero,  nome) values   (210, 3, 'NOTA A PRAZO');
insert into Tipdepag (id, Numero,  nome) values   (211, 3, 'MAESTRO');
insert into Tipdepag (id, Numero,  nome) values   (212, 6, 'MASTERCARD');
insert into Tipdepag (id, Numero,  nome) values   (213, 4, 'VISA CREDITO');
insert into Tipdepag (id, Numero,  nome) values   (214, 5, 'VISA DEBITO');


insert into Filial (id, cnpj) values (777, 112223331000102);                    
insert into Filial (id, cnpj) values (727, 112223331000132);


insert into  Funcionario   (id, Matricula, cpf, Nome, Sobrenome, Filial_id)
                    values (1001, 111, 11122233302, 'Andre', 'Lima', 777);
insert into  Funcionario   (id, Matricula, cpf, Nome, Sobrenome, Filial_id)
                    values (1002, 112, 15625423312, 'Saulo', 'Costa', 777);
insert into  Funcionario   (id, Matricula, cpf, Nome, Sobrenome, Filial_id)
                    values (1003, 113, 11922633322, 'Filipe', 'Tesla', 777);
insert into  Funcionario   (id, Matricula, cpf, Nome, Sobrenome, Filial_id)
                    values (1004, 114, 11926243312, 'Joao', 'Carlos', 777);
insert into  Funcionario   (id, Matricula, cpf, Nome, Sobrenome, Filial_id)
                    values (1005, 115, 11622273306, 'Mateus', 'Alves', 777);
insert into  Funcionario   (id, Matricula, cpf, Nome, Sobrenome, Filial_id)
                    values (1006, 116, 21244432311, 'Ana', 'Toledo', 777);
insert into  Funcionario   (id, Matricula, cpf, Nome, Sobrenome, Filial_id)
                    values (1007, 117, 21294332911, 'Amanda', 'Toledo', 727);

