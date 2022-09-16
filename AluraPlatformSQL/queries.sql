-- Queries
-- ----------------------------------------------------------------------------------

USE aluraDb;

/*SELECT, FROM, WHERE,
ORDER BY, GROUP BY, HAVING*/

/* 1- Seleciona em ordem crescente todas as empresas e soma da carga horaria total de todos os eventos que seus funcionarios estao cadastrados */
SELECT idEmpresa, nomeEmpresa, SUM(carga_horaria) AS CargaHorariaTotal
FROM Evento NATURAL JOIN Participa NATURAL JOIN Funcionario 
INNER JOIN Empresa ON Empresa_idEmpresa = idEmpresa
GROUP BY Empresa_idEmpresa
ORDER BY CargaHorariaTotal ASC;

###############

/* 2- Seleciona as empresas que possuem mais de 2 funcionarios*/
SELECT Empresa_idEmpresa,nomeEmpresa, COUNT(*) AS qtdeFuncionarios
FROM Funcionario INNER JOIN Empresa ON Empresa_idEmpresa=idEmpresa 
GROUP BY Empresa_idEmpresa
HAVING qtdeFuncionarios >2;
##############


/*3 -Seleciona o nome todos os alunos aprovados no ano de 2019*/
SELECT nomeAluno, progresso
FROM Aluno NATURAL JOIN Matricula
WHERE progresso >=60 AND DataInicio BETWEEN "2019-01-01" AND " 2019-12-31";
##############

/*JOIN, OUTER JOIN,UNION*/ 
-- 4- Recupere o nome e salario dos professores do sexo masculino ou que ministra o curso de banco de dados

SELECT nomeProf, salario
FROM Professor 
WHERE sexo = "M" OR 
	idProfessor IN (
			SELECT idProfessor 
            FROM Licencia NATURAL JOIN Curso
            WHERE nomeCurso = "Banco de Dados"
            );


-- 5- Selecione o nome dos funcionários que trabalham na empresa de nome 'Google' ou que trabalham na empresa de nome 'Oracle'.

select nomeFuncionario AS Nome_Funcionario
from Funcionario F join Empresa E  
ON F.Empresa_idEmpresa = E.idEmpresa
where nomeEmpresa='Google'
union
select nomeFuncionario AS Nome_Funcionario
from Funcionario F join Empresa E  
ON F.Empresa_idEmpresa = E.idEmpresa
where nomeEmpresa='Oracle';

-- 6- Recupera os cursos que a professora Roberta Arcoverde licencia

SELECT nomeCurso AS nome_do_curso
FROM Curso C JOIN Licencia L
ON C.idCurso = L.idCurso 
JOIN Professor P ON P.idProfessor = L.idProfessor 
WHERE nomeProf = 'Roberta Arcoverde';

-- 7- Recuperar os dados de cada aluno e de suas respectivas matrículas, se o aluno ainda não estiver feito nenhuma matrícula indique com valores nulos

SELECT * FROM 
Aluno A LEFT OUTER JOIN Matricula M 
ON A.idALuno = M.idAluno;

-- left outer join mantém todas as tuplas da tabela aluno na consulta
-- As tuplas da tabela Matricula podem ser nulas se aluno ainda não estiver se matriculado em nenhum curso 

-- nome e salario dos professores que licenciam o curso de id = 1111, ou que ministram evento de id = 789 

/*AND, OR, NOT, BETWEEN*/

/*Seleciona os professores homens que recebem entre 1 a 5mil em ordem crescente*/
SELECT idProfessor, nomeProf, salario
FROM Professor
WHERE sexo = 'M' AND salario BETWEEN 1000 AND 5000
ORDER BY salario ASC;

/*Recupera os cursos que nao há nenhuma matricula*/
SELECT nomeCurso 
FROM Curso
WHERE idCurso NOT IN(SELECT idCurso FROM Matricula);

/*IN, LIKE, IS NULL, ANY/SOME, ALL, EXISTS */
-- 8- Retorna o nome e o salário(ordem decrescente) do professor(es) que possuiu o 
-- salário maior que média do salário de todos os professores da plataforma

SELECT nomeProf AS "Nome do Professor", salario AS "Salário"
FROM Professor 
WHERE salario > SOME (
	SELECT AVG(salario)
   	FROM Professor)
ORDER BY salario DESC;

-- 9- Recupera nome dos Alunos que não possuem Matrícula 
 
SELECT nomeAluno AS "Aluno que não\n possuem matrícula"
FROM Aluno 
WHERE idAluno NOT IN (
	SELECT idAluno 
	FROM Matricula
);

-- 10- Recupera o total de eventos de imersão e média da carga entre eles.

SELECT COUNT(nomeEvento) AS "Qtde total de\nEventos de Imersão", 
	   AVG(carga_horaria) AS "Média de Carga\nHorária"
FROM Evento
WHERE nomeEvento LIKE "Imersão%";

-- 11- Recupera o em ordem alfabética nome do(s) que não coordenam nenhum Evento.

SELECT nomeProf AS "Professores que não\ncoordenam nenhum evento"
FROM Professor P LEFT OUTER JOIN Coordena C 
ON P.idProfessor = C.idProfessor
WHERE C.idEvento IS NULL
ORDER BY nomeProf;

-- 12- Recupera o nome dos Funcionários que trabalham na 
-- empresa com id = 1 e estão na posição de Senior

SELECT F.nomeFuncionario
FROM Funcionario F
WHERE EXISTS(
	SELECT *
    FROM Empresa G
    WHERE G.idEmpresa = F.Empresa_idEmpresa 
		AND G.idEmpresa = 1
        AND F.cargoFuncionario LIKE "%Senior%"
);

-- 13- Recupera o nome e o ID dos Funcinários que trabalham na mesma empresa que o "Arthur Valentim"
-- Incluindo o pŕoprio "Arthur Valentim"

SELECT nomeFuncionario AS "Funcionário", idFuncionário AS "ID"
FROM Funcionario
WHERE Empresa_idEmpresa = ALL (
	SELECT Empresa_idEmpresa
    FROM Funcionario F
    WHERE nomeFuncionario = "Arthur Valentim"
);