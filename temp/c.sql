USE aluraDb;

-- Inserção Professor

INSERT INTO Professor (idProfessor, nomeProf, especialidade, salario, sexo)
VALUES (0, "Hermes Fonte Campos", "Mestrado em Engenharia de Software", 15000.00, "M");

-- Inserção Aluno

INSERT INTO Aluno (idAluno, nomeAluno, sexo) 
VALUES (100, "Aila Ribeiro", "F");

INSERT INTO Aluno (idAluno, nomeAluno, sexo) 
VALUES (101, "Marina Campos Moraes", "F");

INSERT INTO Aluno (idAluno, nomeAluno, sexo) 
VALUES (102, "Júlio de Abreu", "M");

INSERT INTO Aluno (idAluno, nomeAluno, sexo) 
VALUES (103, "Dafine Frigo Rios", "F");

INSERT INTO Aluno (idAluno, nomeAluno, sexo) 
VALUES (104, "Rian Raimundo de Porto", "M");

INSERT INTO Aluno (idAluno, nomeAluno, sexo) 
VALUES (105, "João Carlos Brif", "M");

INSERT INTO Aluno (idAluno, nomeAluno, sexo) 
VALUES (106, "Bento Antunes", "M");

INSERT INTO Aluno (idAluno, nomeAluno, sexo) 
VALUES (107, "Sérgio Aventuras", "M");

INSERT INTO Aluno (idAluno, nomeAluno, sexo) 
VALUES (108, "Karine Lima Rios", "F");

INSERT INTO Aluno (idAluno, nomeAluno, sexo) 
VALUES (109, "Marina Leal", "F");

-- Inserção Empresa

INSERT INTO Empresa (idEmpresa, nomeEmpresa)
VALUES (1, "Chevrolet");

-- Inserção Curso 

INSERT INTO Curso (idCurso, nomeCurso, plano)
VALUES (3, "Desenvolvimento Back-End C#/Java", "alura plus");

-- Inserção Evento 

INSERT INTO Evento (idEvento, nomeEvento, carga_horaria, dataInicio, dataFim)
VALUES (5, "Comp Week", 20, "2022-11-15", "2022-11-21");

-- Inserção Funcionário

INSERT INTO Funcionario VALUES (4, "Felipe Mattos", "Gerente", 1);

-- Inserção Licencia 

-- Inserção Coordena

-- Inserção Participa 

-- Inserção Matrícula 

-- Inserção HoraAcesso 