/*CREATE TABLE moeda (
codigo VARCHAR2(3),
nome VARCHAR(30),
siscomex NUMBER(3)
);*/

INSERT INTO moeda VALUES ('USD', 'Dolar',1) -- insert na tabela moeda 

set echo on  
COL codigo FORMAT A6 -- pode usar o A3
select * from moeda -- select na tabela moeda
----

/*CREATE TABLE moeda (
codigo VARCHAR2(3) CONSTRAINT pk_moeda PRIMARY KEY,
nome VARCHAR(30) CONSTRAINT nn_moeda_nome NOT NULL,
siscomex NUMBER(3) CONSTRAINT uk_moeda UNIQUE
);*/
-- CONSTRAINT --> Nomear constraint é uma boa prática. Para valores not null não faz diferença 
CREATE TABLE moeda (
codigo VARCHAR2(3) ,
nome VARCHAR(30) ,
siscomex NUMBER(3)
);

--drop table moeda purge
-- atalho para usar posicionar o cursor do maouse em cima do nome da tabela e precionar shift + F4 
-- atalho para usar posicionar o cursor do maouse em cima do nome da tabela e precionar Clrl + clicar em cima do linha/nome da tabela
INSERT INTO moeda VALUES ('USD', 'Dolar',1) -- insert na tabela moeda 
--INSERT INTO moeda VALUES ('EUR',NULL,2) -- insert na tabela moeda 

ALTER TABLE moeda 
ADD CONSTRAINT pk_moeda PRIMARY KEY (codigo);

ALTER TABLE moeda 
ADD CONSTRAINT uk_moeda_siscomex
UNIQUE (siscomex)

set echo on  
COL codigo FORMAT A6 -- pode usar o A3
select * from moeda -- select na tabela moeda


