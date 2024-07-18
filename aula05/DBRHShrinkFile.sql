-- Criação da tabela de funcionários
CREATE TABLE funcionarios (
    id INTEGER PRIMARY KEY,  
    nome TEXT,               
    cargo TEXT,              
    idade INTEGER,           
    salario REAL             
);

-- Inserção de dados iniciais
INSERT INTO funcionarios (nome, cargo, idade, salario) VALUES
    ('Ana Souza', 'Analista de Marketing', 28, 5500.00),
    ('Pedro Santos', 'Engenheiro de Software', 32, 7000.00),
    ('Mariana Oliveira', 'Gerente de Projetos', 35, 8500.00),
    ('Carlos Silva', 'Analista Financeiro', 30, 6000.00),
    ('Juliana Costa', 'Designer UX/UI', 29, 6200.00);

-- Comentários explicativos detalhados:

-- Criação da Tabela 'funcionarios':

--   - Define a estrutura da tabela 'funcionarios' com colunas para id, nome, cargo, idade e salario.

--   - 'id' é a chave primária, garantindo que cada funcionário tenha um identificador único.

--   - 'nome' armazena o nome completo do funcionário.

--   - 'cargo' registra o cargo atual que o funcionário ocupa na empresa.

--   - 'idade' armazena a idade atual do funcionário.

--   - 'salario' registra o salário mensal do funcionário com precisão decimal.

-- Inserção de Dados Iniciais:

--   - Insere exemplos de funcionários fictícios na tabela 'funcionarios' com diferentes cargos e salários.

-- Ajustes de Configuração do Banco de Dados:

PRAGMA main.page_size = 4096;  -- Define o tamanho da página para 4096 bytes

PRAGMA main.cache_size = -2000; -- Define o tamanho do cache para -2000 páginas

PRAGMA main.locking_mode = EXCLUSIVE; -- Define o modo de bloqueio como EXCLUSIVE

PRAGMA main.synchronous = OFF; -- Desativa a sincronização para melhorar a performance

