-- Criação da tabela 'imagens'
CREATE TABLE imagens (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    versao TEXT,
    tamanho INTEGER
);

-- Criação da tabela 'containers'
CREATE TABLE containers (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    imagem_id INTEGER,
    estado TEXT,
    FOREIGN KEY(imagem_id) REFERENCES imagens(id)
);

-- Criação da tabela 'volumes'
CREATE TABLE volumes (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    caminho TEXT
);

-- Inserção de dados de exemplo na tabela 'imagens'
INSERT INTO imagens (nome, versao, tamanho) VALUES
    ('postgres', '13', 150),
    ('nginx', '1.19', 30),
    ('redis', '6', 20);

-- Inserção de dados de exemplo na tabela 'containers'
INSERT INTO containers (nome, imagem_id, estado) VALUES
    ('meu-postgres', 1, 'running'),
    ('meu-nginx', 2, 'stopped'),
    ('meu-redis', 3, 'running');

-- Inserção de dados de exemplo na tabela 'volumes'
INSERT INTO volumes (nome, caminho) VALUES
    ('volume_pgdata', '/var/lib/postgresql/data'),
    ('volume_nginx', '/etc/nginx/conf.d'),
    ('volume_redis', '/data');

-- Comentários explicativos:

-- 1. CREATE TABLE imagens: Cria uma tabela chamada 'imagens' para armazenar informações sobre imagens de containers.

-- 2. CREATE TABLE containers: Cria uma tabela chamada 'containers' para armazenar informações sobre containers, com uma chave estrangeira referenciando a tabela 'imagens'.

-- 3. CREATE TABLE volumes: Cria uma tabela chamada 'volumes' para armazenar informações sobre volumes.

-- 4. INSERT INTO imagens: Insere dados de exemplo na tabela 'imagens'.

-- 5. INSERT INTO containers: Insere dados de exemplo na tabela 'containers'.

-- 6. INSERT INTO volumes: Insere dados de exemplo na tabela 'volumes'.

