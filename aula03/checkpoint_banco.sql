-- Criação da tabela funcionarios
CREATE TABLE funcionarios (
    id INTEGER PRIMARY KEY,
    nome TEXT,
    cargo TEXT,
    idade INTEGER,
    salario REAL
);

-- Inserção de dados iniciais
INSERT INTO funcionarios (nome, cargo, idade, salario) VALUES
    ('João Silva', 'Engenheiro', 35, 7500.00),               
    ('Maria Santos', 'Analista de Marketing', 28, 5800.00),   
    ('Pedro Oliveira', 'Designer', 30, 6200.00),              
    ('Ana Costa', 'Desenvolvedor', 25, 6900.00),              
    ('Carlos Lima', 'Gerente de Vendas', 40, 8900.00);        

-- Força o checkpoint para garantir a gravação das transações pendentes

PRAGMA wal_checkpoint(TRUNCATE);

-- Comentários explicativos:

-- Identificador único do funcionário:

--   - Define o campo 'id' como chave primária para identificação única de cada funcionário na tabela 'funcionarios'.

-- Nome completo do funcionário:

--   - Armazena o nome completo do funcionário na coluna 'nome' da tabela 'funcionarios'.

-- Cargo que o funcionário ocupa na empresa:

--   - Registra o cargo ocupado pelo funcionário na coluna 'cargo' da tabela 'funcionarios'.

-- Idade do funcionário:

--   - Armazena a idade do funcionário na coluna 'idade' da tabela 'funcionarios'.

-- Salário mensal do funcionário:

--   - Registra o salário mensal do funcionário na coluna 'salario' da tabela 'funcionarios'.

-- CHECKPOINT (PRAGMA wal_checkpoint(TRUNCATE)):

--   - Comando que força um checkpoint no SQLite para garantir a gravação imediata das transações no banco de dados principal.

--   - 'PRAGMA wal_checkpoint(TRUNCATE)' é usado para truncar o arquivo de log WAL, assegurando a integridade e consistência dos dados.

