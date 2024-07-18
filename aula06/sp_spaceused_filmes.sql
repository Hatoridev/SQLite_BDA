-- Criação da tabela para armazenar informações simuladas de espaço usado por objetos relacionados a filmes
CREATE TABLE espaco_usado (
    objeto TEXT PRIMARY KEY,
    tipo_objeto TEXT,
    tamanho_bytes INTEGER
);

-- Inserção de dados de exemplo relacionados a filmes
INSERT INTO espaco_usado (objeto, tipo_objeto, tamanho_bytes) VALUES
    ('tabela_filmes', 'Tabela', 20480),
    ('tabela_atores', 'Tabela', 10240),
    ('tabela_avaliacoes', 'Tabela', 4096),
    ('view_filmes_recentes', 'View', 3072);

-- Consulta para simular a função SP_SPACEUSED
SELECT objeto AS Objeto, tipo_objeto AS 'Tipo de Objeto', tamanho_bytes AS 'Tamanho (Bytes)'
FROM espaco_usado;

-- Comentários explicativos detalhados ao final do arquivo:

-- - Criação da tabela `espaco_usado`: Define a estrutura da tabela para armazenar informações sobre espaço usado por objetos relacionados a filmes.

-- - Inserção de dados de exemplo: Insere dados fictícios representando diferentes objetos relacionados a filmes, com seus respectivos tamanhos estimados em bytes.

-- - Consulta SP_SPACEUSED: Simula a função SP_SPACEUSED ao mostrar o espaço ocupado por cada objeto na tabela `espaco_usado`.

-- - Objeto: Nome do objeto armazenado na tabela.

-- - Tipo de Objeto: Indica se o objeto é uma tabela ou uma view.

-- - Tamanho (Bytes): Quantidade de espaço ocupado pelo objeto em bytes, simulado para fins de demonstração.

