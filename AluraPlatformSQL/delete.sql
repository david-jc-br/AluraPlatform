-- Delete
-- ----------------------------------------------------------------------------------
-- EXEMPLO #1: deletar todos os alunos do sexo feminino que o nome começa com a Letra A

-- SELECT mostrando alunos do sexo feminino com a letra A
SELECT nomeAluno FROM Aluno WHERE sexo = "F" AND nomeAluno LIKE "A%";

-- DELETE
DELETE FROM Aluno
WHERE sexo = "F" AND nomeAluno LIKE "A%";

-- SELECT mostrando que não há mais alunos do sexo feminino com a letra A 
SELECT nomeAluno FROM Aluno WHERE sexo = "F" AND nomeAluno LIKE "A%";

-- FIM EXEMPLO #1;


-- EXEMPLO #2: deletar todos os funcionarios que trabalham na empresa Amazon

-- SELECT retorna todos os funcionarios que trabalham na empresa Amazon
SELECT nomeFuncionario
FROM Funcionario
WHERE Empresa_idEmpresa IN (SELECT idEmpresa
   						 FROM Empresa
                        	WHERE nomeEmpresa = "Amazon");
                       	 
-- deleta todos os funcionarios que trabalham na Amazon
DELETE FROM Funcionario
WHERE Empresa_idEmpresa IN (SELECT idEmpresa
   						 FROM Empresa
                        	WHERE nomeEmpresa = "Amazon");


-- SELECT monstrando que foram todos apagados
SELECT nomeFuncionario FROM Funcionario
WHERE Empresa_idEmpresa IN (SELECT idEmpresa
   						 FROM Empresa
                        	WHERE nomeEmpresa = "Amazon");


-- FIM EXEMPLO #2;


-- EXEMPLO #3: Deleta todas as empresas que não possuem nenhum funcionário

-- Tabela antes do delete, indicando todas as empresas, inclusives as que nao possuem funcionarios
SELECT *
FROM Empresa LEFT OUTER JOIN Funcionario ON idEmpresa = Empresa_idEmpresa;

-- Deleta todas as empresas que nao possuem nenhum funcionario
DELETE FROM Empresa
WHERE idEmpresa NOT IN(
	SELECT idEmpresa FROM(
    	SELECT idEmpresa
    	FROM Empresa INNER JOIN Funcionario ON idEmpresa = Empresa_idEmpresa) AS idE
);

-- Tabela após delete
SELECT *
FROM Empresa LEFT OUTER JOIN Funcionario ON idEmpresa = Empresa_idEmpresa;


-- FIM EXEMPLO #3;


-- EXEMPLO #4: deleta os Eventos que possuem a palavra imersao no nome

SELECT nomeEvento FROM Evento WHERE nomeEvento LIKE "imersao%";

-- DELETE
DELETE FROM Evento
WHERE nomeEvento LIKE "imersao%";

-- SELECT mostrando que não há mais eventos desse tipo
SELECT nomeEvento FROM Evento WHERE nomeEvento LIKE "imersao%";

-- FIM EXEMPLO #4


-- EXEMPLO #5: deleta todas as matrículas do curso "JavaScript para back-end"

-- SELECT para retornar o id de alunos matriculados no curso
SELECT idAluno FROM Matricula
WHERE idCurso IN (SELECT idCurso
   			   FROM Curso
              	WHERE nomeCurso = "JavaScript para back-end");
                
-- DELETE de todas as matriculas
DELETE FROM Matricula
WHERE idCurso IN (SELECT idCurso
   			   FROM Curso
              	WHERE nomeCurso = "JavaScript para back-end");
             	 
SELECT idAluno FROM Matricula
WHERE idCurso IN (SELECT idCurso
   			   FROM Curso
              	WHERE nomeCurso = "JavaScript para back-end");

-- FIM EXEMPLO #5