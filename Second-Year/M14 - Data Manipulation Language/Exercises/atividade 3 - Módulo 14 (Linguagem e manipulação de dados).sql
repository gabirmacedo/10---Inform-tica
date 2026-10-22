
Insert into produtos values (null, "Portátil", 800), (null, "Berbequim", 60), (null, "MS Office", 150);
Insert into produtos values (null, "Impressora", 110),(null, "MS Office", 950),(null, "Portátil", 150);
Insert into produtos values  (null, "Impressora de jacto de tinta", 150),(null, "Impressora", 250),(null, "Rato", 20),(null, "Impressora laser", 700);
select Count(*) As Total
From produtos;
Select count(distinct Produto)
From produtos;
Select Avg(Preco) 
As Media 
From Produtos;
Select Avg(Preco) 
From Produtos Where Produto Like "%Impressora%";
Select Max(Preco) 
From Produtos Where Produto Like "%Impressora%";
Select sum(Preco) 
From Produtos Where Produto Like "%Portátil%";
select Produto, Count(*) from produtos group by produto;
select Produto, Max(preco) from produtos group by produto;
select Produto, Count(*) from produtos group by produto having max(preco) > 100;