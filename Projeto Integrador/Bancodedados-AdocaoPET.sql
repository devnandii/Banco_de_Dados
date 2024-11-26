 
Banco de dados - AdocaoPET
==============================
Postgresql
==============================

-- -----------------------------------------------------
-- 1. Table Doador
-- -----------------------------------------------------
CREATE TABLE Doador (
  idDoador SERIAL PRIMARY KEY,
  Nome_doador  VARCHAR(100),
  Contato VARCHAR(45),
  Endereco VARCHAR(155),
  Email VARCHAR(60),
  Cpf VARCHAR(45),
  Data_Nascimento DATE
);

-- ===========
-- inserts
-- ===========
-- Inserts para a tabela Doador
INSERT INTO Doador (nome_doador, contato, endereco, email, cpf, data_nascimento)
VALUES
('Carlos Silva Souza', '995615855', 'Rua dos Prazeres, 123 - Centro', 'carlos.silva@email.com', '12345678901', '1998-05-25'),
('Maria Souza Pereira', '992582222', 'Avenida Litorânea, 2500 - Calhau', 'maria.souza@email.com', '23456789012', '1999-11-05'),
('João Santos Lima', '992333538', 'Rua da Estrela, 987 - Praia Grande', 'joao.santos@email.com', '34567890123', '1990-07-15'),
('Lucia Pereira Araujo', '994106444', 'Travessa Santa Luzia, 45 - Anjo da Guarda', 'lucia.pereira@email.com', '45678901234', '1988-11-01'),
('Pedro Almeida Costa', '952144755', 'Avenida Guajajaras, 1500 - São Cristóvão', 'pedro.almeida@email.com', '56789012345', '1993-09-30'),
('Fernanda Lima Ramos ', '996626176', 'Rua da Paz, 456 - Monte Castelo', 'fernanda.lima@email.com', '67890123456', '2002-08-23'),
('Juliana Costa Nunes', '993723577', 'Avenida Daniel de La Touche, 1020 - Cohama', 'juliana.costa@email.com', '78901234567', '1985-01-20'),
('Rodrigo Araujo Silva', '998238158', 'Rua do Passeio, 321 - Madre Deus', 'rodrigo.araujo@email.com', '89012345678', '1982-02-18'),
('Sofia Ramos Souza', '985992599', 'Travessa da Vitória, 78 - Vila Embratel', 'sofia.ramos@email.com', '90123456789', '1995-04-28'),
('Gustavo Nunes Almeida', '991025211', 'Avenida dos Franceses, 2345 - Tirirical', 'gustavo.nunes@email.com', '01234567890', '1989-06-15');

SELECT * FROM Doador;

-- -----------------------------------------------------
-- 2. Table Historico_Medico
-- -----------------------------------------------------
CREATE TABLE Historico_Medico (
  idhistorico SERIAL PRIMARY KEY,
  Data_exames DATE,
  Data_registros DATE,
  Vacinas VARCHAR(155),
  Observacoes VARCHAR(255)
);

-- ===========
-- inserts
-- ===========
INSERT INTO Historico_Medico (data_exames, vacinas, data_registros, observacoes)
VALUES
('2022-02-10', 'Raiva, Parvovirose', '2023-05-11', 'Exame anual, sem anormalidades detectadas.'),
('2021-05-16', 'Cinomose, Hepatite', '2023-06-16','Vacina da Giardíase administrada após leve quadro de diarreia, sem complicações.'),
('2020-12-15', 'Leptospirose, Coronavirose', '2023-08-22','Animal apresentou febre leve após a vacinação, recuperado em dois dias.'),
('2022-12-01', 'Giardíase, Raiva', '2023-07-11', 'Resultados dentro dos parâmetros normais, nenhuma reação adversa observada.'),
('2019-04-11', 'Parvovirose, Hepatite', '2023-09-02', 'Vacina contra Parvovirose aplicada após surto local, animal saudável.'),
('2020-12-26', 'Raiva, Coronavirose', '2023-04-16','Raiva e Cinomose atualizadas, sem reações adversas.'),
('2019-02-05', 'Leptospirose, Giardíase', '2023-03-06','Exame anual, sem anormalidades detectadas.'),
('2023-10-20', 'Raiva, Hepatite', '2023-10-21','Recomendada nova dose de vacina para leptospirose em seis meses.'),
('2023-05-14', 'Giardíase, Parvovirose', '2023-02-15','Exame anual, sem anormalidades detectadas.'),
('2023-11-25', 'Raiva, Cinomose', '2023-11-26','Exame anual, sem anormalidades detectadas.'),
('2021-05-15', 'Raiva, Cinomose', '2023-11-26','Exame anual, sem anormalidades detectadas.'),
('2020-09-08', 'Cinomose, Hepatite', '2023-11-26','Exame anual, sem anormalidades detectadas.'),
('2022-08-02', 'Raiva, Cinomose', '2023-11-26','Exame anual, sem anormalidades detectadas.'),
('2021-10-25', 'Raiva, Cinomose', '2023-11-26','Exame anual, sem anormalidades detectadas.'),
('2023-06-10', 'Raiva, Parvovirose', '2023-06-15', 'Exame inicial, sem anormalidades.'),
('2022-07-18', 'Cinomose, Hepatite', '2022-07-20', 'Vacinas administradas conforme calendário.'),
('2021-04-10', 'Leptospirose, Giardíase', '2021-04-15', 'Exame completo, todas as vacinas atualizadas.'),
('2020-12-12', 'Raiva, Parvovirose', '2020-12-15', 'Animal saudável, vacina em dia.'),
('2021-01-18', 'Raiva, Cinomose', '2021-01-20', 'Primeiro exame de rotina realizado, tudo normal.'),
('2022-10-01', 'Cinomose, Hepatite', '2022-10-03', 'Vacinas completas, sem reações adversas.'),
('2023-06-15', 'Raiva, Parvovirose', '2023-06-20', 'Exame anual realizado, animal saudável.'),
('2021-03-30', 'Leptospirose, Raiva', '2021-04-05', 'Exame completo, sem anormalidades.'),
('2020-08-05', 'Raiva, Hepatite', '2020-08-10', 'Primeiro exame, sem alterações.');


SELECT * FROM historico_medico;
-- -----------------------------------------------------
-- 3. Table Ongs
-- -----------------------------------------------------
CREATE TABLE Ongs (
  idOng SERIAL PRIMARY KEY,
  Nome_ong VARCHAR(100),
  Contato VARCHAR(45),
  CNPJ VARCHAR(45),
  Endereco VARCHAR(155)
);

-- ===========
-- inserts
-- ===========
INSERT INTO ONGs ( nome_ong, contato, endereco, CNPJ)
VALUES
('ONG Amor Animal', '993652145', 'Avenida Getúlio Vargas, 2025 - Monte Castelo', '11222333444455'),
('Instituto Bem-Estar', '992134569', 'Rua Santo Antônio, 123 - Cohab', '22333444555666'),
('Projeto Patas Felizes', '994577889', 'Avenida Jerônimo de Albuquerque, 1500 - Cohafuma', '33444555666777'),
('Amigos dos Animais', '995668451', 'Avenida dos Africanos, 890 - Sacavém', '44555666777888'),
('Resgatando Vidas', '997654333', 'Rua da Manga, 456 - Turu', '55666777888999');

SELECT * FROM ongs;
-- -----------------------------------------------------
-- 4. Table Animal
-- -----------------------------------------------------

CREATE TYPE st AS ENUM ('Disponível', 'Indisponível');


CREATE TYPE s AS ENUM ('F', 'M');


CREATE TABLE Animal (
  idAnimal SERIAL PRIMARY KEY,
  Nome_animal VARCHAR(100),
  Data_nascimento DATE,
  Especie VARCHAR(60),
  Raca VARCHAR(60),
  Sexo s, 
  Status st,
  Peso DECIMAL(10,2),
  Descricao VARCHAR(155),
  doadorID INT NOT NULL,
  historicoID INT NOT NULL,
  ongID INT NOT NULL,
  FOREIGN KEY (doadorID) REFERENCES Doador(idDoador),
  FOREIGN KEY (historicoID) REFERENCES Historico_Medico(idhistorico),
  FOREIGN KEY (ongID) REFERENCES Ongs(idOng)
);

-- ===========
-- inserts
-- ===========
INSERT INTO Animal (doadorID, historicoID,ongID, nome_animal, data_nascimento, especie, raca, sexo, status, peso, descricao)
VALUES
(1, 1, 2, 'Bella', '2022-01-10', 'Cachorro', 'Labrador', 'F', 'Disponível', 25.5, 'Amigável e enérgico' ),
(2, 2, 2,'Thor', '2021-04-23', 'Cachorro', 'Vira_lata', 'M', 'Disponível', 22.0, 'Leal e protetor'),
(3, 3, 5,'Zeus', '2020-09-12',  'Gato', 'Persa', 'M', 'Disponível', 6.5, 'Tranquilo e carinhoso'),
(4, 4, 1,'Luna', '2022-11-01', 'Gato', 'Siamês', 'F', 'Disponível', 4.0, 'Curioso e brincalhão'),
(5, 5, 1,'Rex', '2019-06-14', 'Cachorro', 'Pastor Alemão', 'M', 'Disponível', 30.0, 'Guardião e inteligente'),
(6, 6, 2,'Flora', '2020-12-20', 'Cachorro', 'Golden Retriever', 'F', 'Disponível', 28.0, 'Afetuoso e brincalhão'),
(7, 7, 3,'Oliver', '2018-05-05', 'Gato', 'Vira_lata', 'M', 'Disponível', 5.8, 'Zangado e carente'),
(8, 8, 4,'Lupy', '2023-02-10', 'Cachorro', 'Beagle', 'F', 'Disponível', 12.0, 'Alegre e curioso'),
(9, 9, 4,'Tigrão', '2023-03-08', 'Gato', 'Siamês', 'M', 'Disponível', 8.0, 'Amigável e social'),
(10, 3,5, 'Max', '2023-07-01', 'Cachorro', 'Poodle', 'M', 'Disponível', 7.5, 'Esperto e brincalhão'),
(8, 1, 2,'Charlie', '2021-02-15', 'Cachorro', 'Golden Retriever', 'M', 'Disponível', 30.0, 'Amigável e brincalhão'),
(6, 2, 1,'Nina', '2020-08-30', 'Gato', 'Siamês', 'F', 'Disponível', 5.5, 'Curiosa e carinhosa'),
(7, 3, 3,'Fred', '2022-07-22', 'Cachorro', 'Beagle', 'M', 'Disponível', 12.0, 'Animado e afetuoso'),
(7, 4, 3,'Lily', '2021-01-14', 'Gato', 'Persa', 'F', 'Disponível', 4.2, 'Calma e dócil'),
(1, 2, 1, 'Zorro', '2023-05-15', 'Cachorro', 'Bulldog', 'M', 'Disponível', 12.0, 'Corajoso e fiel'),
(2, 3, 2, 'Sasha', '2022-06-18', 'Cachorro', 'Chihuahua', 'F', 'Disponível', 4.5, 'Pequena e brincalhona'),
(3, 4, 3, 'Maggie', '2021-03-22',  'Gato', 'Vira-lata', 'F', 'Disponível', 3.0, 'Alegre e curiosa'),
(4, 5, 4, 'Spike', '2020-11-05', 'Cachorro', 'Pit Bull', 'M', 'Disponível', 25.0, 'Forte e protetor'),
(5, 6, 5, 'Lola', '2021-01-10', 'Gato', 'Persa', 'F', 'Disponível', 7.0, 'Carinhosa e calma'),
(7, 8, 2, 'Lupita', '2023-04-18', 'Cachorro', 'Vira-lata', 'F', 'Disponível', 4.2, 'Dócil e afetuosa'),
(8, 9, 3, 'Pompeu', '2020-12-05', 'Cachorro', 'Golden Retriever', 'M', 'Disponível', 32.0, 'Amigável e leal'),
(9, 10, 4, 'Fofo', '2019-06-21', 'Cachorro', 'Rottweiler', 'F', 'Disponível', 34.0, 'Protetora e carinhosa'),
(10, 11, 5, 'Totó', '2023-02-15', 'Cachorro', 'Labrador', 'M', 'Disponível', 28.0, 'Energia e diversão em excesso');


SELECT * FROM animal;

-- -----------------------------------------------------
-- 5. Table Patrocinador
-- -----------------------------------------------------
CREATE TABLE Patrocinador (
  idPatrocinador SERIAL PRIMARY KEY,
  Nome_patrocinador VARCHAR(100),
  Contato VARCHAR(45),
  Email VARCHAR(155),
  Endereco VARCHAR(155),
  CNPJ VARCHAR(45),
 
);

-- ===========
-- inserts
-- ===========

INSERT INTO Patrocinador (nome_patrocinador, contato, email, endereco, CNPJ)
VALUES

('Instituto Vida', '994005844', 'instituvida@vida.org', 'Rua das Hortas, 123 - Jardim Renascença', '45678901000166'),
('Associação Animal', '995505805', 'associacaopet@animal.org', 'Avenida dos Holandeses, 456 - Ponta d Areia ', '56789012000155'),
('Amigos da Natureza', '996653216', 'amigos.natureza@natureza.org', 'Rua do Sol, 789 - Renascença', '67890123000144'),
('Patrocinador Nacional', '997787967', 'pet_zoo@nacional.com', 'Avenida Magalhães Lima, 101 - São Francisco',  '78901234000133');
SELECT * FROM patrocinador;

-- -----------------------------------------------------
-- 6. Table Promocao
-- -----------------------------------------------------
CREATE TABLE Promocao (
  idPromocao SERIAL PRIMARY KEY,
  Data_inicio DATE,
  Data_fim DATE,
  Descricao VARCHAR(155),
  patrocinadorID INT NOT NULL,
  FOREIGN KEY (patrocinadorID) REFERENCES Patrocinador(idPatrocinador)
);


INSERT INTO Promocao (patrocinadorID, descricao, data_inicio, data_fim)
VALUES
(1, 'Descontos em Banho&Tosa', '2024-11-01', '2025-02-20'),
(1, 'Pacote inicial de ração grátis', '2024-11-01', '2025-08-31'),
(3, 'Descontos em Medicamentos', '2024-10-01', '2025-09-30'),
(4, 'Vacinas gratuitas', '2024-05-01', '2025-09-30'),
(2, 'Desconto em produtos pet', '2024-06-01', '2025-07-24'),
(3, 'Descontos em Brinquedos', '2024-07-01', '2025-10-10');

SELECT * FROM promocao;

-- -----------------------------------------------------
-- 7. Table Adotante
-- -----------------------------------------------------
CREATE TABLE Adotante (
  idAdotante SERIAL PRIMARY KEY,
  Nome_adotante VARCHAR(100),
  Email VARCHAR(100),
  Data_adocao DATE,
  Contato VARCHAR(45),
  Endereco VARCHAR(155),
  Renda_mensal DECIMAL(10,2),
  Data_nascimento DATE,
  Cpf VARCHAR(45),
  Profissao VARCHAR(65)
);

INSERT INTO Adotante (nome_adotante, email, renda_mensal, data_nascimento, cpf, contato, endereco, data_adocao, profissao)
VALUES
('Ana Costa Oliveira', 'ana.costa@email.com', 3500.50, '1987-08-20', '45678901234', '991112611', 'Rua do Sol, nº 123, Centro, São Luís - MA', '2024-06-15', 'Professora'),
('Bruno Oliveira Fonseca', 'bruno.oliveira@email.com', 4500.00, '1992-02-17', '89890152345', '954722522', 'Avenida Magalhães Lima, nº 456, São Francisco, São Luís - MA', '2024-07-10', 'Engenheiro'),
('Celia Andrade Gusmão', 'celia.andrade@email.com', 2700.00, '1984-03-29', '77890123456', '993337833', 'Rua São Pedro, nº 789, Cohama, São Luís - MA', '2024-07-05', 'Analista'),
('Diego Souza Pereira', 'diego.souza@email.com', 3200.00, '1991-10-05', '78901234567', '994442544', 'Avenida João Pessoa, nº 234, João Paulo, São Luís - MA', '2024-08-12', 'Contador'),
('Elaine Torres Silva', 'elaine.torres@email.com', 5100.00, '1978-12-19', '89012345678', '941555532', 'Avenida dos Holandeses, nº 1000, Ponta d Areia, São Luís - MA', '2024-06-18', 'Gerente'),
('Luciana Martins Silva', 'luciana.silva@email.com', 4500.00, '2000-04-25', '98765432100', '992233445', 'Rua das Palmeiras, nº 45, Centro, São Luís - MA', '2024-05-10', 'Advogada'),
('Carlos Henrique Souza', 'carlos.souza@email.com', 5500.00, '1997-11-30', '12345678901', '999112233', 'Avenida dos Holandeses, nº 789, Ponta d Areia, São Luís - MA', '2024-05-15', 'Médico'),
('Patricia Oliveira Lima', 'patricia.lima@email.com', 3800.00, '1996-07-10', '23456789012', '998877665', 'Rua São José, nº 321, São Francisco, São Luís - MA', '2024-06-01', 'Psicóloga'),
('Felipe Pereira Gomes', 'felipe.pereira@email.com', 7000.00, '2002-01-20', '34567890123', '997755443', 'Avenida Magalhães Lima, nº 1000, São Francisco, São Luís - MA', '2024-07-02', 'Engenheiro Civil'),
('Fernanda Costa Oliveira', 'fernanda.oliveira@email.com', 3200.00, '2004-03-14', '45678901234', '996644223', 'Rua das Flores, nº 400, Jardim Renascença, São Luís - MA', '2024-07-05', 'Assistente Social'),
('Juliano Rocha Lima', 'juliano.rocha@email.com', 4800.00, '1993-09-28', '56789012345', '995533221', 'Avenida do Contorno, nº 850, Calhau, São Luís - MA', '2024-08-12', 'Administrador'),
('Vanessa Santos Pereira', 'vanessa.pereira@email.com', 5500.00, '1990-12-15', '67890123456', '994422110', 'Rua da Paz, nº 78, Monte Castelo, São Luís - MA', '2024-06-10', 'Dentista'),
('Eduardo Almeida Costa', 'eduardo.costa@email.com', 3900.00, '1996-06-05', '78901234567', '993311559', 'Avenida Litorânea, nº 1234, São Cristóvão, São Luís - MA', '2024-07-18', 'Professor'),
('Rita de Cássia Silva', 'rita.silva@email.com', 2700.00, '1994-10-10', '89012345678', '992244556', 'Rua dos Anjos, nº 11, Cohama, São Luís - MA', '2024-06-30', 'Coordenadora de Projetos'),
('Marcos Antônio Souza', 'marcos.souza@email.com', 4200.00, '1985-02-17', '90123456789', '991155447', 'Avenida Getúlio Vargas, nº 500, Centro, São Luís - MA', '2024-08-05', 'Técnico de Informática');




SELECT * FROM adotante;
-- -----------------------------------------------------
-- 8. Table Adocao
-- -----------------------------------------------------
CREATE TABLE Adocao (
  idAdocao SERIAL PRIMARY KEY,
  Data_adocao DATE,
  animalID INT NOT NULL,
  promocaoID INT NOT NULL,
  patrocinadorID INT NOT NULL,
  adotanteID INT NOT NULL,
  FOREIGN KEY (animalID) REFERENCES Animal(idAnimal),
  FOREIGN KEY (promocaoID) REFERENCES Promocao(idPromocao),
  FOREIGN KEY (patrocinadorID) REFERENCES Patrocinador(idPatrocinador),
  FOREIGN KEY (adotanteID) REFERENCES Adotante(idAdotante)
);


-- ===========
-- inserts
-- ===========


INSERT INTO Adocao (adotanteID, animalID, promocaoID, patrocinadorID, Data_Adocao)
VALUES
(1, 1, 6, 2, '2023-02-01'), -- Bella
(2, 2, 1, 4, '2021-12-10'), -- Thor
(3, 3, 2, 3, '2022-02-05'),-- Zeus
(4, 4, 3, 1, '2023-05-10'), -- Luna
(5, 5, 4, 1, '2022-01-27'),-- Rex
(6, 6, 5, 2, '2023-07-09'),-- Flora
(7, 7 , 1, 4,'2022-11-22'),-- Oliver
(8, 8, 2, 4,'2023-05-15'), -- Lupy
(9, 9, 2, 2,'2024-01-15'),-- Tigrão
(10, 10, 4, 1, '2024-02-20'),-- Max
(11, 11, 6, 3,  '2023-05-17'),-- Charlie
(12, 12, 4, 2, '2022-03-02'),-- Nina
(13, 13, 3, 1, '2024-03-04'), – Fred
(14, 14, 2, 3, '2024-04-11'),-- Zorro
(15, 15, 3, 4, '2024-03-02');-- Sasha


SELECT * FROM adocao;

-- -----------------------------------------------------
-- 9. Table Cancelamento
-- -----------------------------------------------------

CREATE TABLE Cancelamento (
  idCancelamento SERIAL PRIMARY KEY,
  Motivo VARCHAR(155),
  Observacoes VARCHAR(255),
  Data_cancelamento DATE,
  adocaoID INT NOT NULL,
  animalID INT NOT NULL,
  adotanteID INT NOT NULL,
  FOREIGN KEY (adocaoID) REFERENCES Adocao(idAdocao)
);


-- ===========
-- inserts
-- ===========


INSERT INTO Cancelamento (adocaoID, adotanteID, animalID, data_cancelamento, motivo, observacoes)
VALUES
(38, 7, 9, '2024-08-10', 'Mudança de cidade', 'Impossibilidade de manter o animal'),
(39, 6, 10, '2024-05-02', 'Alergia', 'Adotante desenvolveu alergia ao animal');








-- ================
-- CONSULTAS
-- ================

-- Listar todos os animais
SELECT * FROM animal;

-- Numeros de doadores
SELECT COUNT(IDanimal) AS total_de_animais
FROM animal;

-- Listar todos os registros de saude do animal que contenha a vacina contra raiva
SELECT * FROM Historico_Medico
WHERE vacinas LIKE '%Raiva%';

-- Encontrar todos os animais disponiveis para adoção
SELECT * FROM Animal
WHERE status = 'Disponível';


-- Calcula e retoma a idade dos adotantes
SELECT 
    nome_adotante,  EXTRACT(YEAR FROM AGE(data_nascimento)) AS idade
FROM Adotante
ORDER BY idade ASC; 

-- Retorna os nomes dos adotantes, seus respectivos animais adotados e a data da adoção
SELECT 
    a.IDadocao AS IDadocao,
	an.nome_animal AS nome_animal,	
    ad.nome_adotante AS nome_adotante,
    a.Data_Adocao
FROM  Adocao a
JOIN  Adotante ad ON a.adotanteID = ad.IDadotante
JOIN  Animal an ON a.animalid = an.idanimal;


-- Retorna o número de doações feitas por cada doador.
SELECT  ad.nome_doador AS Nome_doador, 
    COUNT(ad.IDdoador) AS quantidade_doacoes
FROM animal a
JOIN doador ad ON a.doadorID = ad.IDdoador
GROUP BY ad.IDdoador
ORDER BY quantidade_doacoes DESC;




– Criação da Trigger para atualização da tabela animal para indisponivel após adoção

CREATE OR REPLACE FUNCTION atualiza_status_adocao()
RETURNS TRIGGER AS $$
BEGIN
    -- Atualiza o status 'Indisponível' após a adoção
    UPDATE Animal
    SET Status = 'Indisponível'
    WHERE idAnimal = NEW.animalID;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Agora, cria o gatilho que chama a função acima
CREATE TRIGGER atualizar_status_adocao
AFTER INSERT ON Adocao
FOR EACH ROW
EXECUTE FUNCTION atualiza_status_adocao();


– Teste

INSERT INTO adocao(adotanteID, animalID, promocaoID, patrocinadorID, Data_Adocao)
VALUES
(1, 21, 1, 1,'2024-05-01');--Pompeu


– Criação da Trigger para atualização da tabela animal para disponivel após cancelamento
-- função associada ao gatilho
CREATE OR REPLACE FUNCTION status_cancelamento()
RETURNS TRIGGER AS $$
BEGIN
    -- Atualiza o status  para 'Disponível' após o cancelamento da adoção
    UPDATE Animal
    SET Status = 'Disponível'
    WHERE idAnimal = NEW.animalID;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Agora, cria o gatilho que chama a função acima
CREATE TRIGGER status_cancelamento
AFTER INSERT ON Cancelamento
FOR EACH ROW
EXECUTE FUNCTION status_cancelamento();

insert into cancelamento (adocaoID, adotanteID, animalID, data_cancelamento, motivo, observacoes)
values
(41, 1, 21, '2024-11-07','alergia ao pelo animal','Animal apresenta bons cuidados');
























