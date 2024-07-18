-- Anexar o banco de dados clientes ao banco de dados locadora
ATTACH 'clientes.db' AS clientes_db;

-- Consulta para verificar os dados no banco de dados locadora
SELECT * FROM filmes;

-- Consulta para verificar os dados no banco de dados anexado clientes_db
SELECT * FROM clientes_db.clientes;

-- Desanexar o banco de dados clientes_db
DETACH DATABASE clientes_db;

-- Comentários explicativos detalhados:

-- - ATTACH 'clientes.db' AS clientes_db: Este comando anexa o banco de dados `clientes.db` ao banco de dados `locadora.db` com o alias `clientes_db`.

-- - SELECT * FROM filmes: Consulta todos os registros da tabela `filmes` no banco de dados `locadora`.

-- - SELECT * FROM clientes_db.clientes: Consulta todos os registros da tabela `clientes` no banco de dados anexado `clientes_db`.

-- - DETACH DATABASE clientes_db: Este comando desanexa o banco de dados `clientes_db` do banco de dados `locadora`.

