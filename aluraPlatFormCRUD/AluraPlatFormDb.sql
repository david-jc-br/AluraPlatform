
-- Item (a): Criação de todas as tabelas e de todas as restrições de integridade.
--           Todas as restrições de chave (PRIMARY KEY) e de integridade referencial (FOREIGN KEY) devem ser criadas.

-- Criação e ultilização do SCHEMA.

CREATE SCHEMA aluraDb;
USE aluraDb;

-- Criação das tabelas e restrições

CREATE TABLE IF NOT EXISTS Professor (
	idProfessor INT NOT NULL AUTO_INCREMENT,
	nomeProf VARCHAR(70) NOT NULL,
	especialidade VARCHAR(400) NOT NULL,
	salario REAL NOT NULL,
	sexo TEXT(1) NOT NULL,
	PRIMARY KEY (idProfessor));

CREATE TABLE IF NOT EXISTS Aluno (
	idAluno INT NOT NULL AUTO_INCREMENT,
	nomeAluno VARCHAR(70) NOT NULL,
	sexo VARCHAR(1) NOT NULL,
	PRIMARY KEY (idAluno));

CREATE TABLE IF NOT EXISTS Empresa (
	idEmpresa INT NOT NULL AUTO_INCREMENT,
	nomeEmpresa VARCHAR(30) NOT NULL,
	PRIMARY KEY (idEmpresa),
	UNIQUE INDEX nomeEmpresa_UNIQUE (nomeEmpresa ASC) VISIBLE);

CREATE TABLE IF NOT EXISTS Curso (
	idCurso INT NOT NULL AUTO_INCREMENT,
	nomeCurso VARCHAR(70) NOT NULL,
	plano VARCHAR(45) NOT NULL,
	PRIMARY KEY (idCurso));

CREATE TABLE IF NOT EXISTS Evento (
	idEvento INT NOT NULL AUTO_INCREMENT,
	nomeEvento VARCHAR(20) NOT NULL,
	carga_horaria INT NOT NULL,
	dataInicio DATE NOT NULL,
	dataFim DATE NOT NULL,
	PRIMARY KEY (idEvento));

CREATE TABLE IF NOT EXISTS Funcionario (
	idFuncionário INT NOT NULL AUTO_INCREMENT,
	nomeFuncionario VARCHAR(20) NOT NULL,
	cargoFuncionario VARCHAR(20) NOT NULL,
	Empresa_idEmpresa INT NOT NULL,
	PRIMARY KEY (idFuncionário),
	INDEX fk_Funcionário_Empresa1_idx (Empresa_idEmpresa ASC) VISIBLE,
	CONSTRAINT fk_Funcionário_Empresa1
		FOREIGN KEY (Empresa_idEmpresa)
		REFERENCES Empresa (idEmpresa)
		ON DELETE RESTRICT
		ON UPDATE NO ACTION);

CREATE TABLE IF NOT EXISTS Licencia (
	idProfessor INT NOT NULL,
	idCurso INT NOT NULL,
	PRIMARY KEY (idProfessor, idCurso),
	INDEX fk_Professor_has_Curso_Curso1_idx (idCurso ASC) VISIBLE,
	CONSTRAINT fk_Professor_has_Curso_Professor
		FOREIGN KEY (idProfessor)
		REFERENCES Professor (idProfessor)
		ON DELETE CASCADE
		ON UPDATE NO ACTION,
	CONSTRAINT fk_Professor_has_Curso_Curso1
		FOREIGN KEY (idCurso)
		REFERENCES Curso (idCurso)
		ON DELETE CASCADE
		ON UPDATE NO ACTION);

CREATE TABLE IF NOT EXISTS Coordena (
	idEvento INT NOT NULL,
	idProfessor INT NOT NULL,
	PRIMARY KEY (idEvento, idProfessor),
	INDEX fk_Evento_has_Professor_Professor1_idx (idProfessor ASC) VISIBLE,
	INDEX fk_Evento_has_Professor_Evento1_idx (idEvento ASC) VISIBLE,
	CONSTRAINT fk_Evento_has_Professor_Evento1
		FOREIGN KEY (idEvento)
		REFERENCES Evento (idEvento)
		ON DELETE CASCADE
		ON UPDATE NO ACTION,
	CONSTRAINT fk_Evento_has_Professor_Professor1
		FOREIGN KEY (idProfessor)
		REFERENCES Professor (idProfessor)
		ON DELETE RESTRICT
		ON UPDATE NO ACTION);

CREATE TABLE IF NOT EXISTS Participa (
	idEvento INT NOT NULL,
	idFuncionário INT NOT NULL,
	PRIMARY KEY (idEvento, idFuncionário),
	INDEX fk_Evento_has_Funcionário_Funcionário1_idx (idFuncionário ASC) VISIBLE,
	INDEX fk_Evento_has_Funcionário_Evento1_idx (idEvento ASC) VISIBLE,
	CONSTRAINT fk_Evento_has_Funcionário_Evento1
		FOREIGN KEY (idEvento)
		REFERENCES Evento (idEvento)
		ON DELETE CASCADE
		ON UPDATE NO ACTION,
  CONSTRAINT fk_Evento_has_Funcionário_Funcionário1
		FOREIGN KEY (idFuncionário)
		REFERENCES Funcionario (idFuncionário)
		ON DELETE CASCADE
		ON UPDATE NO ACTION);

CREATE TABLE IF NOT EXISTS Matricula (
	progresso INT NULL,
	dataInicio DATE NOT NULL,
	idCurso INT NOT NULL,
	idAluno INT NOT NULL,
	certificado VARCHAR(1) NULL,
	PRIMARY KEY (dataInicio, idCurso, idAluno),
	INDEX fk_Matricula_Curso1_idx (idCurso ASC) VISIBLE,
	INDEX fk_Matricula_Aluno1_idx (idAluno ASC) VISIBLE,
	CONSTRAINT fk_Matricula_Curso1
		FOREIGN KEY (idCurso)
		REFERENCES Curso (idCurso)
		ON DELETE CASCADE
		ON UPDATE NO ACTION,
	CONSTRAINT fk_Matricula_Aluno1
		FOREIGN KEY (idAluno)
		REFERENCES Aluno (idAluno)
		ON DELETE CASCADE
		ON UPDATE NO ACTION);

CREATE TABLE IF NOT EXISTS HoraAcesso (
	idEvento INT NOT NULL,
	dFuncionário INT NOT NULL,
	data DATE NOT NULL,
	horarioInicial TIME NOT NULL,
	horarioFInal TIME NULL,
	PRIMARY KEY (idEvento, dFuncionário, data, horarioInicial),
	CONSTRAINT fk_horaAcesso_participa1
		FOREIGN KEY (idEvento , dFuncionário)
		REFERENCES Participa (idEvento , idFuncionário)
		ON DELETE CASCADE
		ON UPDATE NO ACTION);
