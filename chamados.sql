-- Criação das tabelas

CREATE TABLE categorias (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL
);

CREATE TABLE tecnicos (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    setor TEXT
);

CREATE TABLE chamados (
    id INTEGER PRIMARY KEY,
    solicitante TEXT NOT NULL,
    descricao TEXT,
    status TEXT NOT NULL,
    prioridade TEXT,
    data_abertura DATE,
    data_fechamento DATE,
    id_categoria INTEGER,
    id_tecnico INTEGER,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id),
    FOREIGN KEY (id_tecnico) REFERENCES tecnicos(id)
);

-- Inserção dos dados (fictícios)

INSERT INTO categorias (nome) VALUES
('Rede'),
('Impressora'),
('Software'),
('Hardware'),
('Acesso e Senhas');

INSERT INTO tecnicos (nome, setor) VALUES
('Marcos', 'Suporte N1'),
('Juliana', 'Suporte N1'),
('Rafael', 'Infraestrutura');

INSERT INTO chamados
(solicitante, descricao, status, prioridade, data_abertura, data_fechamento, id_categoria, id_tecnico)
VALUES
('Ana', 'Sem acesso à internet', 'Resolvido', 'Alta', '2026-10-01', '2026-10-01', 1, 3),
('Bruno', 'Impressora não imprime', 'Resolvido', 'Média', '2026-10-02', '2026-10-03', 2, 1),
('Carla', 'Esqueci a senha do sistema', 'Resolvido', 'Baixa', '2026-10-03', '2026-10-03', 5, 2),
('Diego', 'Excel travando', 'Aberto', 'Média', '2026-10-05', NULL, 3, 1),
('Elaine', 'Monitor sem imagem', 'Em andamento', 'Alta', '2026-10-06', NULL, 4, 3),
('Fábio', 'Wi-Fi instável na sala 2', 'Aberto', 'Alta', '2026-10-07', NULL, 1, NULL),
('Gabriela', 'Instalar programa de edição', 'Resolvido', 'Baixa', '2026-10-08', '2026-10-09', 3, 2),
('Henrique', 'Impressora sem toner', 'Em andamento', 'Baixa', '2026-10-09', NULL, 2, 1);