create table Funcionario (
id Number not null ,
Matricula Number(32) not null,
cpf Varchar2(14) not null,
Nome Varchar2(32) not null,
Sobrenome Varchar2(32) not null,
Filial_id Number not null

);

create table Filial (
id Number not null ,
cnpj Varchar2(32) not null

);
create table Produto (
id Number not null ,
Marca Varchar2(32) not null,
Modelo Varchar2(14) not null,
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
