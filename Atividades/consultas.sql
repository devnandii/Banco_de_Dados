CREATE SCHEMA atv01;
CREATE TABLE atv01.alunos(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    curso_id INT,
    idade INT
);
CREATE TABLE atv01.cursos (
    id_cursos SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    duracao INT
);
CREATE TABLE atv01.matriculas (
    id SERIAL PRIMARY KEY,
    aluno_id INT REFERENCES atv01.alunos(id),
    curso_id INT REFERENCES atv01.cursos(id_cursos),
    data_matricula DATE
);
-- INSERINDO DADOS NA TABELA
INSERT INTO atv01.alunos (nome, curso_id, idade)
VALUES ('João Silva', 1, 20),
    ('Maria Oliveira', 2, 22),
    ('Pedro Santos', 1, 19),
    ('Ana Costa', 3, 21);
INSERT INTO atv01.cursos (nome, duracao)
VALUES ('Engenharia de Software', 60),
    ('Análise e Desenvolvimento de Sistemas', 48),
    ('Banco de Dados', 36);
INSERT INTO atv01.matriculas (aluno_id, curso_id, data_matricula)
VALUES (1, 2, '2024-01-15'),
    (2, 1, '2024-02-20'),
    (3, 3, '2024-03-10'),
    (4, 1, '2024-04-05');
/*Exercicio*/
--Listar todos os alunos cadastrados
SELECT *
FROM atv01.alunos;
-- Selecionar nome e idade dos alunos
SELECT nome,
    idade
FROM atv01.alunos;
--Listar cursos disponíveis
SELECT nome,
    duracao
FROM atv01.cursos;
--Exibir alunos com idade maior que 21 anos
SELECT nome
FROM atv01.alunos
WHERE idade >= 21;
--Consultar alunos matriculados em um curso específico
SELECT a.nome as alunos,
    c.nome as cursos
FROM atv01.alunos a
    INNER JOIN atv01.cursos c ON a.id = c.id_cursos
WHERE c.nome = 'Ciencias da computaçao';
--Retornar todas as matrículas com nome de aluno e curso
SELECT a.nome as alunos,
    c.nome as cursos
FROM atv01.alunos a
    INNER JOIN atv01.matriculas m ON a.id = m.aluno_id
    INNER JOIN atv01.cursos c ON m.curso_id = c.id_cursos;
--Listar alunos que ainda não estão matriculados em cursos
SELECT a.nome
FROM atv01.alunos a
    LEFT JOIN atv01.matriculas m ON a.id = m.aluno_id
WHERE m.id IS NULL;
--Contar o número de alunos matriculados em cada curso
SELECT c.nome as curso,
    count(m.aluno_id) as num_alunos
FROM atv01.cursos c
    LEFT JOIN atv01.matriculas m ON c.id_cursos = m.curso_id
GROUP BY c.nome;
--Encontrar o curso com a maior duração
SELECT nome,
    duracao
FROM atv01.cursos
ORDER BY duracao DESC
LIMIT 1;
--Exibir nome dos alunos e a data de matrícula em ordem decrescente
SELECT a.nome as nome_aluno,
    m.data_matricula
FROM atv01.alunos a
    INNER JOIN atv01.matriculas m ON a.id = m.aluno_id
ORDER BY m.data_matricula DESC;
--Listar os cursos que possuem mais de 3 alunos matriculados
--Mostrar alunos e suas respectivas idades que estão matriculados em cursos com duração superior a 4 anos
SELECT a.nome as aluno,
    a.idade,
    c.nome as curso,
    c.duracao
FROM atv01.alunos a
    INNER JOIN atv01.matriculas m ON a.id = m.aluno_id
    INNER JOIN atv01.cursos c ON m.curso_id = c.id_cursos
WHERE c.duracao > 4;
--Encontrar o aluno mais novo matriculado em um curso
SELECT a.nome,
    a.idade
FROM atv01.alunos a
    INNER JOIN atv01.matriculas m ON a.id = m.aluno_id
ORDER BY a.idade ASC
LIMIT 1;
--Exibir todos os cursos que ainda não têm alunos matriculados
SELECT c.nome
FROM atv01.cursos c
    LEFT JOIN atv01.matriculas m ON c.id_cursos = m.curso_id
WHERE m.aluno_id IS NULL;
--Listar todas as informações dos alunos que estão matriculados no curso com o maior número de matrículas consulta tabelas
SELECT *
FROM atv01.matriculas;
SELECT *
FROM atv01.alunos;
SELECT *
FROM atv01.cursos;