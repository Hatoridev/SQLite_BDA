-- Criação da tabela livros
CREATE TABLE livros (
    id INTEGER PRIMARY KEY,  
    titulo TEXT,             
    autor TEXT,              
    ano_publicacao INTEGER,  
    preco REAL               
);

-- Inserção de dados iniciais
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES
    ('Dom Casmurro', 'Machado de Assis', 1899, 29.90),         
    ('O Alquimista', 'Paulo Coelho', 1988, 19.90),             
    ('1984', 'George Orwell', 1949, 25.00),                    
    ('O Senhor dos Anéis', 'J.R.R. Tolkien', 1954, 59.90),    
    ('A Revolução dos Bichos', 'George Orwell', 1945, 15.00);  

-- Comando PRAGMA wal_checkpoint para forçar a gravação das transações pendentes
PRAGMA wal_checkpoint(TRUNCATE);

-- Comando VACUUM para compactar o banco de dados
VACUUM;

-- Comentários explicativos detalhados:

-- Criação da Tabela:

--   - Define a estrutura da tabela 'livros' com colunas para id, titulo, autor, ano_publicacao e preco.

--   - 'id' é a chave primária, garantindo que cada livro tenha um identificador único.

--   - 'titulo' armazena o título do livro.

--   - 'autor' registra o autor do livro.

--   - 'ano_publicacao' armazena o ano de publicação do livro.

--   - 'preco' registra o preço do livro com precisão decimal.

-- Inserção de Dados Iniciais:

--   - Insere exemplos de livros com dados fictícios na tabela 'livros'.

-- PRAGMA wal_checkpoint(TRUNCATE):

--   - Comando utilizado para forçar um checkpoint no SQLite, garantindo a gravação imediata das transações no banco de dados principal.

--   - 'TRUNCATE' é usado para truncar o arquivo de log Write-Ahead Logging (WAL), garantindo a persistência e integridade dos dados.

-- VACUUM:

--   - Comando utilizado para compactar o banco de dados, removendo espaços em branco e defragmentando o arquivo de banco de dados.

--   - Isso melhora a performance e reduz o tamanho do arquivo do banco de dados.

