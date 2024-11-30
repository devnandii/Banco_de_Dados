#--------------------------01.Cadastro de Livros em uma Biblioteca--------------------------

CREATE DATABASE Biblioteca;
USE Biblioteca;

CREATE TABLE livro (
	id_livro INT(5) AUTO_INCREMENT,
    Titulo VARCHAR(100),
	AutorID INT,
    CategoriaID INT,
    Ano INT,
    PRIMARY KEY(id_livro),
    FOREIGN KEY (AutorID) REFERENCES Autor(id_autor),
	FOREIGN KEY (CategoriaID) REFERENCES Categoria(id_categoria)
);

CREATE TABLE  Autor(
	id_autor INT(5) AUTO_INCREMENT,
    Nome varchar(100) NOT NULL,
    PRIMARY KEY(id_autor)
);

CREATE TABLE Categoria(
	id_categoria INT(5) AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_categoria)
);

INSERT INTO Autor (nome)
VALUES ('Stephen King'),
('Peter Straub'),
('George R.R. Martin'),
('Sarah J.Maas'),
('Jane Austen');

INSERT INTO Categoria (nome)
VALUES ('Terror'),
('Suspense'),
('Fantasia'),
('Romance');

INSERT INTO livro (AutorID, CategoriaID, titulo, Ano)
VALUES(1,1,'Carrie',1974),
(1,1,'O cemiterio',1983),
(2,1,'Ghost Story',1981),
(3,3,'As crônicas de gelo e fogo', 1996),
(3,3,'A Dança dos Dragões', 2011),
(4,4,'Corte de espinhos e rosas',2015),
(5, 4, 'Orgulho e Preconceito', 1813),
(5, 4, 'Sanditon', 1817);

SELECT * FROM Autor;
SELECT * FROM livro;
SELECT * FROM Categoria; 

#Escreva uma query para listar os livros com seus autores e categorias.

SELECT t.titulo, a.nome, c.nome
FROM livro t
JOIN autor a on t.AutorID = a.id_autor
JOIN categoria c on t.CategoriaID = c.id_categoria;

#---------------------02.Gestão de Reservas de Quartos em um Hotel--------------------------
CREATE DATABASE Hotel;
USE Hotel;

CREATE TABLE Cliente(
	id_cliente INT(5) AUTO_INCREMENT,
    Nome VARCHAR(100),
    Telefone INT,
    PRIMARY KEY (id_cliente)
);

CREATE TABLE Quarto(
	id_quarto INT(5) AUTO_INCREMENT,
    Tipo VARCHAR(100),
    Preco DOUBLE,
    PRIMARY KEY (id_quarto)
);

CREATE TABLE Reserva (
	id_reserva INT(5) AUTO_INCREMENT,
    ClienteID INT,
    QuartoID INT,
    DataEntrada DATE,
	DataSaida DATE,
    PRIMARY KEY (id_reserva),
    FOREIGN KEY (ClienteID) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (QuartoID) REFERENCES Quarto(id_quarto)
);

INSERT INTO Cliente (Nome, Telefone) 
VALUES ('Maria Oliveira', 123456789),
('João Silva', 987654321),
('Ana Costa', 555123456),
('Carlos Pereira', 444555666),
('Fernanda Santos', 777888999);

INSERT INTO Quarto (Tipo, Preco) VALUES
('Suite', 250.00),
('Standard', 150.00),
('Deluxe', 200.00),
('Single', 100.00),
('Double', 180.00);

INSERT INTO Reserva (ClienteID, QuartoID, DataEntrada, DataSaida) VALUES
(1, 1, '2024-09-20', '2024-09-25'),
(2, 2, '2024-09-22', '2024-09-27'),
(3, 3, '2024-09-24', '2024-09-30'),
(4, 4, '2024-09-26', '2024-10-02'),
(5, 5, '2024-09-28', '2024-10-05');

SELECT * FROM Cliente;
SELECT * FROM Quarto;
SELECT * FROM Reserva;

#Crie uma consulta para mostrar todas as reservas com os dados dos clientes e dos quartos.
SELECT c.nome,c.telefone, q.tipo,q.preco, r.DataEntrada,r.DataSaida
FROM Cliente c
JOIN Reserva r ON r.ClienteID = c.id_cliente
JOIN Quarto q ON r.QuartoID = q.id_quarto;



/*---------------------03.Sistema de Vendas de uma Loja--------------------------*/

CREATE DATABASE Vendas;
USE Vendas;

CREATE TABLE Cliente (
	id_client INT AUTO_INCREMENT,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    PRIMARY KEY (id_client)    
);

CREATE TABLE Produto(
	id_produto INT AUTO_INCREMENT,
    Nome VARCHAR(100),
    Preco DOUBLE,
    PRIMARY KEY (id_produto)
);

CREATE TABLE Venda (
	id_venda INT AUTO_INCREMENT,
    ClienteID INT,
    Data_venda DATE,
    PRIMARY KEY (id_venda),
    FOREIGN KEY (ClienteID) REFERENCES Cliente(id_client)
);

CREATE TABLE VendaProduto(
	id_vp INT AUTO_INCREMENT,
	VendaID INT,
	ProdutoID INT,
    Quantidade INT,
    PRIMARY KEY (id_vp),
    FOREIGN KEY (VendaID) REFERENCES Venda(id_venda),
    FOREIGN KEY (ProdutoID) REFERENCES Produto(id_produto)
);

INSERT INTO Cliente (Nome, Email) 
VALUES
('Lucas Almeida', 'lucas.almeida@example.com'),
('Juliana Costa', 'juliana.costa@example.com'),
('Pedro Silva', 'pedro.silva@example.com'),
('Amanda Oliveira', 'amanda.oliveira@example.com'),
('Ricardo Santos', 'ricardo.santos@example.com');

INSERT INTO Produto (Nome, Preco) 
VALUES
('Laptop', 1500.00),
('Smartphone', 800.00),
('Fone de Ouvido', 150.00),
('Teclado', 100.00),
('Mouse', 50.00);

INSERT INTO Venda (ClienteID, Data_venda) VALUES
(1, '2024-09-10'),
(2, '2024-09-12'),
(3, '2024-09-15'),
(4, '2024-09-18'),
(5, '2024-09-20');

INSERT INTO VendaProduto (VendaID, ProdutoID, Quantidade) VALUES
(1, 1, 1),  
(1, 3, 2),  
(2, 2, 1),  
(3, 4, 1),  
(4, 5, 2);  

select * from Cliente;
select * from Produto;
select * from Venda;
select * from VendaProduto;

/*Insira 3 vendas com produtos e escreva uma consulta que mostre as vendas feitas por cliente, com o total gasto em
cada venda.*/

SELECT c.nome, p.nome, p.preco,vp.quantidade
FROM Cliente c 
JOIN Venda v ON v.ClienteID = c.id_client
JOIN VendaProduto vp ON vp.VendaID = v.id_venda
JOIN Produto p ON vp.ProdutoID = p.id_produto;



#---------------------04.Registro de Presença em Aulas--------------------------
CREATE DATABASE Escola;
USE Escola;

SHOW DATABASES;

CREATE TABLE Aluno(
	id_aluno INT AUTO_INCREMENT,
    Nome VARCHAR(100),
    Turma INT,
    PRIMARY KEY (id_aluno)
);

CREATE TABLE Aula(
	id_aula INT AUTO_INCREMENT,
    Data_Aula DATE,
    Disciplina VARCHAR(100),
    PRIMARY KEY (id_aula)  
);

CREATE TABLE Presenca(
	id_presenca INT AUTO_INCREMENT,
    AlunoID INT,
    AulaID INT, 
    Presente VARCHAR(50),
    PRIMARY KEY (id_presenca),
    FOREIGN KEY (AlunoID) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (AulaID) REFERENCES Aula(id_aula)   
);

INSERT INTO Aluno (Nome, Turma) 
VALUES
('João Pereira', 101),
('Maria Silva', 102),
('Pedro Santos', 101),
('Ana Costa', 103),
('Lucas Almeida', 102);

INSERT INTO Aula (Data_Aula, Disciplina) VALUES
('2024-09-10', 'Matemática'),
('2024-09-11', 'Português'),
('2024-09-12', 'História'),
('2024-09-13', 'Ciências'),
('2024-09-14', 'Geografia');

INSERT INTO Presenca (AlunoID, AulaID, Presente) 
VALUES
(1, 1, 'Sim'), 
(2, 1, 'Não'),  
(3, 2, 'Sim'),  
(4, 3, 'Sim'),  
(5, 4, 'Não'); 

SELECT * FROM Aluno;
SELECT * FROM Aula;
SELECT * FROM Presenca;

# Insira dados e escreva uma query para listar os alunos que faltaram a uma determinada aula.

SELECT a.nome, a.turma, b.data_aula, b.disciplina
FROM Aluno a
JOIN Presenca p ON AlunoID = id_aluno
JOIN Aula b ON p.AulaID = b.id_aula
where p.presente = 'Não';

    
/*---------------------05.Sistema de Pagamentos de Funcionários--------------------------*/
 
 CREATE DATABASE FolhaPagamento;
 USE FolhaPagamento;
 
 CREATE TABLE Funcionario (
	id_funcion INT AUTO_INCREMENT,
    Nome VARCHAR(100),
    Salario DOUBLE,
    PRIMARY KEY (id_funcion)
);
CREATE TABLE Pagamento (
	id_pag INT AUTO_INCREMENT,
    FuncionarioID INT,
    Data_pag DATE,
    Valor DOUBLE,
    PRIMARY KEY (id_pag),
    FOREIGN KEY (FuncionarioID) REFERENCES Funcionario(id_funcion)
);

INSERT INTO Funcionario (Nome, Salario) 
VALUES
('Carlos Almeida', 3500.00),
('Fernanda Silva', 4200.00),
('Pedro Oliveira', 3000.00),
('Juliana Costa', 3700.00),
('Rafael Santos', 4000.00),
('Sophia Brito', 3500.00),
('Bruno Souza', 4200.00);

INSERT INTO Pagamento (FuncionarioID, Data_pag, Valor) 
VALUES
(1, '2024-09-05', 3500.00),
(2, '2024-09-05', 4200.00),
(3, '2024-09-05', 3000.00),
(4, '2024-09-05', 3700.00),  
(5, '2024-09-05', 4000.00),
(6, '2024-08-15', 3500.00),
(7, '2024-08-29', 4200.00);


SELECT * FROM Funcionario;
SELECT * FROM Pagamento;

#crie uma query que mostre todos os pagamentos realizados nos últimos 3 meses.

SELECT f.nome, p.Data_pag, p.valor
FROM Pagamento p
JOIN Funcionario f ON p.FuncionarioID = f.id_funcion
# WHERE Data.pag <= 
;


/*---------------------06.Controle de Estoque de uma Loja--------------------------*/
CREATE DATABASE Estoque;
USE Estoque;

CREATE TABLE Produto(
	id_produto INT AUTO_INCREMENT,
    Nome VARCHAR(100),
	QuantidadeAtual INT,
    PRIMARY KEY(id_produto)
);

CREATE TABLE Movimentacao (
	id_movim INT AUTO_INCREMENT,
    ProdutoID INT,
    TipoMovimento VARCHAR(100),
    Quantidade INT,
    Data_Mov Date,
	PRIMARY KEY(id_movim),
    FOREIGN KEY (ProdutoID) REFERENCES Produto(id_produto)
);

INSERT INTO Produto (Nome, QuantidadeAtual) 
VALUES
('Cadeira', 50),
('Mesa', 20),
('Lâmpada', 100),
('Teclado', 75),
('Mouse', 60);

INSERT INTO Movimentacao (ProdutoID, TipoMovimento, Quantidade, Data_Mov) VALUES
(1, 'Entrada', 10, '2024-09-01'),  
(1, 'Saída', 5, '2024-09-10'),     
(2, 'Entrada', 5, '2024-09-05'),   
(3, 'Saída', 20, '2024-09-15'),    
(4, 'Entrada', 30, '2024-09-20');  



select * from Produto;
SELECT * FROM Movimentacao;

# Escreva uma query que liste os produtos com baixa quantidade (menos de 10 itens no estoque).

SELECT p.nome, m.quantidade 
FROM Produto p
JOIN Movimentacao m ON m.ProdutoID = p.id_produto
WHERE  quantidade < 10; 


/*---------------------07.Sistema de Atendimento Médico--------------------------*/
CREATE DATABASE  Clinica;
USE Clinica;

CREATE TABLE  Paciente (
	id_paciente INT AUTO_INCREMENT,
    Nome VARCHAR(100),
    DataNascimento DATE,
    PRIMARY KEY (id_paciente)
);

CREATE TABLE  Medico (
	id_medico INT AUTO_INCREMENT,
    Nome VARCHAR(100),
    Especialidade VARCHAR(100),
    PRIMARY KEY (id_medico)
);

CREATE TABLE  Consulta (
	id_consulta INT AUTO_INCREMENT,
    PacienteID INT, 
    MedicoID INT,
    Data_Consulta DATE,
    Diagnostico VARCHAR(100),
	PRIMARY KEY(id_consulta),
    FOREIGN KEY (PacienteID) REFERENCES Paciente(id_paciente),
	FOREIGN KEY (MedicoID) REFERENCES Medico(id_medico)
    
);

INSERT INTO Paciente (Nome, DataNascimento) 
VALUES
('Ana Souza', '1985-03-22'),
('Carlos Silva', '1978-07-15'),
('Mariana Lima', '1990-11-05'),
('Pedro Costa', '1982-01-29'),
('Lucia Oliveira', '1975-09-10');

INSERT INTO Medico (Nome, Especialidade) VALUES
('Dr. João Almeida', 'Cardiologia'),
('Dra. Maria Fernandes', 'Pediatria'),
('Dr. Pedro Lima', 'Ortopedia'),
('Dra. Carla Santos', 'Dermatologia'),
('Dr. Bruno Oliveira', 'Neurologia');

INSERT INTO Consulta (PacienteID, MedicoID, Data_Consulta, Diagnostico) VALUES
(1, 1, '2024-09-05', 'Hipertensão'),
(2, 2, '2024-09-06', 'Consulta de rotina'),
(3, 3, '2024-09-07', 'Fratura no braço'),
(4, 4, '2024-09-08', 'Alergia'),
(5, 5, '2024-09-09', 'Dor de cabeça crônica');


select * from Consulta;
select * from Medico;
select * from Paciente;

# Crie uma query para listar todos os pacientes que consultaram com um determinado médico.

SELECT p.nome, m.nome, c.data_consulta
FROM Paciente p
JOIN Consulta c ON c.PacienteID = p.id_paciente
JOIN Medico m ON c.MedicoID = m.id_medico
WHERE m.nome = 'Dr. João Almeida';

/*--------------------08.Votação em uma Eleição--------------------------*/

CREATE DATABASE  Eleicao;
USE  Eleicao;

CREATE TABLE  Candidato (
	id_candidato INT AUTO_INCREMENT,
	Nome VARCHAR(100),
    Partido VARCHAR(10),
    PRIMARY KEY(id_candidato)
);

CREATE TABLE Eleitor (
	id_eleitor INT AUTO_INCREMENT,
    Nome VARCHAR(100),
    PRIMARY KEY (id_eleitor)
);

CREATE TABLE  Voto (
	id_voto INT AUTO_INCREMENT,
    CandidatoID INT,
    EleitorID INT,
    Data_Voto DATE,
    PRIMARY KEY(id_voto),
    FOREIGN KEY (CandidatoID) REFERENCES Candidato(id_candidato),
    FOREIGN KEY (EleitorID) REFERENCES Eleitor(id_eleitor)    
);

INSERT INTO Candidato (Nome, Partido) 
VALUES
('Ana Lima', 'PT'),
('Carlos Oliveira', 'PSDB'),
('Fernanda Souza', 'MDB'),
('João Silva', 'PSOL'),
('Maria Costa', 'DEM');

INSERT INTO Eleitor (Nome) 
VALUES
('Maria'),
('Joana'),
('Maria'),
('Karlos');


INSERT INTO Voto (CandidatoID, EleitorID, Data_Voto) VALUES
(1,1 , '2024-09-05'),  
(2, 2, '2024-09-06'),  
(3, 4, '2024-09-07'),  
(4, 1 , '2024-09-08'),  
(5,2 , '2024-09-09'); 

select * from Voto;
select * from Candidato;
select * from eleitor;

#escreva uma query que mostre a quantidade de votos que cada candidato recebeu.

SELECT c.nome, c.partido, COUNT(v.EleitorID)
FROM Voto v
JOIN Candidato c ON v.CandidatoID = c. id_candidato
GROUP BY c.nome, c.partido;

 /*---------------------09.Sistema de Aluguel de Carros--------------------------*/
CREATE DATABASE Locadora;
USE Locadora;

CREATE TABLE Carro (
	id_carro INT AUTO_INCREMENT,
    Modelo VARCHAR(100),
    Marca VARCHAR(100),
    Ano INT,
    PRIMARY KEY(id_carro)
);

CREATE TABLE  Cliente (
	id_cliente INT AUTO_INCREMENT,
    Nome VARCHAR(100),
    CNH INT,
    PRIMARY KEY(id_cliente)
);
 
CREATE TABLE Aluguel (
	id_aluguel INT AUTO_INCREMENT,
    CarroID INT,
    ClienteID INT,
    DataInicio DATE,
    DataFim DATE,
    PRIMARY KEY(id_aluguel),
    FOREIGN KEY (CarroID) REFERENCES Carro(id_carro),
    FOREIGN KEY (ClienteID) REFERENCES Cliente(id_cliente)
);

INSERT INTO Carro (Modelo, Marca, Ano) VALUES
('Civic', 'Honda', 2022),
('Corolla', 'Toyota', 2021),
('Fusca', 'Volkswagen', 1970),
('Model S', 'Tesla', 2023),
('Mustang', 'Ford', 2022);

INSERT INTO Cliente (Nome, CNH) 
VALUES
('Lucas Almeida', 12345),
('Mariana Costa', 23456),
('Carlos Silva', 34567),
('Ana Oliveira', 45678),
('Pedro Santos', 56789);

INSERT INTO Aluguel (CarroID, ClienteID, DataInicio, DataFim) VALUES
(1, 1, '2023-01-01', '2023-01-10'),
(2, 2, '2023-02-01', '2023-02-15'),
(3, 2, '2023-03-01', '2023-03-20'),
(4, 4, '2023-04-01', '2023-04-30'),
(5, 5, '2023-05-01', '2023-05-31');

SELECT * FROM Carro; 
SELECT * FROM Cliente; 
SELECT * FROM Aluguel;

# Crie uma query que mostre todos os aluguéis feitos por um cliente específico

SELECT c.nome, r.modelo, r.marca 
FROM Cliente c  
JOIN Aluguel a ON a.ClienteID = c.id_cliente
JOIN CARRO r ON a.CarroID = r.id_carro
WHERE c.nome = 'Mariana Costa';



/*--------------------- 10.Cadastro de Professores e Disciplinas--------------------------*/

CREATE DATABASE Faculdade;
USE Faculdade;

CREATE TABLE Professor (
	id_prof INT AUTO_INCREMENT,
    Nome VARCHAR(100),
    Departamento  VARCHAR(100),
    PRIMARY KEY (id_prof)
);

CREATE TABLE Disciplina (
	id_disciplina INT AUTO_INCREMENT,
    Nome VARCHAR(100),
    ProfessorID INT,
    PRIMARY KEY (id_disciplina),
    FOREIGN KEY (ProfessorID) REFERENCES Professor(id_prof)    
);

INSERT INTO Professor (Nome, Departamento) 
VALUES
('Dr. João Almeida', 'Matemática'),
('Dra. Maria Fernandes', 'Física'),
('Prof. Pedro Lima', 'Química'),
('Dra. Ana Costa', 'Biologia'),
('Prof. Bruno Oliveira', 'História');


INSERT INTO Disciplina (Nome, ProfessorID) 
VALUES
('Cálculo I', 1),          
('Física Geral', 2),       
('Química Orgânica', 3),   
('Biologia Celular', 4),   
('História Mundial', 5);   

SELECT * FROM Professor;
SELECT * FROM Disciplina;

# Escreva uma query que liste todas as disciplinas, incluindo o nome do professor que ministra cada uma.

SELECT p.nome, d.nome, p.departamento
FROM Professor p 
JOIN Disciplina d ON d.ProfessorID = p.id_prof
;
