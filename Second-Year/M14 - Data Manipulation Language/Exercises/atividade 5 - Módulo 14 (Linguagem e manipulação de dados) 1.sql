select Cliente from Clientes inner join Encomendas on Clientes.CodCli = Encomendas.CodProd;
select Produto, Preco from Produtos inner join Encomendas on Produtos.Codprod = Encomendas.CodProd;
select Produtos.codprod, Produtos.produto, encomendas.nenc from Encomendas left join produtos on Produtos.CodProd = Encomendas.CodProd;
select Produtos.codprod, Produtos.produto, encomendas.nenc from Encomendas right join produtos on Produtos.CodProd = Encomendas.CodProd; 
select Clientes.cliente, encomendas.nenc, Produtos.produto, encomendas.Quant from Clientes c inner join (encomendas e inner join produtos p on Clientes.CodCli = Encomendas.Codcli) on Produtos.Codprod = Encomendas.CodProd;