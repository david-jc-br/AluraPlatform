-- Criação e ultilização do SCHEMA.
CREATE SCHEMA aluraDb;
USE aluraDb;

-- Criação das tabelas e restrições
-- TABELA PROFESSOR
CREATE TABLE IF NOT EXISTS Professor (
	idProfessor INT NOT NULL AUTO_INCREMENT,
	nomeProf VARCHAR(70) NOT NULL,
	especialidade VARCHAR(400) NOT NULL,
	salario REAL NOT NULL,
	sexo TEXT(1) NOT NULL CHECK (sexo = 'M'or sexo = 'F'),
    -- Define idProfessor como chave primária
	PRIMARY KEY (idProfessor)); 
    
-- TABELA ALUNO
CREATE TABLE IF NOT EXISTS Aluno (
	idAluno INT NOT NULL AUTO_INCREMENT,
	nomeAluno VARCHAR(70) NOT NULL,
	sexo VARCHAR(1) NOT NULL CHECK (sexo = 'M'or sexo = 'F'),
    -- Define Aluno como chave primária
	PRIMARY KEY (idAluno));
    
-- TABELA EMPRESA
CREATE TABLE IF NOT EXISTS Empresa (
	idEmpresa INT NOT NULL AUTO_INCREMENT,
	nomeEmpresa VARCHAR(30) NOT NULL,
    -- Define idEmpresa como chave primária e nomeEmpresa como chave secundária
	PRIMARY KEY (idEmpresa),
	UNIQUE INDEX nomeEmpresa_UNIQUE (nomeEmpresa ASC) VISIBLE);
    
-- TABELA CURSO
CREATE TABLE IF NOT EXISTS Curso (
	idCurso INT NOT NULL AUTO_INCREMENT,
	nomeCurso VARCHAR(70) NOT NULL,
	plano VARCHAR(45) NOT NULL,
    -- Define idCurso como chave primária
	PRIMARY KEY (idCurso));
    
-- TABELA EVENTO
CREATE TABLE IF NOT EXISTS Evento (
	idEvento INT NOT NULL AUTO_INCREMENT,
	nomeEvento VARCHAR(20) NOT NULL,
	carga_horaria INT NOT NULL,
	dataInicio DATE NOT NULL,
	dataFim DATE NOT NULL,
    -- Define idEvento como chave primária
	PRIMARY KEY (idEvento));
    
-- TABELA FUNCIONARIO
CREATE TABLE IF NOT EXISTS Funcionario (
	idFuncionário INT NOT NULL AUTO_INCREMENT,
	nomeFuncionario VARCHAR(20) NOT NULL,
	cargoFuncionario VARCHAR(20) NOT NULL,
	Empresa_idEmpresa INT NOT NULL,
    -- Define idFuncionário como chave primária,
	PRIMARY KEY (idFuncionário),
	INDEX fk_Funcionário_Empresa1_idx (Empresa_idEmpresa ASC) VISIBLE,
    -- Define Empresa_idEmpresa, como chave estrangeira
	CONSTRAINT fk_Funcionário_Empresa1
		FOREIGN KEY (Empresa_idEmpresa)
		REFERENCES Empresa (idEmpresa)
		ON DELETE RESTRICT
		ON UPDATE NO ACTION);
        
-- TABELA LICENCIA
CREATE TABLE IF NOT EXISTS Licencia (
	idProfessor INT NOT NULL,
	idCurso INT NOT NULL,
	-- Define idProfessor e idCurso como chave primária
	PRIMARY KEY (idProfessor, idCurso),
	INDEX fk_Professor_has_Curso_Curso1_idx (idCurso ASC) VISIBLE,
    -- Define idProfessor, como chave estrangeira
	CONSTRAINT fk_Professor_has_Curso_Professor
		FOREIGN KEY (idProfessor)
		REFERENCES Professor (idProfessor)
		ON DELETE CASCADE
		ON UPDATE NO ACTION,
	-- Define idCurso, como chave estrangeira
	CONSTRAINT fk_Professor_has_Curso_Curso1
		FOREIGN KEY (idCurso)
		REFERENCES Curso (idCurso)
		ON DELETE CASCADE
		ON UPDATE NO ACTION);
        
-- TABELA COORDENA
CREATE TABLE IF NOT EXISTS Coordena (
	idEvento INT NOT NULL,
	idProfessor INT NOT NULL,
    -- Define idEvento e idProfessor como chave primária
	PRIMARY KEY (idEvento, idProfessor),
	INDEX fk_Evento_has_Professor_Professor1_idx (idProfessor ASC) VISIBLE,
	INDEX fk_Evento_has_Professor_Evento1_idx (idEvento ASC) VISIBLE,
	-- Define idEvento, como chave estrangeira
	CONSTRAINT fk_Evento_has_Professor_Evento1
		FOREIGN KEY (idEvento)
		REFERENCES Evento (idEvento)
		ON DELETE CASCADE
		ON UPDATE NO ACTION,
	-- Define idProfessor, como chave estrangeira
	CONSTRAINT fk_Evento_has_Professor_Professor1
		FOREIGN KEY (idProfessor)
		REFERENCES Professor (idProfessor)
		ON DELETE RESTRICT
		ON UPDATE NO ACTION);
        
-- TABELA PARTICIPA
CREATE TABLE IF NOT EXISTS Participa (
	idEvento INT NOT NULL,
	idFuncionário INT NOT NULL,
	-- Define idEvento e idFuncionário como chave primária
	PRIMARY KEY (idEvento, idFuncionário),
	INDEX fk_Evento_has_Funcionário_Funcionário1_idx (idFuncionário ASC) VISIBLE,
	INDEX fk_Evento_has_Funcionário_Evento1_idx (idEvento ASC) VISIBLE,
    -- Define idEvento, como chave estrangeira
	CONSTRAINT fk_Evento_has_Funcionário_Evento1
		FOREIGN KEY (idEvento)
		REFERENCES Evento (idEvento)
		ON DELETE CASCADE
		ON UPDATE NO ACTION,
	-- Define idFuncionário, como chave estrangeira
	CONSTRAINT fk_Evento_has_Funcionário_Funcionário1
		FOREIGN KEY (idFuncionário)
		REFERENCES Funcionario (idFuncionário)
		ON DELETE CASCADE
		ON UPDATE NO ACTION);
        
-- TABELA MATRICULA
CREATE TABLE IF NOT EXISTS Matricula (
	progresso INT DEFAULT 0,
	dataInicio DATE NOT NULL,
	idCurso INT NOT NULL,
	idAluno INT NOT NULL,
	certificado VARCHAR(1) DEFAULT 'N',
	-- Define dataInicio, idCurso e idAluno como chave primária
	PRIMARY KEY (dataInicio, idCurso, idAluno),
	INDEX fk_Matricula_Curso1_idx (idCurso ASC) VISIBLE,
	INDEX fk_Matricula_Aluno1_idx (idAluno ASC) VISIBLE,
	-- Define idCurso, como chave estrangeira
	CONSTRAINT fk_Matricula_Curso1
		FOREIGN KEY (idCurso)
		REFERENCES Curso (idCurso)
		ON DELETE CASCADE
		ON UPDATE NO ACTION,
	-- Define idAluno, como chave estrangeira
	CONSTRAINT fk_Matricula_Aluno1
		FOREIGN KEY (idAluno)
		REFERENCES Aluno (idAluno)
		ON DELETE CASCADE
		ON UPDATE NO ACTION);
        
-- TABELA HORA ACESSO
CREATE TABLE IF NOT EXISTS HoraAcesso (
	idEvento INT NOT NULL,
	idFuncionario INT NOT NULL,
	dataAcesso DATE NOT NULL,
	horarioInicial TIME NOT NULL,
	horarioFinal TIME NULL,
    -- Define dEvento,idFuncionario, dataAcesso, horarioInicial
	PRIMARY KEY (idEvento, idFuncionario, dataAcesso, horarioInicial),
    -- Define idEvento e dFuncionário como chave estrangeira
	CONSTRAINT fk_horaAcesso_participa1
		FOREIGN KEY (idEvento , idFuncionario)
		REFERENCES Participa (idEvento , idFuncionário)
		ON DELETE CASCADE
		ON UPDATE NO ACTION);
        
DELIMITER $$        
CREATE TRIGGER trg_Certificado 
BEFORE UPDATE ON Matricula
 FOR EACH ROW
 BEGIN
	IF NEW.progresso >=60 THEN
		SET NEW.certificado = 'S';
	END IF;
 END $$      
DELIMITER ;


commit;
