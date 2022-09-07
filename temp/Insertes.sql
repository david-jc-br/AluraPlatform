use aluraDb;

/* c) exemplos de inserção de dados em todas as tabelas */

-- exemplo de inserção na tabela Professor

INSERT INTO Professor VALUES (NULL, "Mario Souto", "Engenharia de Software", 2000.00, "M");
INSERT INTO Professor VALUES (NULL, "Sara Malvar", "Data Science", 120000.00, "F");
INSERT INTO Professor VALUES (NULL, "Paulo Silveira", "Java", 1000.00, "M");
INSERT INTO Professor VALUES (NULL, "Guilherme Silveira", "Engenharia de Software", 2000.00, "M");
INSERT INTO Professor VALUES (NULL, "Jualiana Negreiros", "Front End", 23000.00, "F");
INSERT INTO Professor VALUES (NULL, "Priscila Stuani", "Comportamento e soft skills", 21000.00, "F");
INSERT INTO Professor VALUES (NULL, "Roberta Arcoverde", "Engenharia de Software", 20000.00, "F");
INSERT INTO Professor VALUES (NULL, "Loiane Groner", "Engenharia de Software", 15000.00, "F");
INSERT INTO Professor VALUES (NULL, "Gustavo Guanabara", "Engenharia de Software", 50000.00, "M");
INSERT INTO Professor VALUES (NULL, "Marco Bruno", "Front End", 12200.00, "M");
INSERT INTO Professor VALUES (NULL, "Fabio Akita", "Youtuber", 2100.00, "M");
INSERT INTO Professor VALUES (NULL, "Filipe Deschamps", "Engenharia de Software", 5000.00, "M");
INSERT INTO Professor VALUES (NULL, "Mayk Brito", "Full Stack", 12000.00,"M");
INSERT INTO Professor VALUES (NULL, "Diego Fernandes", "Full Stack", 12000.00,"M");
INSERT INTO Professor VALUES (NULL, "Rodrigo Gonçalves", "Engenharia de Software", 1000.00,"M");
INSERT INTO Professor VALUES (NULL, "Alfredo Junior", "Hardware", 2000.00,"M");
INSERT INTO Professor VALUES (NULL, "Anderson Gaveta", "Edicao de video", 2000.00,"M");
INSERT INTO Professor VALUES (NULL, "Maria Gabriela Oliveira", "SQL", 7000.00,"F");
INSERT INTO Professor VALUES (NULL, "Guilherme Lima", "Engenharia de Software", 5000.00,"M");
INSERT INTO Professor VALUES (NULL, "Janaina Oliveira", "Engenharia de Software", 30000.00,"F");
INSERT INTO Professor VALUES (NULL, "Jubileu Nunes Beraldo", "Youtuber", 960.58, 'M');
INSERT INTO Professor VALUES (NULL, "Carlos Sanfoneu Junior", "DBA", 10600, 'M');
INSERT INTO Professor VALUES (NULL, "João Malaquias Pires", "Engenheiro de DevOps", 9960.58, 'M');
INSERT INTO Professor VALUES (NULL, "Julio Lima de Abreu", "Back-End", 15860, 'M');

-- exemplo de inserção na tabela Aluno

INSERT INTO Aluno VALUES (NULL,"Paulo Barreto", "M");
INSERT INTO Aluno VALUES (NULL, "Ronald Rios", "M");
INSERT INTO Aluno VALUES (NULL, "Juninho da Shineray", "M");
INSERT INTO Aluno VALUES (NULL, "Carimbo da Silva", "M");
INSERT INTO Aluno VALUES (NULL, "Copia Autenticada Francisco Silva", "M");
INSERT INTO Aluno VALUES (NULL, "Rafael Kyoko", "M");
INSERT INTO Aluno VALUES (NULL, "Arthur Valentim", "M");
INSERT INTO Aluno VALUES (NULL, "Anderson Guilherme", "M");
INSERT INTO Aluno VALUES (NULL, "Lorenzo Duarte", "M");
INSERT INTO Aluno VALUES (NULL, "Kevin Michael", "M");
INSERT INTO Aluno VALUES (NULL, "Sophia Juliano", "F");
INSERT INTO Aluno VALUES (NULL, "Estela Frederico", "F");
INSERT INTO Aluno VALUES (NULL, "Isadora Sabrina", "F");
INSERT INTO Aluno VALUES (NULL, "Mariana José", "F");
INSERT INTO Aluno VALUES (NULL, "Maitê Amanda", "F");
INSERT INTO Aluno VALUES (NULL, "Beatriz Augusto", "F");
INSERT INTO Aluno VALUES (NULL, "Bianca Kelvin", "F");
INSERT INTO Aluno VALUES (NULL, "Alícia Lucca", "F");
INSERT INTO Aluno VALUES (NULL, "Mateus Henrique", "M");
INSERT INTO Aluno VALUES (NULL, "Anabela Enzo", "F");


-- exemplos de inserção na tabela Empresa

INSERT INTO Empresa VALUES (NULL, "Jovem Nerd");
INSERT INTO Empresa VALUES (NULL, "Não Salvo");
INSERT INTO Empresa VALUES (NULL, "Gaveta filmes");
INSERT INTO Empresa VALUES (NULL, "Extra");
INSERT INTO Empresa VALUES (NULL, "Porta dos Fundos");
INSERT INTO Empresa VALUES (NULL, "Mercado Livre");
INSERT INTO Empresa VALUES (NULL, "Amazon");
INSERT INTO Empresa VALUES (NULL, "Ponto Frio");
INSERT INTO Empresa VALUES (NULL, "Americanas");
INSERT INTO Empresa VALUES (NULL, "Carrefour");
INSERT INTO Empresa VALUES (NULL, "Nubank");
INSERT INTO Empresa VALUES (NULL, "Rede Tv");
INSERT INTO Empresa VALUES (NULL, "Rede Globo");
INSERT INTO Empresa VALUES (NULL, "Rede Bandeirantes");
INSERT INTO Empresa VALUES (NULL, "Liberty Media");
INSERT INTO Empresa VALUES (NULL, "Hotmart");
INSERT INTO Empresa VALUES (NULL, "Magalu");
INSERT INTO Empresa VALUES (NULL, "Rocketseat");
INSERT INTO Empresa VALUES (NULL, "Udemy");
INSERT INTO Empresa VALUES (NULL, "Shopee");
INSERT INTO Empresa VALUES (NULL, "Google");
INSERT INTO Empresa VALUES (NULL, "Oracle");
INSERT INTO Empresa VALUES (NULL, "Micrsoft");
INSERT INTO Empresa VALUES (NULL, "Smart Consulting");

-- exemplos de inserção na tabela Curso

INSERT INTO Curso VALUES (NULL, "Arquitetura e Design de Projetos Java", "Plano Anual");
INSERT INTO Curso VALUES (NULL, "Clojure", "Plano Anual");
INSERT INTO Curso VALUES (NULL, "Elixir", "Plano Anual");
INSERT INTO Curso VALUES (NULL, "Engenharia de Software", "Plano Anual");
INSERT INTO Curso VALUES (NULL, "Go Language", "Plano Anual");
INSERT INTO Curso VALUES (NULL, "Internet das Coisas", "Plano Anual");
INSERT INTO Curso VALUES (NULL, "Jogos com Java", "Plano Anual");
INSERT INTO Curso VALUES (NULL, "JavaScript para back-end", "Plano Anual");
INSERT INTO Curso VALUES (NULL, "Linguagem C++", "Plano Anual");
INSERT INTO Curso VALUES (NULL, "Kotlin", "Plano Anual");
INSERT INTO Curso VALUES (NULL, "PHP", "Plano Anual");
INSERT INTO Curso VALUES (NULL, "TypeScript", "Plano Anual");
INSERT INTO Curso VALUES (NULL, "HTML", "Plano Anual");
INSERT INTO Curso VALUES (NULL, "Svelte", "Plano Anual");
INSERT INTO Curso VALUES (NULL, "JavaScript para Front-end", "Plano Anual");
INSERT INTO Curso VALUES (NULL, "React com TypeScript", "Plano Anual");
INSERT INTO Curso VALUES (NULL, "Deep Learning com Pytorch", "Plano Anual");
INSERT INTO Curso VALUES (NULL, "SQL com PostgreSQL", "Plano Anual");
INSERT INTO Curso VALUES (NULL, "Figma", "Plano Anual");
INSERT INTO Curso VALUES (NULL, "Produção com Photoshop", "Plano Anual");


-- exemplos de inserção na tabela evento

INSERT INTO Evento VALUES (NULL, "Imersao Dev", 20,  "2019-12-30", "2020-01-28");
INSERT INTO Evento VALUES (NULL, "Semcomp", 15, "2019-12-30", "2020-01-28");
INSERT INTO Evento VALUES (NULL, "Imersao BD", 10, "2019-12-10", "2020-01-28");
INSERT INTO Evento VALUES (NULL, "CS50", 15, "2019-12-10", "2020-01-28");
INSERT INTO Evento VALUES (NULL, "SE71", 177, "2019-12-10", "2020-01-28");
INSERT INTO Evento VALUES (NULL, "CompWeek", 20, "2019-01-15", "2020-01-28");
INSERT INTO Evento VALUES (NULL, "Imersao JavaScript", 51, "2018-06-17", "2019-12-28");
INSERT INTO Evento VALUES (NULL, "Imersao UX/Design", 19, "2019-12-10", "2020-01-28");
INSERT INTO Evento VALUES (NULL, "Imersao Markting", 100, "2019-12-10", "2020-01-28");
INSERT INTO Evento VALUES (NULL, "Imersao SEO", 122, "2019-12-10", "2020-01-28");
INSERT INTO Evento VALUES (NULL, "Imersao C++", 11,"2019-12-10", "2020-01-28");
INSERT INTO Evento VALUES (NULL, "Imersao M. Design", 20, "2019-12-10", "2020-01-28");
INSERT INTO Evento VALUES (NULL, "Imersao Storytelling", 19, "2019-12-10", "2020-01-28");
INSERT INTO Evento VALUES (NULL, "Imersao Front-end", 10, "2019-12-10", "2020-01-28");
INSERT INTO Evento VALUES (NULL, "Imersao Back-end", 110, "2019-12-10", "2020-01-28");
INSERT INTO Evento VALUES (NULL, "Imersao IoT", 12, "2019-12-10", "2020-01-28");
INSERT INTO Evento VALUES (NULL, "Imersao Full-Stack", 11, "2019-12-10", "2020-01-28");
INSERT INTO Evento VALUES (NULL, "Imersao Java", 60, "2019-12-10", "2020-01-28");
INSERT INTO Evento VALUES (NULL, "Imersao SQL", 121, "2019-12-10", "2020-01-28");
INSERT INTO Evento VALUES (NULL, "Imersao Figma", 11, "2019-12-10", "2020-01-28");


-- exemplos de inserção na tabela Funcionario

INSERT INTO Funcionario VALUES (NULL, "Barreto Paulo ", "Dev Senior", "1");
INSERT INTO Funcionario VALUES (NULL, "Rios Ronald ", "CTO", "1");
INSERT INTO Funcionario VALUES (NULL, "Juninho da Shineray", "Trainee", "3");
INSERT INTO Funcionario VALUES (NULL, "Carimbo da Silva", "Dev Pleno", "1");
INSERT INTO Funcionario VALUES (NULL, "Copia Autenticada", "UX Senior", "3");
INSERT INTO Funcionario VALUES (NULL, "Rafael Kyoko", "Front End junior", "1");
INSERT INTO Funcionario VALUES (NULL, "Arthur Valentim", "Desenvolvedor", "2");
INSERT INTO Funcionario VALUES (NULL, "Anderson Guilherme", "Full Stack", "2");
INSERT INTO Funcionario VALUES (NULL, "Lorenzo Duarte", "Front End Junior", "1");
INSERT INTO Funcionario VALUES (NULL, "Kevin Michael", "Marketing", "1");
INSERT INTO Funcionario VALUES (NULL, "Sophia Juliano", "Dev Senior", "18");
INSERT INTO Funcionario VALUES (NULL, "Estela Frederico", "Dev Senior", "1");
INSERT INTO Funcionario VALUES (NULL, "Isadora Sabrina", "Dev Senior", "4");
INSERT INTO Funcionario VALUES (NULL, "Mariana José", "Trainee", "5");
INSERT INTO Funcionario VALUES (NULL, "Maitê Amanda", "Dev Senior", "1");
INSERT INTO Funcionario VALUES (NULL, "Beatriz Augusto", "Dev Senior", "2");
INSERT INTO Funcionario VALUES (NULL, "Bianca Kelvin", "Dev Junior", "5");
INSERT INTO Funcionario VALUES (NULL, "Alícia Lucca", "CTO", "6");
INSERT INTO Funcionario VALUES (NULL, "Mateus Henrique", "Junior", "7");
INSERT INTO Funcionario VALUES (NULL, "Anabela Enzo", "Motion Design", "2");
INSERT INTO Funcionario VALUES (NULL, "Reginaldo Antunes", "Motion Design", "21");
INSERT INTO Funcionario VALUES (NULL, "Dorival Marcelo", "Dev Senior", "4");
INSERT INTO Funcionario VALUES (NULL, "Luciano Nine", "Dev Junior", "18");
INSERT INTO Funcionario VALUES (NULL, "Dorina Nina Portinol", "Treinee", "3");
INSERT INTO Funcionario VALUES (NULL, "Camile Ninemati", "Dev Junior", "4");

-- exemplos de inserção na tabela Licencia

INSERT INTO Licencia VALUES ("1", "1");
INSERT INTO Licencia VALUES ("2", "2");
INSERT INTO Licencia VALUES ("3", "3");
INSERT INTO Licencia VALUES ("4", "4");
INSERT INTO Licencia VALUES ("5", "6");
INSERT INTO Licencia VALUES ("6", "5");
INSERT INTO Licencia VALUES ("7", "7");
INSERT INTO Licencia VALUES ("8", "8");
INSERT INTO Licencia VALUES ("9", "9");
INSERT INTO Licencia VALUES ("20", "20");
INSERT INTO Licencia VALUES ("10", "10");
INSERT INTO Licencia VALUES ("12", "12");
INSERT INTO Licencia VALUES ("11", "11");
INSERT INTO Licencia VALUES ("13", "13");
INSERT INTO Licencia VALUES ("14", "14");
INSERT INTO Licencia VALUES ("15", "15");
INSERT INTO Licencia VALUES ("16", "16");
INSERT INTO Licencia VALUES ("17", "17");
INSERT INTO Licencia VALUES ("18", "18");
INSERT INTO Licencia VALUES ("19", "19");


-- exemplos de inserção na tabela coordena

INSERT INTO Coordena VALUES ("1", "1");
INSERT INTO Coordena VALUES ("2", "2");
INSERT INTO Coordena VALUES ("3", "3");
INSERT INTO Coordena VALUES ("4", "4");
INSERT INTO Coordena VALUES ("5", "6");
INSERT INTO Coordena VALUES ("6", "5");
INSERT INTO Coordena VALUES ("7", "7");
INSERT INTO Coordena VALUES ("8", "8");
INSERT INTO Coordena VALUES ("9", "9");
INSERT INTO Coordena VALUES ("20", "20");
INSERT INTO Coordena VALUES ("10", "10");
INSERT INTO Coordena VALUES ("12", "12");
INSERT INTO Coordena VALUES ("11", "11");
INSERT INTO Coordena VALUES ("13", "13");
INSERT INTO Coordena VALUES ("14", "14");
INSERT INTO Coordena VALUES ("15", "15");
INSERT INTO Coordena VALUES ("16", "16");
INSERT INTO Coordena VALUES ("17", "17");
INSERT INTO Coordena VALUES ("18", "18");
INSERT INTO Coordena VALUES ("19", "19");


-- exemplos de inserção na tabela Participa

INSERT INTO Participa VALUES ("1", "1");
INSERT INTO Participa VALUES ("2", "2");
INSERT INTO Participa VALUES ("3", "3");
INSERT INTO Participa VALUES ("4", "4");
INSERT INTO Participa VALUES ("5", "6");
INSERT INTO Participa VALUES ("6", "5");
INSERT INTO Participa VALUES ("7", "7");
INSERT INTO Participa VALUES ("8", "8");
INSERT INTO Participa VALUES ("9", "9");
INSERT INTO Participa VALUES ("20", "20");
INSERT INTO Participa VALUES ("10", "10");
INSERT INTO Participa VALUES ("12", "12");
INSERT INTO Participa VALUES ("11", "11");
INSERT INTO Participa VALUES ("13", "13");
INSERT INTO Participa VALUES ("14", "14");
INSERT INTO Participa VALUES ("15", "15");
INSERT INTO Participa VALUES ("16", "16");
INSERT INTO Participa VALUES ("17", "17");
INSERT INTO Participa VALUES ("18", "18");
INSERT INTO Participa VALUES ("19", "19");


-- exemplos de inserção na tabela Matricula

INSERT INTO Matricula (dataInicio, idCurso, idAluno) VALUES(CURDATE(), 1, 1);
INSERT INTO Matricula (dataInicio, idCurso, idAluno) VALUES (CURDATE(), 1, 17);
INSERT INTO Matricula (dataInicio, idCurso, idAluno) VALUES (CURDATE(), 1, 15);
INSERT INTO Matricula (dataInicio, idCurso, idAluno) VALUES (CURDATE(), 1, 8);
INSERT INTO Matricula (dataInicio, idCurso, idAluno) VALUES (CURDATE(), 1, 2);
INSERT INTO Matricula (dataInicio, idCurso, idAluno) VALUES (CURDATE(), 2, 3);
INSERT INTO Matricula (dataInicio, idCurso, idAluno) VALUES (CURDATE(), 5, 4);
INSERT INTO Matricula (dataInicio, idCurso, idAluno) VALUES (CURDATE(), 3, 5);
INSERT INTO Matricula (dataInicio, idCurso, idAluno) VALUES (CURDATE(), 2, 6);
INSERT INTO Matricula (dataInicio, idCurso, idAluno) VALUES (CURDATE(), 2, 5);
INSERT INTO Matricula (dataInicio, idCurso, idAluno) VALUES (CURDATE(), 1, 7);
INSERT INTO Matricula (dataInicio, idCurso, idAluno) VALUES (CURDATE(), 16, 8);
INSERT INTO Matricula (dataInicio, idCurso, idAluno) VALUES (CURDATE(), 19, 8);
INSERT INTO Matricula (dataInicio, idCurso, idAluno) VALUES (CURDATE(), 10, 8);
INSERT INTO Matricula (dataInicio, idCurso, idAluno) VALUES (CURDATE(), 13, 2);
INSERT INTO Matricula (dataInicio, idCurso, idAluno) VALUES (CURDATE(), 17, 8);
INSERT INTO Matricula (dataInicio, idCurso, idAluno) VALUES (CURDATE(), 13, 8);
INSERT INTO Matricula (dataInicio, idCurso, idAluno) VALUES (CURDATE(), 11, 8);
INSERT INTO Matricula (dataInicio, idCurso, idAluno) VALUES (CURDATE(), 12, 8);


-- insercao na tabela hora acesso

INSERT INTO HoraAcesso VALUES ("2", "2", CURDATE(), "14:23:00", "15:52:10");
INSERT INTO HoraAcesso VALUES ("3", "3", CURDATE(), "13:23:00", "13:52:10");
INSERT INTO HoraAcesso VALUES ("4", "4", CURDATE(), "13:23:00", "13:52:10");
INSERT INTO HoraAcesso VALUES ("5", "6", CURDATE(), "13:23:00", "13:52:10");
INSERT INTO HoraAcesso VALUES ("6", "5", CURDATE(), "13:23:00", "13:52:10");
INSERT INTO HoraAcesso VALUES ("7", "7", CURDATE(), "13:23:00", "13:52:10");
INSERT INTO HoraAcesso VALUES ("8", "8", CURDATE(), "13:23:00", "13:52:10");
INSERT INTO HoraAcesso VALUES ("9", "9", CURDATE(), "13:23:00", "13:52:10");
INSERT INTO HoraAcesso VALUES ("20", "20", CURDATE(), "13:23:00", "13:52:10");
INSERT INTO HoraAcesso VALUES ("10", "10", CURDATE(), "13:23:00", "13:52:10");
INSERT INTO HoraAcesso VALUES ("12", "12", CURDATE(), "13:23:00", "13:52:10");
INSERT INTO HoraAcesso VALUES ("11", "11", CURDATE(), "13:23:00", "13:52:10");
INSERT INTO HoraAcesso VALUES ("13", "13", CURDATE(), "13:23:00", "13:52:10");
INSERT INTO HoraAcesso VALUES ("14", "14", CURDATE(), "13:23:00", "13:52:10");

commit;
