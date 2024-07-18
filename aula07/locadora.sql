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

-- Comentários explicativos detalhados:

-- - CREATE TABLE filmes: Cria a tabela `filmes` no banco de dados `locadora` com colunas para ID, título, diretor, ano e gênero.

-- - id INTEGER PRIMARY KEY: Define a coluna `id` como chave primária e do tipo inteiro.

-- - titulo TEXT: Define a coluna `titulo` para armazenar o título do filme como texto.

-- - diretor TEXT: Define a coluna `diretor` para armazenar o nome do diretor como texto.

-- - ano INTEGER: Define a coluna `ano` para armazenar o ano de lançamento do filme como inteiro.

-- - genero TEXT: Define a coluna `genero` para armazenar o gênero do filme como texto.

-- - INSERT INTO filmes: Insere dados de exemplo na tabela `filmes` com valores para título, diretor, ano e gênero.

