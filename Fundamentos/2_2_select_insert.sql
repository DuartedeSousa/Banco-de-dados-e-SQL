-- database: 2_0_banco.sqlite

-- ====================================
-- 1. Criação de uma tabela de exemplo
-- ====================================
-- Antes de inserir ou consultar, precisamos de uma tabela.
-- Vamos criar a tabela 'cursos' com algumas restrições.ALTER

CREATE TABLE cursos (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    aulas INTEGER DEFAULT 0, -- numero de aulas, padrão
    ativo INETEGER DEFAULT 1 -- 1 = ativo, 0 = inativo
);

-- ====================================
-- INSERT INTO - Inserindo dados
-- ====================================
INSERT INTO cursos (id, nome, aulas, ativo) -- Não coloque ';' aqui
VALUES (1, 'HTML', 10, 1); -- Somente após os valores forem definidos

-- É possível omitir colunas que aceitam NULL ou têm DEFAULT:
INSERT INTO cursos (id, nome) VALUES (2, 'CSS');

INSERT INTO cursos (id, nome, aulas)
VALUES
    (3, 'node.js', 18),
    (4, 'express', 18),
    (5, 'MongoDB', 18);



-- ====================================
-- SELECT - Consultando dados
-- ====================================

-- Seleciona toda tabela
SELECT * FROM cursos;

-- Seleciona só a tabela nome do curso
SELECT nome FROM cursos;