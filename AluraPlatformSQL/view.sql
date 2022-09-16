-- View
-- ----------------------------------------------------------------------------------
USE aluraDb;

/*Cria uma visao entre a tabela Funcionario, Empresa e Participam, que indica todos os participantes de eventos */
CREATE VIEW Participantes AS
SELECT nomeEvento, idFuncionário, nomeFuncionario, cargoFuncionario
FROM Evento NATURAL JOIN 
 Funcionario NATURAL JOIN Participa;
SELECT * 
FROM Participantes;
/*Utilzia a tabela Participantes para contar quantos funcionários participaram de um evento*/
SELECT nomeEvento, COUNT(*) AS qtdeParticipantes
FROM Participantes
GROUP BY nomeEvento;
############
DROP VIEW Participantes;


/*Cria uma visao de todos os nomes do cursos, e seus alunos*/
CREATE VIEW matriculaCursos AS
SELECT idCurso, nomeCurso, idAluno, nomeAluno
FROM Curso NATURAL JOIN Matricula;

/*Ordena os cursos pela maior quantidade de alunos*/ 
SELECT idCurso, nomeCurso, COUNT(*) AS qtdAlunos
FROM matriculaCursos
GROUP BY idCurso
ORDER BY qtdAlunos ASC;
############
DROP VIEW matriculaCursos;

/*Cria uma visão de todos os alunos de um professor */
CREATE VIEW Alunos_Matriculados AS
SELECT L.idProfessor, idAluno, progresso
FROM Aluno NATURAL JOIN 
Matricula NATURAL JOIN 
Curso NATURAL JOIN 
Licencia L INNER JOIN Professor P ON L.idProfessor = P.idProfessor ; 

/*Ultiliza a tabela Alunos_Matriculados para contar a quantidade de alunos que um professor poussui e a media de seus alunos*/
SELECT idProfessor, COUNT(*) AS qtdAlunos, AVG(progresso) AS Media
FROM Alunos_Matriculados
GROUP BY idProfessor;
############
DROP VIEW Alunos_Matriculados;