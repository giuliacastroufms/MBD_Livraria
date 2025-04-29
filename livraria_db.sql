-- Criação da tabela livros
CREATE TABLE livros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL
);

-- Criação da tabela vendas
CREATE TABLE vendas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_livro INT NOT NULL,
    quantidade INT NOT NULL,
    data_venda DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_livro) REFERENCES livros(id)
);

-- Inserindo 3 livros
INSERT INTO livros (titulo, autor, preco) VALUES 
('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 29.90),
('Dom Casmurro', 'Machado de Assis', 34.50),
('1984', 'George Orwell', 39.00);

-- Inserindo 3 vendas
INSERT INTO vendas (id_livro, quantidade) VALUES 
(1, 2),
(2, 1),
(3, 3);