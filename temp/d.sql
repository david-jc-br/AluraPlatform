USE aluraDb;

-- Item (d): Exemplos de modificação de dados em 5 tabelas

SET SQL_SAFE_UPDATES = 0; -- Desabilita o safe update

-- Atualiza a data de inicío do evento em que o professor Fabio Akita Coordena

UPDATE Evento 
SET dataInicio = "2019-12-28"
WHERE idEvento IN (SELECT idEvento 
				   FROM Professor JOIN Coordena
				   WHERE nomeProf = "Fabio Akita"); 

-- Aumenta mais 12 horas na carga horária de eventos de imersão

UPDATE Evento
SET carga_horaria = carga_horaria + 12
WHERE nomeEvento LIKE 'Imersao%';

-- Atualiza o evento em que o professor com id = 3 coordena

UPDATE Coordena
SET idEvento = 2 
WHERE idProfessor = 3;

-- Atualiza o plano de anual para semestral para curso de SQL Com PostgreSQL

UPDATE Curso 
SET plano = "Plano Semestral"
WHERE nomeCurso = "SQL com PostgreSQL";

-- Falta mais 2 atualização
