-- SELECTS DE VERIFICAÇÃO DO PETCARE

-- 1) Lista todos os tutores
SELECT * FROM tutor;

-- 2) Lista os pets com nome do tutor (JOIN)
SELECT 
    p.pet_id,
    p.nome AS pet,
    p.especie,
    p.raca,
    t.nome AS tutor
FROM pet p
JOIN tutor t ON t.tutor_id = p.tutor_id
ORDER BY pet;

-- 3) Lista serviços realizados no atendimento 1
SELECT 
    asv.atend_serv_id,
    s.nome AS servico,
    asv.quantidade,
    asv.valor_unitario,
    asv.subtotal
FROM atendimento_servico asv
JOIN servico s ON s.serv_id = asv.serv_id
WHERE asv.atend_id = 1;

-- 4) Lista medicamentos com estoque baixo
SELECT * 
FROM medicamento
WHERE estoque < 10;

-- 5) Consulta completa das faturas
SELECT
    f.fatura_id,
    f.atend_id,
    f.valor_total,
    f.pago,
    a.data_atend
FROM fatura f
JOIN atendimento a ON a.atend_id = f.atend_id
ORDER BY f.fatura_id;
