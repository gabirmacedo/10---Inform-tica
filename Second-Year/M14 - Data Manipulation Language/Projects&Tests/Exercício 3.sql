insert into cliente value ('236158384','Afonso','2005-12-24','afbacela@gmail.com','Bacelar','28448','Bairro do Bacelo'),
('914710241','anna','2006-07-15','annabanana@gmail.com','Anna_Bia','ak537',null),
('083013589','beatriz','2002-05-09','bealilica@hotmail.com','Lilica','i222','Quinta da Báguia'),
('103247241','Lucas','1999-09-14','lucasdibutinni@gmail.com','Luca_s','oko1256',null),
('239463284','Luis','2010-02-03','luisdecamões@outlook.com','louiss460','7654','Bairro São maria'),
('287346289','Marisa','2005-04-27','marisaemaisa@gmail.com','Marikas','2555kk','Rua Antônio moreira');

insert into vendedor value 
('887243064','Gabriel','gbrjjj@gmail.com'),
('345668822','Alexander','alexwithander@gmail.com'),
('165416136','Bianca','biancaluberttini@gmail.com'),
('655656158','Roxanna','roxannaroxoanna@outlook.com'),
('297834432','Gustavo','gustavomendes335@hotmail.com'),
('192491753','Lázaro','lazarobibliadasilva@gmail.com');

insert into Compra value (null,'914710241','2025-10-30','pick-up','Cartão'),
(null,'083013589','2025-11-29','Entrega em casa','Cartão'),
(null,'239463284','2025-12-15','Entrega em casa','Dinheiro'),
(null,'287346289','2025-12-21','pick-up','Cartão'),
(null,'103247241','2026-01-02','pick-up','Dinheiro'),
(null,'914710241','2026-01-05','pick-up','Cartão');

insert into manga_compra value (1,6,2),
(2,5,1),
(3,4,2),
(4,3,3),
(5,4,2),
(6,1,1);

insert into manga value 
(null,'jujutsu kaisen','Pedro','Ação','16',15.99,655656158),
(null,'boku no hero','Mariana','Ação','14',10.99,297834432),
(null,'Amnesia','Alice','Mistério','14',16.99,165416136),
(null,'Gachiakuta','Ricardo','Magia','14',15.99,345668822),
(null,'Tokyo Revengers','Amanda','Luta','16',20.99,192491753),
(null,'Tensei shitara','José','Reincarnação','16',18.99,887243064);