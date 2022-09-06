USE aluraDb;

-- Item f, exemplos de Consultas 

-- 1- Recupere o nome e salario dos professores do sexo masculino ou que ministra o curso de banco de dados

SELECT nomeProf, salário
FROM Professor 
WHERE sexo = "M" OR 
	idProfessor IN (
		SELECT idProfessor 
            	FROM licencia NATURAL JOIN Curso
            	WHERE nomeCurso = "Banco de Dados"
 		);

-- 2- Selecione o nome dos funcionários que trabalham na empresa de nome 'Google' ou que trabalham na emrpesa de nome 'Oracle'.

select nomeFuncionario AS Nome_Funcionario
from Funcionário F join Empresa E  
ON F.Empresa_idEmpresa = E.idEmpresa
where nomeEmpresa='Google'
union
select nomeFuncionario AS Nome_Funcionario
from Funcionário F join Empresa E  
ON F.Empresa_idEmpresa = E.idEmpresa
where nomeEmpresa='Oracle';


-- 3- Qual o nome do curso que o professor Denilson licencia?

SELECT nomeCurso AS nome_do_curso
FROM Curso C JOIN licencia L
ON C.idCurso = L.idCurso 
JOIN Professor P ON P.idProfessor = L.idProfessor 
WHERE nomeProf = 'Denilson';

-- 4- Recuperar os dados de cada aluno e de suas respectivas matrículas, se o aluno ainda não estiver feito nenhuma matrícula indique com valores nulos

SELECT * FROM 
Aluno A LEFT OUTER JOIN Matricula M 
ON A.idALuno = M.idAluno;

-- left outer join mantém todas as tuplas da tabela aluno na consulta
-- As tuplas da tabela Matricula podem ser nulas se aluno ainda não estiver se matriculado em nenhum curso 

-- nome e salario dos professores que licenciam o curso de id = 1111, ou que ministram evento de id = 789 

-- 5- Retorna o nome e o salário do professor(es) que possuiu o 
-- salário maior que média de todos os professores da plataforma

SELECT nomeProf AS "Nome do Professor", salario AS "Salário"
FROM Professor 
WHERE salario > SOME (
	SELECT AVG(salario)
   	FROM Professor)
ORDER BY salario DESC;

-- 6- Recupera nome dos Alunos que não possuem Matrícula 
 
SELECT nomeAluno AS "Aluno que não\n possuem matrícula"
FROM Aluno 
WHERE idAluno NOT IN (
	SELECT idAluno 
	FROM Matricula
);
