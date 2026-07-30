# 📦 Sistema de Controle de Estoque e Logística (WMS) — PostgreSQL

Projeto de banco de dados relacional voltado para a simulação de um **WMS (Warehouse Management System)** simplificado. O objetivo é demonstrar a modelagem de dados operacionais e o uso de consultas analíticas para geração de indicadores operacionais de logística e estoque.

---

## 🛠️ Tecnologias Utilizadas

- **SGBD:** PostgreSQL (Supabase)
- **Linguagem:** SQL (DDL, DML, DQL)
- **Ferramentas:** VS Code (SQLTools), Git & GitHub

---

## 🗄️ Modelagem e Estrutura do Banco

O banco é composto por três tabelas conectadas via chaves estrangeiras (`FOREIGN KEY`) com suporte a exclusão em cascata:

1. **`produtos`**: Cadastro mestre de itens, códigos SKU, preços e parâmetros de estoque mínimo.
2. **`estoque_movimentacao`**: Histórico de entradas e saídas de produtos com atualização temporal.
3. **`envios`**: Registro das operações de expedição e transporte para controle de nível de serviço.

---

## 📊 Principais Indicadores Analisados (DQL)

O script principal inclui consultas avançadas projetadas para responder a perguntas reais do negócio:

- **Saldo Atual & Ponto de Reposição:** Cálculo dinâmico do saldo físico derivado do histórico de movimentações, com alertas automáticos de necessidade de compra/reposição baseados no estoque mínimo.
- **SLA de Transportes (*On-Time Delivery*):** Mensuração do percentual de entregas realizadas no prazo por modalidade de transporte (expresso, rodoviário fracionado, lotação).

---

## 🚀 Como Executar o Projeto

1. Clone o repositório:
   ```bash
   git clone [https://github.com/ICARORAMOSMACIEL/wms-sql-postgres.git](https://github.com/ICARORAMOSMACIEL/wms-sql-postgres.git)