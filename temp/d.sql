-- Item (d): Exemplos de modificação de dados em 5 tabelas

SET SQL_SAFE_UPDATES = 0; -- Desabilita o safe update

-- Atualiza a data do fim do(s) evento(s) cujo o professor Fabio Akita Coordena

UPDATE Evento 
SET dataFim = "2020-02-15"
WHERE idEvento IN (
	SELECT idEvento 
	FROM Professor NATURAL JOIN Coordena 
	WHERE nomeProf = "Fabio Akita"
); 

-- Aumenta mais 4 horas na carga horária de eventos de imersão

UPDATE Evento
SET carga_horaria = carga_horaria + 4
WHERE nomeEvento LIKE 'Imersao%';

-- Atualiza o evento em que o professor com id = 3 coordena

UPDATE Coordena
SET idEvento = 2 
WHERE idProfessor = 3;

-- Atualiza o plano do curso 'SQL Com PostgreSQL' de anual para semestral

UPDATE Curso 
SET plano = "Plano Semestral"
WHERE nomeCurso = "SQL com PostgreSQL";

-- Atualiza o curso que o professor com id = 13 licencia 

UPDATE  Licencia
SET idCurso = 8
WHERE idprofessor = 13;

-- Aumenta o salário do professor Rodrigo Gonçalves em mais 2560.50 

UPDATE Professor
SET salario = salario + 2560.50
WHERE nomeProf  = "Rodrigo Gonçalves";

SET SQL_SAFE_UPDATES = 1; -- Habilita o safe update

/* Safe update é um recurso de atualização segura do Mysql em
   que ele não executa o update ou Delete sem o WHERE com
   uma chave ou LIMIT, esse recurso têm por objetivo evitar 
   erros humanos, já que quando não usamos o WHERE, nós 
   aplicamos um update em todas al linhas da tabela
*/
