-- Alter Table e Drop Table
-- ----------------------------------------------------------------------------------

USE aluraDb;
/*Adiciona na tabela Aluno uma coluna que indica a quantidade de cursos feitos */
ALTER TABLE Aluno ADD COLUMN qtdCursos INT NULL;
SELECT *
FROM Aluno;

/*Remove na tabela Aluno a coluna qtdCursos*/
ALTER TABLE Aluno DROP COLUMN qtdCursos CASCADE;
SELECT *
FROM Aluno;
#############



/*Cria a tabela Patrocinador*/
CREATE TABLE Patrocinador(-- cria Tabela Patrocinador 
idPatrocinador INT NOT NULL,
PRIMARY KEY (idPatrocinador)
);

/*Cria a coluna idPat (id do patrocinador) na tabela Evento*/
ALTER TABLE Evento ADD COLUMN idPat INT NULL;

/*adiciona o idPatatrocinador como chave estrangeira na tabela Evento*/
ALTER TABLE Evento ADD CONSTRAINT
fk_par FOREIGN KEY (idPat) REFERENCES
Patrocinador (idPatrocinador);
SELECT *
FROM Evento;

/*Remove a relacao de chave estrangeira de Patrocinador na tabela Evento*/
ALTER TABLE Evento 
DROP CONSTRAINT fk_par;

/*Remove a coluna idPat da tabela Evento*/
ALTER TABLE Evento DROP COLUMN idPat CASCADE;  
SELECT *
FROM Evento;

/*Exclui a tabela Patrocinadores*/
DROP TABLE Patrocinador CASCADE;  
#############

/*Altera a Tabela HoraAcesso acrescentando hora total de participacao em eventos*/
SELECT * FROM HoraAcesso;
ALTER TABLE HoraAcesso ADD COLUMN hora_part_evento TIME NULL;

/*Atualiza todas as horas de participacao em eventos*/
UPDATE HoraAcesso    
SET hora_part_evento =SEC_TO_TIME(TIME_TO_SEC(horarioFinal) - TIME_TO_SEC(horarioInicial));
SELECT * FROM HoraAcesso;

/*Cria um TRIGGER que atualiza a cada update as horas de acesso*/
DELIMITER $$        
CREATE TRIGGER trg_HoraTotal
BEFORE UPDATE ON HoraAcesso
 FOR EACH ROW
 BEGIN 
	IF NEW.horarioFinal !=old.horarioFinal OR NEW.horarioInicial !=       OLD.horarioInicial THEN
		SET NEW.hora_part_evento =SEC_TO_TIME(TIME_TO_SEC(NEW.horarioFinal) - TIME_TO_SEC(NEW.horarioInicial));
    END IF;
 END $$      
DELIMITER ;

/*Exemplo de update*/
UPDATE HoraAcesso
SET horarioFinal = "15:00:00" 
WHERE idFuncionario = 20;
SELECT * FROM HoraAcesso;

/*Exclui o TRIGGER HoraTotal*/
DROP TRIGGER trg_HoraTotal;

/*Remove hora de participao da tabela HoraAcesso*/
ALTER TABLE HoraAcesso DROP COLUMN hora_part_evento;
SELECT * FROM HoraAcesso;
##############