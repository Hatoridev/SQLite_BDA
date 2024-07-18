import random

segmentos = ['Engenharia', 'Marketing', 'Design', 'Desenvolvimento', 'Vendas', 'Recursos Humanos', 'Finanças']

# Abre o arquivo SQL em modo de adição
with open('popula_tabela.sql', 'a', encoding='utf-8') as f:
    for i in range(1, 1501):
        # Usa um nome genérico como "Funcionário 1", "Funcionário 2", etc.
        nome = f'Funcionário {i}'
        
        segmento = random.choice(segmentos)
        idade = random.randint(22, 65)
        salario = round(random.uniform(2000, 10000), 2)
        
        # Formata o salário com o símbolo de R$ e duas casas decimais
        salario_formatado = f'R$ {salario:.2f}'
        
        f.write(f"INSERT INTO funcionarios (nome, segmento, idade, salario) VALUES ('{nome}', '{segmento}', {idade}, '{salario_formatado}');\n")

# Comentários explicativos detalhados:

# - nome: Gera um nome genérico como "Funcionário 1", "Funcionário 2", etc.

# - segmentos: Lista de segmentos profissionais para atribuir aleatoriamente aos funcionários.

# - idade: Gera uma idade aleatória entre 22 e 65 anos para cada funcionário.

# - salario: Gera um salário aleatório entre 2000.00 e 10000.00 para cada funcionário.

# - salario_formatado: Salário formatado com o símbolo de R$ e duas casas decimais para cada funcionário.

# - Instrução SQL: Cada linha gera uma instrução INSERT no arquivo popula_tabela.sql para inserir os dados na tabela funcionarios.

