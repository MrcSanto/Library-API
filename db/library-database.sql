CREATE TABLE categoria(
    categoria_id SERIAL PRIMARY KEY,
    categoria_nome VARCHAR(50),
    categoria_desc TEXT
);
CREATE TABLE book (
    book_id SERIAL PRIMARY KEY,
    book_nome VARCHAR(50) NOT NULL,
    book_autor VARCHAR(50) NOT NULL,
    book_isbn INTEGER UNIQUE,
    book_categoria INTEGER,
    book_paginas INTEGER,
    book_restantes INTEGER,
    FOREIGN KEY (book_categoria) REFERENCES categoria(categoria_id)
);

CREATE TABLE endereco (
    endereco_id SERIAL PRIMARY KEY,
    rua VARCHAR(100) NOT NULL,
    numero VARCHAR(10),
    complemento VARCHAR(50),
    bairro VARCHAR(50),
    cidade VARCHAR(50) NOT NULL,
    cep VARCHAR(10) NOT NULL
);

CREATE TABLE cliente(
    client_id SERIAL PRIMARY KEY,
    client_cpf VARCHAR(11) UNIQUE,
    client_nome VARCHAR(50) NOT NULL,
    client_adress INTEGER NOT NULL,
    FOREIGN KEY (client_adress) REFERENCES endereco(endereco_id)
);

CREATE TABLE emprestimos(
    emprestimo_id SERIAL PRIMARY KEY,
    emprestimo_client INTEGER NOT NULL,
    emprestimo_livro INTEGER NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,
    FOREIGN KEY (emprestimo_client) REFERENCES cliente(client_id),
    FOREIGN KEY (emprestimo_livro) REFERENCES book(book_id)
);

INSERT INTO categoria (categoria_nome, categoria_desc) VALUES
('Ficção', 'Livros de ficção narrativa'),
('Fantasia', 'Livros com elementos fantásticos e sobrenaturais'),
('Biografia', 'Livros sobre a vida de pessoas'),
('Tecnologia', 'Livros sobre avanços tecnológicos e ciência da computação'),
('História', 'Livros sobre eventos e civilizações antigas e modernas'),
('Autoajuda', 'Livros que ajudam no desenvolvimento pessoal'),
('Romance', 'Histórias de amor e relações interpessoais'),
('Suspense', 'Livros com foco em mistério e tensão'),
('Terror', 'Livros com histórias assustadoras e sobrenaturais'),
('Aventura', 'Livros que envolvem explorações e jornadas'),
('Religiosos', 'Livros que abordam temas de fé e espiritualidade'),
('Gibis', 'Histórias em quadrinhos de diversos gêneros'),
('Livros Infantis', 'Livros voltados para o público infantil'),
('Livros de Poesia', 'Coleções de poemas e poesias'),
('Livros de Filosofia', 'Obras que discutem questões filosóficas e existenciais'),
('Contos', 'Coleções de contos curtos e narrativas breves');

INSERT INTO book (book_nome, book_autor, book_isbn, book_categoria, book_paginas, book_restantes) VALUES
('O Senhor dos Anéis', 'J.R.R. Tolkien', 123456, 2, 1178, 5),
('Dom Casmurro', 'Machado de Assis', 223344, 7, 256, 3),
('Steve Jobs', 'Walter Isaacson', 998877, 3, 600, 2),
('A Revolução dos Bichos', 'George Orwell', 445566, 1, 152, 4),
('A Torre Negra', 'Stephen King', 778899, 9, 820, 6),
('O Código Da Vinci', 'Dan Brown', 112233, 8, 480, 7),
('Clean Code', 'Robert C. Martin', 556677, 4, 464, 5),
('História do Brasil', 'Boris Fausto', 332211, 5, 530, 4),
('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 667788, 7, 120, 3),
('It: A Coisa', 'Stephen King', 887766, 9, 1104, 2);

INSERT INTO endereco (rua, numero, complemento, bairro, cidade, cep) VALUES
('Rua das Flores', '123', 'Apto 101', 'Centro', 'São Paulo', '01001-000'),
('Av. Atlântica', '456', NULL, 'Copacabana', 'Rio de Janeiro', '22070-001'),
('Rua dos Artistas', '789', 'Bloco B', 'Vila Madalena', 'São Paulo', '05432-010'),
('Av. Paulista', '1001', 'Cobertura', 'Bela Vista', 'São Paulo', '01311-200'),
('Rua dos Pinheiros', '321', 'Casa', 'Pinheiros', 'São Paulo', '05422-040'),
('Rua da Praia', '654', 'Apto 202', 'Centro', 'Florianópolis', '88010-110'),
('Rua do Sol', '987', NULL, 'Boa Viagem', 'Recife', '51020-040'),
('Rua da Glória', '111', 'Fundos', 'Liberdade', 'São Paulo', '01509-000'),
('Rua das Palmeiras', '555', 'Casa 5', 'Jardins', 'São Paulo', '01412-050'),
('Rua da Aurora', '999', 'Cobertura', 'Centro', 'Recife', '50050-080');

INSERT INTO endereco (rua, numero, complemento, bairro, cidade, cep) VALUES
('Rua das Flores', '123', 'Apto 101', 'Centro', 'São Paulo', '01001-000'),
('Av. Atlântica', '456', NULL, 'Copacabana', 'Rio de Janeiro', '22070-001'),
('Rua dos Artistas', '789', 'Bloco B', 'Vila Madalena', 'São Paulo', '05432-010'),
('Av. Paulista', '1001', 'Cobertura', 'Bela Vista', 'São Paulo', '01311-200'),
('Rua dos Pinheiros', '321', 'Casa', 'Pinheiros', 'São Paulo', '05422-040'),
('Rua da Praia', '654', 'Apto 202', 'Centro', 'Florianópolis', '88010-110'),
('Rua do Sol', '987', NULL, 'Boa Viagem', 'Recife', '51020-040'),
('Rua da Glória', '111', 'Fundos', 'Liberdade', 'São Paulo', '01509-000'),
('Rua das Palmeiras', '555', 'Casa 5', 'Jardins', 'São Paulo', '01412-050'),
('Rua da Aurora', '999', 'Cobertura', 'Centro', 'Recife', '50050-080');

INSERT INTO cliente (client_cpf, client_nome, client_adress) VALUES
 ('12345678901', 'João da Silva', 1),
 ('98765432100', 'Maria Oliveira', 2),
 ('45678912345', 'Pedro Souza', 3),
 ('65432198765', 'Ana Lima', 4),
 ('32165498700', 'Lucas Ferreira', 5),
 ('15975348620', 'Carla Mendes', 6),
 ('95135785246', 'Fernanda Ribeiro', 7),
 ('85274196387', 'Marcelo Costa', 8),
 ('75395185264', 'Julia Carvalho', 9),
 ('14725836915', 'Paulo Miranda', 10);


INSERT INTO emprestimos (emprestimo_client, emprestimo_livro, data_emprestimo, data_devolucao) VALUES
(1, 1, '2024-09-01', '2024-09-15'),
(2, 2, '2024-09-03', NULL),
(3, 3, '2024-09-05', '2024-09-18'),
(4, 4, '2024-09-07', NULL),
(5, 5, '2024-09-10', '2024-09-20'),
(6, 6, '2024-09-12', NULL),
(7, 7, '2024-09-14', '2024-09-25'),
(8, 8, '2024-09-16', NULL),
(9, 9, '2024-09-18', '2024-09-29'),
(10, 10, '2024-09-20', NULL);

select * from categoria


