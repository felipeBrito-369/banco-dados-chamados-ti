-- Consulta 1: chamados abertos
SELECT * FROM chamados
WHERE status = 'Aberto';

-- Consulta 2: total de chamados por status
SELECT status, COUNT(*) AS total
FROM chamados
GROUP BY status;

-- Consulta 3: total de chamados por categoria
SELECT c.nome AS categoria, COUNT(*) AS total
FROM chamados ch
JOIN categorias c ON ch.id_categoria = c.id
GROUP BY c.nome
ORDER BY total DESC;

-- Consulta 4: total de chamados por técnico
SELECT t.nome AS tecnico, COUNT(*) AS total
FROM chamados ch
JOIN tecnicos t ON ch.id_tecnico = t.id
GROUP BY t.nome
ORDER BY total DESC;

-- Consulta 5: chamados de prioridade alta ainda não resolvidos
SELECT ch.id, ch.solicitante, ch.descricao, ch.status
FROM chamados ch
WHERE ch.prioridade = 'Alta'
  AND ch.status <> 'Resolvido';

-- Consulta 6: chamados sem técnico responsável
SELECT ch.id, ch.solicitante, ch.descricao, t.nome AS tecnico
FROM chamados ch
LEFT JOIN tecnicos t ON ch.id_tecnico = t.id
WHERE ch.id_tecnico IS NULL;

-- Consulta 7: tempo médio de resolução em dias
SELECT ROUND(AVG(julianday(data_fechamento) - julianday(data_abertura)), 1) AS media_dias
FROM chamados
WHERE status = 'Resolvido';