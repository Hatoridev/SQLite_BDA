import sqlite3
import random

def autenticar(usuario, senha):
    # Conecta ao banco de dados
    conn = sqlite3.connect('acesso_cargos.db')
    cursor = conn.cursor()

    # Verifica se o usuário e a senha correspondem a um registro na tabela de usuários
    cursor.execute('SELECT * FROM usuarios WHERE usuario = ? AND senha = ?', (usuario, senha))
    user = cursor.fetchone()

    conn.close()

    # Retorna True se o usuário for encontrado, False caso contrário
    return user is not None

def gerar_cargos():
    # Conecta ao banco de dados
    conn = sqlite3.connect('acesso_cargos.db')
    cursor = conn.cursor()

    # Lista de possíveis cargos
    cargos = ['Engenheiro', 'Gerente', 'Analista', 'Desenvolvedor', 'Designer', 'Vendedor', 'Recursos Humanos']

    # Gera dados fictícios para a tabela cargos_funcionarios
    for i in range(1, 51):  # Gera 50 registros
        nome = f'Funcionario {i}'
        cargo = random.choice(cargos)
        cursor.execute('INSERT INTO cargos_funcionarios (nome, cargo) VALUES (?, ?)', (nome, cargo))

    conn.commit()
    conn.close()

def exibir_cargos():
    # Conecta ao banco de dados
    conn = sqlite3.connect('acesso_cargos.db')
    cursor = conn.cursor()

    # Recupera todos os cargos dos funcionários
    cursor.execute('SELECT * FROM cargos_funcionarios')
    cargos = cursor.fetchall()

    conn.close()

    # Exibe os cargos
    for cargo in cargos:
        print(f"ID: {cargo[0]}, Nome: {cargo[1]}, Cargo: {cargo[2]}")

# Solicita o usuário e a senha
usuario = input("Usuário: ")
senha = input("Senha: ")

# Autentica o usuário
if autenticar(usuario, senha):
    print("Autenticação bem-sucedida!")
    gerar_cargos()
    exibir_cargos()
else:
    print("Usuário ou senha incorretos.")

# Comentários explicativos:

# - autenticar(usuario, senha): Verifica se o usuário e a senha estão corretos.

# - gerar_cargos(): Gera e insere dados fictícios na tabela cargos_funcionarios.

# - exibir_cargos(): Recupera e exibe os cargos dos funcionários.

# - Lista de cargos: Contém os possíveis cargos para os funcionários.

# - Loop for: Gera 50 registros de funcionários com nomes e cargos aleatórios.

# - Conexões e cursores: Manipula o banco de dados SQLite.

# - Entrada do usuário: Solicita e verifica as credenciais do usuário.

# - Condicional de autenticação: Verifica a autenticação antes de gerar e exibir os cargos.

