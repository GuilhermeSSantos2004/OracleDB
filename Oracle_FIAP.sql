SET ECHO ON

-- 1. Comando SQL para criação da tabela “AUTOR”, com todas as constraints.

CREATE TABLE AUTOR (
    COD_AUTOR number(6) CONSTRAINT pk_autor PRIMARY KEY,
    NOME varchar(50) NOT NULL,
     SEXO  varchar(1) CONSTRAINT ck_autor_sexo
        check (sexo in  ('M','F')) ,
    OBS varchar(100) 
);  

-- 2. Comando SQL para criação da tabela “LIVRO”, com todas as constraints.

CREATE TABLE LIVRO (
    COD_LIVRO NUMBER(7) CONSTRAINT pk_livro PRIMARY KEY, 
    TITULO VARCHAR2(100) NOT NULL, 
    ISBN NUMBER(13) CONSTRAINT uk_isbn UNIQUE, 
    DT_EDICAO DATE NOT NULL, 
    PRECO NUMBER(6, 2) CONSTRAINT ck_preco CHECK (PRECO >= 0) 
);

-- 3. Comando SQL para criação da tabela “AUTORIA”, com todas as constraints.

CREATE TABLE AUTORIA (
    COD_LIVRO NUMBER(7),
    COD_AUTOR NUMBER(6),
    CONSTRAINT pk_autoria PRIMARY KEY (COD_LIVRO, COD_AUTOR), 
    CONSTRAINT fk_livro FOREIGN KEY (COD_LIVRO) REFERENCES LIVRO(COD_LIVRO), 
    CONSTRAINT fk_autor FOREIGN KEY (COD_AUTOR) REFERENCES AUTOR(COD_AUTOR)
);

-- 4. Após realizar as questões anteriores, execute o comando:

INSERT INTO autoria VALUES (1, 1);
-- Ocorreu erro? Caso tenha ocorrido erro, transcreva a mensagem e explique o motivo.
-- Ocorreu o erro porque não há refeencias correspondentes nas tabelas LIVRO e AUTOR


-- 5. Aumente o tamanho da coluna “OBS”, da tabela “AUTOR”, para 200 (duzentos) caracteres.

ALTER TABLE AUTOR 
MODIFY (obs varchar (200));

-- 6. A coluna “ISBN”, da tabela “LIVRO”, deve ser obrigatória. Realize a modificação. 

ALTER TABLE LIVRO 
MODIFY ISBN NOT NULL;


--  Acrescente a coluna “RESENHA” na tabela “LIVRO”, com tipo “caractere” e tamanho = 500.

ALTER TABLE LIVRO 
ADD (RESENHA varchar (500));


