-- Criação da tabela 'alunos' como exemplo
CREATE TABLE alunos (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    idade INTEGER,
    curso TEXT,
    email TEXT
);

-- Inserção de dados de exemplo
INSERT INTO alunos (nome, idade, curso, email) VALUES
    ('João', 25, 'Python', 'joao@example.com'),
    ('Maria', 23, 'JavaScript', 'maria@example.com'),
    ('Pedro', 28, 'Java', 'pedro@example.com');

-- Define o modo de saída como CSV para facilitar a exportação
.mode csv

-- Habilita cabeçalhos (nomes das colunas) na saída CSV
.headers on

-- Comando para exportar para arquivo CSV
.output /storage/emulated/0/arquivo.csv

-- Consulta para selecionar todos os dados da tabela alunos
SELECT * FROM alunos;

-- Finaliza a exportação e retorna ao modo padrão
.output stdout

