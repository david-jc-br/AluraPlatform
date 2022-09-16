
-- Updates
-- ----------------------------------------------------------------------------------
USE aluraDb;
SET SQL_SAFE_UPDATES = 0; -- Desabilita o safe update

/*Exibe a tabela antes da atualização*/
SELECT idEvento, nomeProf, dataFim
FROM Professor NATURAL JOIN Coordena NATURAL JOIN Evento
WHERE nomeProf = "Fabio Akita";

-- Atualiza a data do fim do(s) evento(s) cujo o professor Fabio Akita Coordena
UPDATE Evento 
SET dataFim = "2020-02-15"
WHERE idEvento IN (
	SELECT idEvento 
	FROM Professor NATURAL JOIN Coordena 
	WHERE nomeProf = "Fabio Akita"
); 

/*Exibe a tabela depois da atualização*/
SELECT idEvento, nomeProf, dataFim
FROM Professor NATURAL JOIN Coordena NATURAL JOIN Evento
WHERE nomeProf = "Fabio Akita";
-- Aumenta mais 4 horas na carga horária de eventos de imersão

/*Exibe a tabela antes da atualizacao*/
SELECT * FROM Evento;

UPDATE Evento
SET carga_horaria = carga_horaria + 4
WHERE nomeEvento LIKE 'Imersao%';

/*Exibe a tabela depois da atualizacao*/
SELECT * FROM Evento;

-- Atualiza o evento em que o professor com id = 3 coordena

/*Exibe a tabela antes da atualização*/
SELECT idEvento, idProfessor, nomeEvento 
FROM Coordena NATURAL JOIN Evento
WHERE idProfessor = 3;

UPDATE Coordena
SET idEvento = 2 
WHERE idProfessor = 3;

/*Exibe a tabela depois da atualização*/
SELECT idEvento, idProfessor, nomeEvento 
FROM Coordena NATURAL JOIN Evento
WHERE idProfessor = 3;

-- Atualiza o plano do curso 'SQL Com PostgreSQL' de anual para semestral

/*Exibe a tabela antes da atualização*/
SELECT plano, nomeCurso 
FROM Curso
WHERE nomeCurso = "SQL com PostgreSQL";

UPDATE Curso 
SET plano = "Plano Semestral"
WHERE nomeCurso = "SQL com PostgreSQL";

/*Exibe a tabela depois da atualização*/
SELECT plano, nomeCurso 
FROM Curso
WHERE nomeCurso = "SQL com PostgreSQL";

-- Atualiza o curso que o professor com id = 13 licencia 

/*Exibe a tabela antes da atualizacao*/
SELECT idCurso, idProfessor, nomeCurso
FROM Licencia NATURAL JOIN Curso
WHERE idProfessor = 13;

UPDATE  Licencia
SET idCurso = 8
WHERE idprofessor = 13;

/*Exibe a tabela depois da atualizacao*/
SELECT idCurso, idProfessor, nomeCurso
FROM Licencia NATURAL JOIN Curso
WHERE idProfessor = 13;

-- Aumenta o salário do professor Rodrigo Gonçalves em mais 2560.50 

/*Exibe a tabela antes da atualizacao*/
SELECT nomeProf, salario 
FROM Professor 
WHERE nomeProf = "Rodrigo Gonçalves";

UPDATE Professor
SET salario = salario + 2560.50
WHERE nomeProf  = "Rodrigo Gonçalves";

/*Exibe a tabela depois da atualizacao*/
SELECT nomeProf, salario 
FROM Professor 
WHERE nomeProf = "Rodrigo Gonçalves";

SET SQL_SAFE_UPDATES = 1; -- Habilita o safe update

/* Safe update é um recurso de atualização segura do Mysql em
   que ele não executa o update ou Delete sem o WHERE com
   uma chave ou LIMIT, esse recurso têm por objetivo evitar 
   erros humanos, já que quando não usamos o WHERE, nós 
   aplicamos um update em todas al linhas da tabela
*/
