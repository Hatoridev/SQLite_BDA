-- Criar o banco de dados RH no SQLite

-- Definir o modo de exibição para ver as mensagens de comando

.mode column
.headers on

-- Criar a tabela pessoas
CREATE TABLE pessoas (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    idade INTEGER,
    setor TEXT NOT NULL
);

-- Inserir dados na tabela pessoas
INSERT INTO pessoas (nome, idade, setor) VALUES ('Alice', 30, 'Design');
INSERT INTO pessoas (nome, idade, setor) VALUES ('Bob', 25, 'TI');

/*
Comentários explicativos:

- CREATE TABLE pessoas: Comando para criar a tabela 'pessoas' com suas colunas.

- id INTEGER PRIMARY KEY: Define a coluna 'id' como chave primária e do tipo inteiro.

- nome TEXT NOT NULL: Define a coluna 'nome' como texto obrigatório.

- idade INTEGER: Define a coluna 'idade' como do tipo inteiro.

- setor TEXT NOT NULL: Define a coluna 'setor' como texto obrigatório.

- INSERT INTO pessoas: Comando para inserir dados na tabela 'pessoas'.

- ('Alice', 30, 'Design'): Insere um registro com nome 'Alice', idade 30 e setor 'Design'.

- ('Bob', 25, 'TI'): Insere um registro com nome 'Bob', idade 25 e setor 'TI'.
*/

