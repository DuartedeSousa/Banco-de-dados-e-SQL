-- database: 2_0_banco.sqlite

-- ================================
-- 1. CREATE TABLE
-- ================================

-- Exemplo 1
-- Tabela simples sem tipos definidos
CREATE TABLE exemplo1 (id, nome, idade);

-- Exemplo 2
-- Tabela com tipos e restrições
CREATE TABLE exemplo2 (
    id INTEGER PRIMARY KEY, -- chave primária (única)
    nome TEXT NOT NULL, -- texto obrigatório
    email TEXT UNIQUE, -- texto único (não pode repetir)
    salario REAL, -- número real (pode ser nulo)
    ativo INTEGER DEFAULT 1 -- está definindo como valor padrão o número 1 
);

-- ================================
-- 2. DROP TABLE
-- ================================
-- O comando DROP TABLE remove completamente uma tabela e todos os seus dados

DROP TABLE IF EXISTS exemplo1;


-- ================================
-- 3. PRAGMA
-- ================================
-- Exibir a estrutura da tabela

-- Exemplo 3
CREATE TABLE alunos (
    matricula INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    cpf TEXT UNIQUE,
    data_nasc TEXT,
    ativo INTEGER DEFAULT 1
);

PRAGMA table_info('alunos');


DROP TABLE IF EXiSTS alunos;
DROP TABLE IF EXISTS exemplo2;



