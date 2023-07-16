# BD_Oficina
Desafio: Projeto banco de dados do zero - Oficina

## Sobre o projeto
Optei em criar um Banco de Dados para uma oficina de usinagem, pois, eu faço curso de usinagem. Criei o Banco de Dados dessa naneira, já que é a maneira na qual trabalhamos. Cada um faz sua própria peça, independente dos processos de usinagens necessários para fazer ela. Eu sei que em industrias vários operadores trabalham em uma mesma peça, já que alguns estão mais confortaveis em fazer certa operações. Nesse caso, esse Bando de Dados não irá servir.

## Construção do BD

Construi as tabelas pensando na visualização das diferentes pessoas que irão ter acesso a esses dados. O cliente só terá contato com a tabela cliente, a parte da administração terá contato com pedido, pagamento e horasTrabalhadas e, o operador terá contato apenas com a tabela peças, para que ele possa usina-las. A tabela do operador é um registro do funcionário, é importante ela estar conectada com as peças e horasTrabalhadas, pois, caso alguma peça dê algum problema futuro, seja fácil a identificação do operador que fez a peça.