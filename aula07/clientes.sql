-- Criação da tabela de clientes no banco de dados clientes
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

-- Comentários explicativos detalhados:

-- - CREATE TABLE clientes: Cria a tabela `clientes` no banco de dados `clientes` com colunas para ID, nome, email e telefone.

-- - id INTEGER PRIMARY KEY: Define a coluna `id` como chave primária e do tipo inteiro.

-- - nome TEXT: Define a coluna `nome` para armazenar o nome do cliente como texto.

-- - email TEXT: Define a coluna `email` para armazenar o email do cliente como texto.

-- - telefone TEXT: Define a coluna `telefone` para armazenar o telefone do cliente como texto.

-- - INSERT INTO clientes: Insere dados de exemplo na tabela `clientes` com valores para nome, email e telefone.

