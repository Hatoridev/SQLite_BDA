-- Criação da tabela de filmes no banco de dados locadora
CREATE TABLE filmes (
    id INTEGER PRIMARY KEY,
    titulo TEXT,
    diretor TEXT,
    ano INTEGER,
    genero TEXT
);

-- Inserção de dados de exemplo na tabela filmes
INSERT INTO filmes (titulo, diretor, ano, genero) VALUES
    ('Matrix', 'Lana Wachowski, Lilly Wachowski', 1999, 'Ficção Científica'),
    ('Inception', 'Christopher Nolan', 2010, 'Ação'),
    ('Interstellar', 'Christopher Nolan', 2014, 'Ficção Científica'),
    ('Parasita', 'Bong Joon Ho', 2019, 'Drama'),
    ('The Godfather', 'Francis Ford Coppola', 1972, 'Crime');

-- Criação da tabela de clientes no banco de dados locadora
CREATE TABLE clientes (
    id INTEGER PRIMARY KEY,
    nome TEXT,
    email TEXT,
    telefone TEXT
);

-- Inserção de dados de exemplo na tabela clientes
INSERT INTO clientes (nome, email, telefone) VALUES
    ('João Silva', 'joao@example.com', '1234-5678'),
    ('Maria Oliveira', 'maria@example.com', '8765-4321'),
    ('Carlos Souza', 'carlos@example.com', '1122-3344');

-- Anexar o banco de dados clientes ao banco de dados locadora
ATTACH 'clientes.db' AS clientes_db;

-- Consulta para verificar os dados no banco de dados locadora
SELECT * FROM filmes;
SELECT * FROM clientes;

-- Comentários explicativos detalhados:

-- - CREATE TABLE filmes: Cria a tabela `filmes` no banco de dados `locadora` com colunas para ID, título, diretor, ano e gênero.

-- - id INTEGER PRIMARY KEY: Define a coluna `id` como chave primária e do tipo inteiro.

-- - titulo TEXT: Define a coluna `titulo` para armazenar o título do filme como texto.

-- - diretor TEXT: Define a coluna `diretor` para armazenar o nome do diretor como texto.

-- - ano INTEGER: Define a coluna `ano` para armazenar o ano de lançamento do filme como inteiro.

-- - genero TEXT: Define a coluna `genero` para armazenar o gênero do filme como texto.

-- - INSERT INTO filmes: Insere dados de exemplo na tabela `filmes` com valores para título, diretor, ano e gênero.

-- - CREATE TABLE clientes: Cria a tabela `clientes` no banco de dados `clientes` com colunas para ID, nome, email e telefone.

-- - id INTEGER PRIMARY KEY: Define a coluna `id` como chave primária e do tipo inteiro.

-- - nome TEXT: Define a coluna `nome` para armazenar o nome do cliente como texto.

-- - email TEXT: Define a coluna `email` para armazenar o email do cliente como texto.

-- - telefone TEXT: Define a coluna `telefone` para armazenar o telefone do cliente como texto.

-- - INSERT INTO clientes: Insere dados de exemplo na tabela `clientes` com valores para nome, email e telefone.

-- - ATTACH: Comando para anexar o banco de dados `clientes` ao banco de dados `locadora`.

-- - SELECT * FROM filmes: Consulta para verificar os dados na tabela `filmes`.

-- - SELECT * FROM clientes: Consulta para verificar os dados na tabela `clientes`.

