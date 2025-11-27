-- UPDATES E DELETES DO PETCARE

----------------------
-- UPDATES
----------------------

-- 1) Atualiza telefone do tutor 1
UPDATE tutor
SET telefone = '(11)97777-0003'
WHERE tutor_id = 1;

-- 2) Atualiza valor de serviços de consulta
UPDATE servico
SET valor_padrao = 85.00
WHERE nome ILIKE 'Consulta%';

-- 3) Ajusta estoque do medicamento
UPDATE medicamento
SET estoque = estoque - 2
WHERE nome_comercial = 'Antibiótico Pet'
  AND estoque >= 2;


----------------------
-- DELETES
----------------------

-- 4) Remove serviço (somente se existir)
DELETE FROM atendimento_servico
WHERE atend_id = 3 AND serv_id = 3
RETURNING atend_serv_id;

-- 5) Tenta remover prescrição inexistente
DELETE FROM prescricao_medicamento pm
USING prescricao p
WHERE pm.presc_id = p.presc_id
  AND p.atend_id = 999;

-- 6) Remove PET 4 se não tiver atendimentos
DELETE FROM pet
WHERE pet_id = 4
AND NOT EXISTS (
    SELECT 1 FROM atendimento a WHERE a.pet_id = pet.pet_id
)
RETURNING pet_id, nome;
