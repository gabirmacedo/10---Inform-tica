select * from Produtos where preco = (select max(preco) from produtos);
select * from Produtos where preco > (select Avg(preco) from produtos);
select * from Produtos where preco < (select Avg(preco) from produtos) and Produto Like "%impressora%" order by codprod;
select * from Produtos where preco > (select Avg(preco) from produtos) and CodProd < 6;
select * from Produtos where preco < (select Avg(preco) from produtos) and (Produto Like "%impressora%" or Produto Like "%portátil%");

insert into Encomendas values (null,1,2,10),(null,2,1,2),(null,3,3,5),(null,2,2,14),(null,1,8,8),(null,2,5,6);
select * from encomendas where codprod in (select codprod from produtos where produto like "%portátil%");
select * from encomendas where codprod in (select codprod from produtos where preco < 100);
select * from encomendas where codprod in (select codprod from produtos where preco <(select avg(preco) from produtos));