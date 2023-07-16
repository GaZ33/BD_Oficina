/* Persistencias de dados na tabela Cliente*/
desc cliente;

insert into cliente (Fnome, MInit, Lname, CPF, Endereço) values
			('João', 'A G F', 'Silva', '123456789', 'Rua A, 123'),
			('Maria', 'K F', 'Santos', '987654321', 'Avenida B, 456'),
            ('Ana', 'M', 'Pereira', '111222333', 'Rua D, 789'),
			('Carlos', 'R', 'Ferreira', '444555666', 'Avenida E, 987'),
			('Mariana', 'S', 'Costa', '777888999', 'Rua F, 654'),
			('Lucas', 'T', 'Rocha', '000999888', 'Avenida G, 321'),
			('Pedro', 'P H', 'Oliveira', '456789123', 'Rua C, 789');
select * from cliente;
/* Persistencias de dados na tabela pedido*/
insert into pedido (idCliente, StatusPedido, frete) values
				(1, 'Não iniciado', 10.00),
				(2, 'Em processo', 15.50),
				(3, 'Pronto', 20.00),
				(4, 'Entregue', 12.75),
                (5, 'Em processo', 18.50),
				(6, 'Não iniciado', 14.75),
				(7, 'Pronto', 22.00),
				(1, 'Entregue', 9.99),
				(1, 'Não iniciado', 11.25),
				(1, 'Pronto', 17.50),
				(2, 'Entregue', 13.25);
select * from pedido;
desc pagamento;
/* Persistencias de dados na tabela pagamento */
insert into pagamento (idPedido, pagamento, statusPagamento, CodigoPagamento, valor) values
					(1, 'Dinheiro', 'Pago', 'PQR678', 80.00),
					(2, 'Cartão', 'Não pago', 'STU901', 120.50),
					(3, 'Boleto', 'Pago', 'VWX234', 90.75),
					(4, 'Pix', 'Não pago', 'YZA567', 60.25),
                    (6, 'Pix', 'Não pago', 'EFG123', 70.50),
					(7, 'Cartão', 'Pago', 'HIJ456', 200.00),
					(5, 'Dois cartões', 'Pago', 'BCD890', 150.00),
                    (8, 'Boleto', 'Não pago', 'KLM789', 110.25),
                    (9, 'Dinheiro', 'Pago', 'NOP012', 95.50),
					(10, 'Cartão', 'Pago', 'QRS345', 180.75),
					(11, 'Boleto', 'Não pago', 'TUV678', 120.25);
select * from pagamento;
desc peças;
/* Persistencias de dados na tabela peças */
insert into peças (NomePeça, idPedido, TiposUsinagem, Quantidade) values
				('Engrenagem', 1, 'Torneamento e Fresamento', 10),
				('Placa de circuito', 2, 'Fresamento e Furação', 5),
				('Haste de metal', 3, 'Aplainamento e Retificação', 8),
				('Mola de compressão', 4, 'Retificação', 20),
				('Pino de fixação', 5, 'Furação', 15),
				('Parafuso', 6, 'Fresamento e Furação', 100),
				('Eixo', 7, 'Torneamento e Retificação', 25),
				('Chapa de metal', 8, 'Aplainamento', 50),
				('Válvula', 9, 'Fresamento e Retificação', 15),
				('Engate rápido', 10, 'Torneamento e Furação', 30),
				('Placa de identificação', 11, 'Fresamento', 5);
				('Parafuso', 1, 'Furação', 50),
				('Engrenagem', 1, 'Torneamento', 20),
				('Placa de circuito', 1, 'Fresamento', 15),
				('Mola de compressão', 2, 'Retificação', 10),
				('Pino de fixação', 2, 'Furação', 8),
				('Placa de identificação', 3, 'Fresamento', 5);
select * from peças;
/* Persistencias de dados na tabela Operador */
insert into operador (Fnome, MInit, Lname, CPF, Endereço) values
					('João', 'A', 'Silva', '123456789', 'Rua A, 123'),
					('Maria', 'B', 'Santos', '987654321', 'Avenida B, 456'),
					('Pedro', 'C', 'Oliveira', '456789123', 'Rua C, 789'),
					('Ana', 'D', 'Pereira', '111222333', 'Rua D, 987'),
					('Carlos', 'E', 'Ferreira', '444555666', 'Avenida E, 654'),
					('Mariana', 'F', 'Costa', '777888999', 'Rua F, 321'),
					('Lucas', 'G', 'Rocha', '000999888', 'Avenida G, 654');
select * from operador;
desc trabalho;
/* Relacionando dados na tabela trabalho */
insert into trabalho(idOperador, idPeça) values
					(1, 1),
					(2, 2),
					(3, 3),
					(4, 4),
					(5, 5),
					(1, 6),
					(1, 7),
					(2, 8),
					(2, 9),
					(3, 10),
					(3, 11);
select * from trabalho;
desc HorasTrabalhadas;
/* Persistencias de dados na tabela HorasTrabalhadas*/
insert into HorasTrabalhadas(idTrabalho, horasTrabalhadas,PagamentoHoraPeça,MaquinaUtilizada,Operação,Datainicio,DataTermino) values
							(1, 8, 15.50, '1', 'Torneamento', '2023-01-15', '2023-01-18'),
							(2, 6, 12.25, '2', 'Fresamento', '2023-02-10', '2023-02-12'),
							(3, 7, 14.75, '3', 'Aplainamento', '2023-03-05', '2023-03-08'),
							(4, 9, 18.50, '4', 'Furação', '2023-04-20', '2023-04-22'),
							(5, 5, 10.00, '5', 'Retificação', '2023-05-15', '2023-05-16'),
							(6, 6, 12.75, '6', 'Outras', '2023-06-10', '2023-06-12'),
							(7, 8, 15.00, '1', 'Torneamento', '2023-07-05', '2023-07-08'),
							(8, 7, 14.25, '2', 'Fresamento', '2023-08-10', '2023-08-12'),
							(9, 5, 10.50, '3', 'Aplainamento', '2023-09-02', '2023-09-04'),
							(10, 6, 12.00, '4', 'Furação', '2023-10-18', '2023-10-20'),
							(11, 9, 18.75, '5', 'Retificação', '2023-11-15', '2023-11-18');
select * from HorasTrabalhadas;