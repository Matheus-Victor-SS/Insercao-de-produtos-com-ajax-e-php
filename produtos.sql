-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03/09/2024 às 14:23
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `produtos`
--
CREATE DATABASE IF NOT EXISTS `produtos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `produtos`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `idProduto` int(11) NOT NULL,
  `nome_produto` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `qtd_estoque` int(11) NOT NULL,
  `preco` double NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `descricao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`idProduto`, `nome_produto`, `marca`, `qtd_estoque`, `preco`, `tipo`, `descricao`) VALUES
(5, 'aaaaaaaaaa', 'bbbbbbb', 12, 12412, 'cccccccc', 'ddddddd'),
(6, 'asdsasdswqweqwe', 'sadssssssss', 45, 66444, 'ggtgggggg', '124312312321dfdfgfdg'),
(7, 'asdsasdswqweqwe', 'sadssssssss', 45, 66444, 'ggtgggggg', '124312312321dfdfgfdg'),
(8, 'asdsasdswqweqwe', 'sadssssssss', 45, 66444, 'ggtgggggg', '124312312321dfdfgfdg'),
(9, 'asdsasdswqweqwe', 'sadssssssss', 45, 66444, 'ggtgggggg', '124312312321dfdfgfdg'),
(10, 'asdsasdswqweqwe', 'sadssssssss', 45, 66444, 'ggtgggggg', '124312312321dfdfgfdg'),
(11, 'asdsasdswqweqwe', 'sadssssssss', 45, 66444, 'ggtgggggg', '124312312321dfdfgfdg'),
(12, 'asdsasdswqweqwe', 'sadssssssss', 45, 66444, 'ggtgggggg', '124312312321dfdfgfdg'),
(13, 'aaaaaaaaaa', 'sadasddasdasd', 45, 231, '14zxc', 'ddddddd'),
(14, 'banana', 'nanica', 34, 123, 'comida', 'nanica'),
(15, 'eeeeee', 'rrrrrr', 23, 313, 'uuuuuu', 'ooooooooooo');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idProduto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idProduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
