-- INSERTS PETCARE

-- TUTORES
INSERT INTO tutor (nome, telefone, email, cpf)
VALUES
('Carlos Silva', '(11)99999-0001', 'carlos@exemplo.com', '111.111.111-11'),
('Mariana Souza', '(11)99999-0002', 'mariana@exemplo.com', '222.222.222-22');

-- PETS
INSERT INTO pet (tutor_id, nome, especie, raca, nascimento)
VALUES
(1, 'Rex', 'Cachorro', 'Labrador', '2018-05-10'),
(1, 'Luna', 'Gato', 'Siamês', '2020-09-21'),
(2, 'Thor', 'Cachorro', 'Bulldog', '2019-11-03');

-- SERVIÇOS
INSERT INTO servico (nome, valor_padrao)
VALUES
('Consulta Clínica', 120.00),
('Tosa Completa', 80.00),
('Vacinação V8', 150.00);

-- MEDICAMENTOS
INSERT INTO medicamento (nome_comercial, principio_ativo, estoque)
VALUES
('Antibiótico Pet', 'Amoxicilina', 10),
('Vermífugo Plus', 'Pyrantel', 20);

-- ATENDIMENTO
INSERT INTO atendimento (pet_id, data_atend, observacoes)
VALUES
(1, NOW(), 'Animal apresentou tosse leve'),
(3, NOW(), 'Retorno de procedimento'),
(2, NOW(), 'Vacinação anual');

-- ATENDIMENTO_SERVIÇO
INSERT INTO atendimento_servico (atend_id, serv_id, quantidade, valor_unitario)
VALUES
(1, 1, 1, 120.00),
(1, 3, 1, 150.00),
(2, 2, 1, 80.00),
(3, 1, 1, 120.00);

-- FATURAS
INSERT INTO fatura (atend_id, valor_total, pago)
VALUES
(1, 270.00, FALSE),
(2, 80.00, TRUE),
(3, 120.00, FALSE);
