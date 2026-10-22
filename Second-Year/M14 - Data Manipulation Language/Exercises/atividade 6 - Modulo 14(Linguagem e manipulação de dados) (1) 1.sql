#exercício 1,2,3 e 4
create database db_agencias_gabi;
use db_agencias_gabi;
CREATE TABLE Clientes (
    CodCliente INT PRIMARY KEY auto_increment,
    Cliente VARCHAR(80) NOT NULL,
    NIF VARCHAR(9) NOT NULL,
    Morada_Cliente VARCHAR(80) NOT NULL
);
 
CREATE TABLE Agencias (
    CodAgencia INT PRIMARY KEY auto_increment,
    Morada VARCHAR(80) NOT NULL,
    NomeBanco VARCHAR(80) NOT NULL
);
 
CREATE TABLE Contas (
    NConta INT PRIMARY KEY auto_increment,
    CodCliente INT NOT NULL,
    CodAgencia INT NOT NULL,
    DataCriacao DATE NOT NULL,
    Saldo DOUBLE NOT NULL,
    FOREIGN KEY (CodCliente) REFERENCES Clientes(CodCliente),
    FOREIGN KEY (CodAgencia) REFERENCES Agencias(CodAgencia)
);
 
CREATE TABLE Emprestimos (
    NEmp INT PRIMARY KEY auto_increment,
    CodCliente INT NOT NULL,
    CodAgencia INT NOT NULL,
    DataInicio DATE NOT NULL,
    Valor DOUBLE NOT NULL,
    FOREIGN KEY (CodCliente) REFERENCES Clientes(CodCliente),
    FOREIGN KEY (CodAgencia) REFERENCES Agencias(CodAgencia)
);
#exercício 5
insert into  Clientes value (null,"luís",301201562,"lisboa"),(null,"eduardo",301201544,"lisboa"),(null,"alexandra",401603448,"Porto"),(null,"maria",901107382,"Porto"),(null,"José",108265589,"Évora");
insert into agencias value (null,"Évora","InkBank"),(null, "lisboa", "santander"),(null, "lisboa", "ultimatebank"),(null, "Évora", "bradesco"),(null, "Porto", "elmore");
insert into  Contas value (null,4,2,'2025-12-21',140),(null,3,4,'2025-01-10',115),(null,1,1,'2025-08-15',1150),(null,2,2,'2025-12-16',160),(null,5,3,'2025-11-20',11),(null,5,5,'2025-05-14',1500);
insert into  Emprestimos value (null,3,4,'2025-12-13',40),(null,3,4,'2025-12-24',5),(null,1,1,'2025-10-01',40),(null,2,2,'2025-12-20',40),(null,4,2,'2025-12-12',20),(null,5,5,'2025-05-19',1500);
#exercício 6
select cliente from Clientes;
#exercício 7
select cliente from Clientes where morada_Cliente = "Lisboa" or morada_Cliente = "Porto";
#exercício 8
select count(CodCliente) from contas where codagencia = 1;
select count(CodCliente) from contas where codagencia = 2;
select count(CodCliente) from contas where codagencia = 3;
select count(CodCliente) from contas where codagencia = 4;
select count(CodCliente) from contas where codagencia = 5;
#exercício 9
select count(Codagencia) from agencias where morada <> "Lisboa" and morada <> "Porto";
#exercício 10
select max(saldo) from contas;
#exercício 11
select cliente, morada_Cliente from clientes where codcliente = (select codcliente from contas where saldo = ( select max(saldo) from contas));
#exercício 12
select round(Avg(valor)) from emprestimos;
#exercício 13
select sum(valor) from emprestimos where codagencia in (select CodAgencia from agencias where morada <> "évora"); 
#exercício 14
select cliente, morada_Cliente,morada from clientes,agencias,contas where clientes.codcliente = contas.codcliente and agencias.codagencia = contas.codagencia;
