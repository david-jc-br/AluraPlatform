USE aluraDb;

-- Criação e exclusão de um usuário que tem permissão de selecionar dados de todas as tabelas.
CREATE USER 'devDBA'@'localhost' IDENTIFIED BY '123456';

GRANT SELECT ON aluraDb.* TO 'devDBA'@'localhost';

DROP USER 'devDBA'@'localhost';

/*-- Criação e exclusão de um usuário que tem permissão de selecionar dados dos Alunos utilizados para entrega e executar um store producere.*/

CREATE USER 'davidjc'@'localhost' IDENTIFIED BY '123456';

GRANT SELECT ON aluraDb.Aluno TO 'davidjc'@'localhost';

REVOKE SELECT ON aluraDb.Aluno FROM 'davidjc'@'localhost';

GRANT EXECUTE ON PROCEDURE aluraDb.InfoEmpresas TO 'davidjc'@'localhost';

DROP USER 'davidjc'@'localhost';
