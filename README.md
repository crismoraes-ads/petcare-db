# 🐾 PetCare - Scripts SQL (Entrega 4)

![SQL Badge](https://img.shields.io/badge/SQL-Structured%20Query%20Language-blue)
![Status Badge](https://img.shields.io/badge/Status-Completo-brightgreen)

## 📖 Descrição
Repositório com scripts SQL para criação, povoamento e manipulação do banco de dados do **PetCare**, sistema de gerenciamento de clínica veterinária. Inclui evidências (prints) das consultas no Supabase.

O projeto cobre:
- 🏗️ Criação de tabelas e relacionamentos
- 📝 Inserção de dados de exemplo
- 🔍 Consultas de verificação
- ✏️ Atualizações e exclusões de dados
- ⚡ Triggers para automatizar cálculos de subtotais e faturas

---

## 📂 Estrutura dos arquivos

| Arquivo | Descrição |
|---------|-----------|
| `01_schema_and_triggers.sql` | Criação de tabelas, índices e triggers do sistema. |
| `02_inserts.sql` | Inserção de dados de exemplo em todas as tabelas. |
| `03_selects.sql` | Consultas de verificação para validar os dados inseridos. |
| `04_updates_deletes.sql` | Exemplos de atualizações (`UPDATE`) e exclusões (`DELETE`). |
| Prints | Evidências das consultas no Supabase: `01_tables.png`, `02_atendimento_servico.png`, `03_verificacoes_tutor_servico.png`, `04_medicamento.png`. |

---

## 🚀 Como rodar / Getting Started

Para executar este projeto:

1. Certifique-se de ter um banco de dados PostgreSQL ou Supabase disponível.
2. Execute os scripts na seguinte ordem:
   1. `01_schema_and_triggers.sql` – cria tabelas, índices e triggers
   2. `02_inserts.sql` – insere dados de exemplo
   3. `03_selects.sql` – executa consultas para verificação
   4. `04_updates_deletes.sql` – executa exemplos de UPDATE e DELETE
3. Revise os SELECTs antes de executar DELETEs para evitar perda de dados.
4. Confira os prints na pasta do projeto para validação visual das consultas.

> 💡 Dica: você pode usar o Supabase para rodar os scripts e verificar as evidências rapidamente.

---

## ▶️ Ordem de execução recomendada
1. `01_schema_and_triggers.sql`
2. `02_inserts.sql`
3. `03_selects.sql`
4. `04_updates_deletes.sql`

> ⚠️ **Observação:** Sempre revise os `SELECTs` antes de executar `DELETEs` para evitar perda de dados importantes.

---

## ✨ Funcionalidades extras
- **Triggers automáticas:**  
  - 🧾 Cálculo do `subtotal` em `atendimento_servico`  
  - 💰 Recalculo e atualização automática de faturas ao alterar atendimentos ou serviços  

---

## 🖊️ Autor
- **Nome:** Cristiane Rodrigues de Moraes
