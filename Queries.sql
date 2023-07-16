use Oficina_Usinagem;
/* Recuperações simples com SELECT Statement */
select * from cliente;
select * from pedido;
select * from pagamento;
select * from peças;
select * from trabalho;
select * from Operador;

/* Filtros com WHERE Statement */
select * from cliente where fnome='João';
select * from pedido where frete >= 10;
select * from peças where quantidade <= 45;
select * from operador where Lname='Rocha';

/* Crie expressões para gerar atributos derivados */
select p.idPedido AS pedido, (p.frete + pa.valor) AS valor_final FROM pedido AS p, pagamento AS pa where p.idPedido = pa.idPedido;
select valor*1.1 as Valor_com_juros, idPedido from pagamento where Pagamento='Cartão';
select concat(Fnome, ' ',Minit, ' ', Lname) as nome_completo, idCliente from cliente;

/* Defina ordenações dos dados com ORDER BY;*/
select concat(Fnome, ' ',Minit, ' ', Lname) as nome_completo from operador order by fnome desc;
Select nomepeça from peças order by NomePeça;
select idpeça from peças order by NomePeça;

/* Condições de filtros aos grupos – HAVING Statement */
/* Quais são as pessoas que já fizeram mais de um pedido? */
select concat(Fnome, ' ',Minit, ' ', Lname) as nome_completo, c.idCliente, count(*) as Qnt_pedidos from cliente c, pedido p
where c.idCliente =p.idCliente
group by p.idcliente
having count(*) >1;

/* Quantidade de peças em que o cliente pediu mais de uma peça */
select concat(Fnome, ' ',Minit, ' ', Lname) as nome_completo, c.idCliente, count(*) as Qnt_peças from cliente c, pedido p, peças pe
where c.idCliente = p.idCliente and p.idPedido = pe.idPedido
group by p.idcliente
having count(*) >1;

/* Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados */
SELECT p.idPedido AS pedido, (p.frete + pa.valor) AS valor_final
FROM pedido AS p
JOIN pagamento AS pa ON p.idPedido = pa.idPedido;

/* Mostrando os nomes de clientes que não são iguais ao nome de operadores */
SELECT CONCAT(c.Fnome, ' ', c.Minit, ' ', c.Lname) AS nome_completo 
FROM cliente AS c
LEFT JOIN operador AS o ON o.Fnome = c.Fnome;
