# OracleDB
# Resumo: SELECT 
# Resumo: Comandos SQL-DDL - Exercício 01

Neste exercício, o objetivo é implementar um banco de dados seguindo os modelos de dados especificados, utilizando comandos SQL DDL (Data Definition Language). A tarefa envolve a criação de tabelas, definição de constraints (restrições), e modificação de estruturas existentes conforme as regras fornecidas.

## Modelo de Dados

O modelo de dados possui três tabelas principais:

1. **AUTOR**: Contém informações sobre os autores, incluindo um identificador único (`COD_AUTOR`), nome (`NOME`), sexo (`SEXO`), e um campo opcional de observações (`OBS`).
   
2. **LIVRO**: Armazena dados sobre livros, como o código do livro (`COD_LIVRO`), título (`TITULO`), código ISBN único (`ISBN`), data de edição (`DT_EDICAO`), e preço (`PRECO`).

3. **AUTORIA**: Relaciona as tabelas AUTOR e LIVRO, indicando quais autores escreveram quais livros, com `COD_LIVRO` e `COD_AUTOR` sendo chaves primárias e estrangeiras.

## Tarefas Executadas

1. **Criação das Tabelas**: Foram implementados comandos SQL para criar as tabelas `AUTOR`, `LIVRO` e `AUTORIA`, incluindo a definição de todas as constraints:
   - **Constraints** usadas incluem chave primária (PK), chave de unicidade (UK), chave estrangeira (FK), não nulo (NN), e verificação de valor (CK).
   
2. **Inserção de Dados e Tratamento de Erros**: Foi realizado um teste de inserção na tabela `AUTORIA` com o comando `INSERT INTO autoria VALUES (1, 1);`. Caso ocorra um erro, a mensagem de erro é transcrita e o motivo é explicado (como uma possível violação de constraint de integridade referencial).

3. **Alterações nas Tabelas Existentes**:
   - **Aumento do Tamanho da Coluna `OBS`**: A coluna de observações (`OBS`) da tabela `AUTOR` foi expandida para suportar até 200 caracteres.
   - **Tornar a Coluna `ISBN` Obrigatória**: Foi feita uma modificação para que a coluna `ISBN` da tabela `LIVRO` seja obrigatória (não nula).
   - **Adição da Coluna `RESENHA`**: Uma nova coluna chamada `RESENHA`, de tipo caractere com tamanho de 500, foi adicionada à tabela `LIVRO`.

Essas tarefas asseguram que o banco de dados esteja conforme o modelo de dados e as especificações fornecidas, com integridade referencial mantida e flexibilidade para futuras expansões.
