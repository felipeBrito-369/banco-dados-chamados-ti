# Banco de Dados de Chamados de TI

Projeto em SQL que simula o controle de chamados de um setor de suporte de TI,
com tabelas relacionadas e consultas para análise dos atendimentos.

## Tecnologias
- SQL (SQLite)
- VS Code

## Estrutura do banco
- **categorias**: tipos de problema (Rede, Impressora, Software...)
- **tecnicos**: equipe que atende os chamados
- **chamados**: atendimentos, ligados a uma categoria e a um técnico

## Arquivos
- `chamados.sql`: criação das tabelas e inserção dos dados
- `consultas.sql`: consultas de análise

## Consultas incluídas
- Chamados abertos
- Total de chamados por status
- Total de chamados por categoria (JOIN)
- Total de chamados por técnico (JOIN)
- Chamados de alta prioridade não resolvidos
- Chamados sem técnico responsável (LEFT JOIN)
- Tempo médio de resolução

## Como rodar
1. Instale o VS Code e a extensão **SQLite** (alexcvzz)
2. Crie um banco novo e execute o `chamados.sql`
3. Execute as consultas do arquivo `consultas.sql`

## Resultados
![Chamados por categoria](imagens/consulta-categorias.png)

## Aprendizados
- Criação de tabelas e relacionamentos com chave estrangeira
- Uso de JOIN, LEFT JOIN, GROUP BY e funções de agregação