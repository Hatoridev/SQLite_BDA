-- Criação da tabela de usuários
CREATE TABLE usuarios (
    id INTEGER PRIMARY KEY,
    usuario TEXT NOT NULL,
    senha TEXT NOT NULL
);

-- Inserção do usuário SeuUsuario com a senha SuaSenha
INSERT INTO usuarios (usuario, senha) VALUES ('SeuUsuario', 'SuaSenha');

-- Criação da tabela de cargos dos funcionários
CREATE TABLE cargos_funcionarios (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    cargo TEXT NOT NULL
);

/* 
Comentários explicativos:

1. A tabela 'usuarios' armazena os dados de autenticação dos usuários.

2. A tabela 'cargos_funcionarios' armazena os dados de cargos dos funcionários.

3. Um usuário inicial 'SeuUsuario' com a senha 'SuaSenha' é inserido na tabela 'usuarios'.
*/

