create schema if not exists Oficina_Usinagem;
use Oficina_Usinagem;

/* Criando tabela Cliente */
create table Cliente(
	idCliente int Primary key auto_increment,
    Fnome varchar(15) not null,
    Minit varchar(3),
    Lname varchar(15) not null,
    CPF char(9) unique not null,
    Endereço varchar(45) not null
);



/* Criando tabela Pedido*/
create table Pedido(
idPedido int auto_increment,
idCliente int,
StatusPedido ENUM('Não iniciado', 'Em processo', 'Pronto', 'Entregue') default 'Não iniciado',
Frete float not null,
primary key (idPedido, idCliente),
constraint fk_Pedido_cliente foreign key (idCliente) references cliente(idCliente)

);
/* Criando tabela Pagamento*/
create table Pagamento(
	idPagamento int auto_increment,
    idPedido int,
    Pagamento ENUM('Dinheiro', 'Boleto', 'Cartão', 'Pix', 'Dois cortões') not null,
    StatusPagamento ENUM('Não pago', 'Pago') not null,
    CodigoPagamento varchar(45),
    primary key (idPagamento, idPedido),
    constraint fk_Pagament_Pedido foreign key (idPedido) references Pedido(idPedido)

);
ALTER TABLE Pagamento
ADD COLUMN valor DECIMAL(10,2);
/* Criando tabela Peças*/
create table Peças(
	idPeça int auto_increment,
    idPedido int,
    NomePeça varchar(35) not null,
    TiposUsinagem varchar(35) not null,
    Quantidade int not null,
    primary key (idPeça, idPedido),
	constraint fk_Peças_Pedido foreign key (idPedido) references Pedido(idPedido)
);
/* Criando tabela Operador*/
create table Operador(
	idOperador int auto_increment primary key,
    Fnome varchar(15) not null,
    Minit varchar(3),
    Lname varchar(15) not null,
    CPF char(9) unique not null,
    Endereço varchar(45) not null
);
/* Criando tabela trabalho*/
create table trabalho (
	Trabalho int auto_increment,
    idOperador int,
    idPeça int,
    primary key (Trabalho, idOperador, idPeça),
    constraint fk_trabalho_operador foreign key (idOperador) references operador(idOperador),
    constraint fk_trabalho_idPeça foreign key (idPeça) references peças(idPeça)
);
/* Criando tabela HorasTrabalhadas*/
create table HorasTrabalhadas(
    idTrabalho int primary key,
    HorasTrabalhadas int not null,
    PagamentoHoraPeça float not null,
    MaquinaUtilizada ENUM('1', '2', '3', '4', '5', '6'),
    Operação ENUM('Torneamento', 'Aplainamento', 'Fresamento', 'Furação', 'Retificação', 'Outras') not null,
    Datainicio date,
    DataTermino date,
    constraint fk_HorasTrabalhadas_idtrabalho foreign key (idTrabalho) references trabalho(Trabalho)
);




