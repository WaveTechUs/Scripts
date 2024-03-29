CREATE TABLE Estado (
    uf VARCHAR2(2) PRIMARY KEY,
    nome varchar(60) NOT NULL
);   

CREATE TABLE Cidade(
    id NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
    nome VARCHAR2(60) NOT NULL,
    uf VARCHAR2(2) NOT NULL,
    
    CONSTRAINT fk_uf_estado FOREIGN KEY (uf) REFERENCES Estado (uf)
);

Insert into SYS.ESTADO (UF,NOME) values ('SP','S�o Paulo');
Insert into SYS.ESTADO (UF,NOME) values ('RJ','Rio de Janeiro');
Insert into SYS.CIDADE (ID,NOME,UF) values ('','Osasco','SP');

SELECT c.nome as cidade, e.nome as estado 
FROM CIDADE c 
JOIN ESTADO e
ON c.uf = e.uf

/*
drop table Cidade;
drop table Estado;
*/