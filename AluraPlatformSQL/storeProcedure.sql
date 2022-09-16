-- Store Procedure
-- ----------------------------------------------------------------------------------
-- PROCEDIMENTO 1

-- Procedimento que realiza o cadastro de um novo curso à grade de cursos da Alura

DELIMITER //
CREATE PROCEDURE CadastraCurso(
   cIdCurso INT,
   cNomeCurso VARCHAR(70),
   cPlano VARCHAR(45)
)
BEGIN 
    INSERT INTO Curso
    VALUES (cIdCurso, cNomeCurso, cPlano);
END//
DELIMITER ;

-- Chamada do procedimento CadastraCurso
CALL CadastraCurso(222, "Engenharia de Software", "plus");

-- Select na tabela Curso para verificar se curso foi cadastrado com seucesso
select * from Curso;

-- PROCEDIMETO 2

-- Procedimento que retorna o progresso no curso de determinado aluno pelo seu id

DELIMITER //
CREATE PROCEDURE gerarCertificado(IN aIdAluno INT(9), OUT mProgresso INT)
BEGIN 
    select Progresso into mProgresso
    from Matricula M join Curso C
    on M.idCurso = C.idCurso
    where M.Certificado = "N" 
    and M.idAluno = aIdAluno;
END //
DELIMITER ;

CALL gerarCertificado(11, @progresso);

select @progresso;

--  PROCEDIMENTO 3

-- Procedimento concede selo para alunos que estão matriculados em mais de 10 cursos 
-- É necessário adicionar a coluna selo à tabela Matrícula

ALTER TABLE Matricula
ADD selo VARCHAR(1) NULL DEFAULT"N";

-- Coluna selo adicionada com valor default "N"

DELIMITER //
CREATE PROCEDURE concederSelo(id INT(9))
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE contador INT DEFAULT 0;
    DECLARE idDoAluno INT(9);
    DECLARE meuCursor CURSOR FOR SELECT idAluno FROM Matricula;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET i = 1;
    OPEN meuCursor;
    WHILE(i != 1) DO
        FETCH meuCursor INTO idDoAluno;
        IF idDoAluno = id THEN 
            SET contador = contador + 1;
        END IF;
        IF contador >= 10 THEN 
            UPDATE Matricula SET selo = "S";
        END IF;
    END WHILE;
    CLOSE meuCursor;
END //
DELIMITER ;

CALL concederSelo(1);