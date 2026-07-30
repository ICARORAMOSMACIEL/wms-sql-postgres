-- Tabela de Produtos
CREATE TABLE produtos (
    id_produto SERIAL PRIMARY KEY,
    sku VARCHAR(30) UNIQUE NOT NULL,
    nome_produto VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    preco_unitario DECIMAL(10, 2) NOT NULL,
    estoque_minimo INT DEFAULT 10
);

-- Tabela de Movimentação de Estoque
CREATE TABLE estoque_movimentacao (
    id_movimentacao SERIAL PRIMARY KEY,
    id_produto INT NOT NULL,
    tipo_movimentacao VARCHAR(10) CHECK (tipo_movimentacao IN ('ENTRADA', 'SAIDA')) NOT NULL,
    quantidade INT NOT NULL,
    data_movimentacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_produto_movimentacao FOREIGN KEY (id_produto) REFERENCES produtos(id_produto) ON DELETE CASCADE
);

-- Tabela de Envios / Entregas Logísticas
CREATE TABLE envios (
    id_envio SERIAL PRIMARY KEY,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    modalidade_transporte VARCHAR(50) NOT NULL,
    data_envio DATE NOT NULL,
    data_entrega_prevista DATE NOT NULL,
    data_entrega_real DATE,
    status_envio VARCHAR(15) CHECK (status_envio IN ('EM_TRANSITO', 'ENTREGUE', 'ATRASADO')) NOT NULL,
    CONSTRAINT fk_produto_envios FOREIGN KEY (id_produto) REFERENCES produtos(id_produto) ON DELETE CASCADE
);