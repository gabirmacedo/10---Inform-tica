-- exercício a

update manga
set preco = 19.99
where nome_manga = 'Tokyo Revengers';

-- exercício b

delete from manga_compra where quantidade = 3;

-- exercício c

select * from Compra;

-- exercício d I

select * from compra where modo_de_entrega = 'pick-up' and forma_de_pagamento = 'Cartão'; 

-- exercício d II

select * from manga where tipo_manga = 'Ação' or faixa_etaria = '14'; 

-- exercício d III

select * from manga where preco between 15 and 17;

-- exercício d IV

select * from manga where preco in (15.99, 18.99);

-- exercício d V

select * from vendedor where nome_vendedor like 'G%';

-- exercício e

select * from manga order by faixa_etaria;

-- exercício f

select Avg(preco) as média from manga;
select sum(preco) from manga where faixa_etaria like "14";
select Max(faixa_etaria) as Maior_Faixa_etária from manga;

-- exercício g

select nome_manga, Min(preco) from manga group by nome_manga;

-- exercício h

select nome_manga, max(preco) from manga group by nome_manga having max(preco) > 10.99;

-- exercício i

select * from compra where data = (select Max(data) from compra);

-- exercício j

select * from manga inner join manga_compra on manga.idmanga = manga_compra.idmanga;

-- exercício k 

select * from compra left join manga_compra on compra.idcompra = manga_compra.idcompra;

-- exercício l

select nome_manga, nif_cliente, quantidade from manga, compra, manga_compra where
manga.idmanga = manga_compra.idmanga and compra.idcompra = manga_compra.idcompra;
select * from cliente inner join compra on cliente.nif_cliente = compra.nif_cliente;
select * from vendedor inner join manga on vendedor.nif_vendedor = manga.nif_vendedor;

