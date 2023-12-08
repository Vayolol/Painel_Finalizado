-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Dez-2023 às 20:59
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `senaike`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cinema`
--

CREATE TABLE `cinema` (
  `pk_id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `sinopse` varchar(300) NOT NULL,
  `elenco` varchar(50) NOT NULL,
  `imagem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cinema`
--

INSERT INTO `cinema` (`pk_id`, `titulo`, `sinopse`, `elenco`, `imagem`) VALUES
(1, 'Interestelar', 'Filme De nave', 'Matthew McConaughey', 'assets/img/cinema/Malphite_Shamrock_SS_thumb.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `destaque_home`
--

CREATE TABLE `destaque_home` (
  `pk_id` int(11) NOT NULL,
  `fk_noticia` int(11) NOT NULL,
  `fk_redacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `generos`
--

CREATE TABLE `generos` (
  `pk_id` int(11) NOT NULL,
  `tipo_genero` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `generos`
--

INSERT INTO `generos` (`pk_id`, `tipo_genero`) VALUES
(1, 'Carro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `pk_id` int(11) NOT NULL,
  `palavra_chave` varchar(220) NOT NULL,
  `texto` varchar(300) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `sub_titulo` varchar(300) NOT NULL,
  `data_postagem` datetime NOT NULL,
  `imagem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`pk_id`, `palavra_chave`, `texto`, `titulo`, `sub_titulo`, `data_postagem`, `imagem`) VALUES
(1, 'Carro', 'Carro Bateu', 'Acidente De Carro', 'Acidente', '2023-12-08 14:13:02', 'assets/img/noticia/sata.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `redacao`
--

CREATE TABLE `redacao` (
  `pk_id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `salario` float NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `cpf` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `redacao`
--

INSERT INTO `redacao` (`pk_id`, `nome`, `salario`, `telefone`, `cpf`) VALUES
(1, 'Tobias Fernando', 3600, '1234', '12345678911');

-- --------------------------------------------------------

--
-- Estrutura da tabela `revisor`
--

CREATE TABLE `revisor` (
  `pk_id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `salario` float NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `cpf` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `revisor`
--

INSERT INTO `revisor` (`pk_id`, `nome`, `salario`, `telefone`, `cpf`) VALUES
(1, 'Glauco Leoncio', 2500, '12444', '12345678901');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `pk_id` int(11) NOT NULL,
  `e_mail` varchar(220) DEFAULT NULL,
  `senha` varchar(80) DEFAULT NULL,
  `habilita` smallint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`pk_id`, `e_mail`, `senha`, `habilita`) VALUES
(1, 'kksus@gmail.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cinema`
--
ALTER TABLE `cinema`
  ADD PRIMARY KEY (`pk_id`);

--
-- Índices para tabela `destaque_home`
--
ALTER TABLE `destaque_home`
  ADD PRIMARY KEY (`pk_id`);

--
-- Índices para tabela `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`pk_id`);

--
-- Índices para tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`pk_id`);

--
-- Índices para tabela `redacao`
--
ALTER TABLE `redacao`
  ADD PRIMARY KEY (`pk_id`);

--
-- Índices para tabela `revisor`
--
ALTER TABLE `revisor`
  ADD PRIMARY KEY (`pk_id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`pk_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cinema`
--
ALTER TABLE `cinema`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `destaque_home`
--
ALTER TABLE `destaque_home`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `generos`
--
ALTER TABLE `generos`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `redacao`
--
ALTER TABLE `redacao`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `revisor`
--
ALTER TABLE `revisor`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
