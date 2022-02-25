-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Fev-2022 às 21:36
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `databaseclientes`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_infoclientes`
--

CREATE TABLE `tb_infoclientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_nascimento` date NOT NULL,
  `endereco` varchar(225) NOT NULL,
  `genero` varchar(100) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `prod_interesse` varchar(255) NOT NULL,
  `data_hora` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_infoclientes`
--

INSERT INTO `tb_infoclientes` (`id`, `nome`, `data_nascimento`, `endereco`, `genero`, `telefone`, `email`, `prod_interesse`, `data_hora`) VALUES
(7, 'Rafael Caroba de Souza', '2022-02-01', 'aaaaaaaaaaaaaa', 'Masc', '+5511999999999', 'rafa.caroba.17@gmail.com', 'Chinelos', NULL),
(9, 'teste', '2022-02-01', 'aaaaaaaaaaaaaa', 'Masc', '+5511999999999', 'rafa.caroba.17@gmail.com', 'Chinelos', NULL),
(11, 'teste email', '2022-02-01', 'aaaaaaaaaaaaaa', 'Masc', '+5511999999999', 'rafa.caroba.17@gmail.com', 'Chinelos', NULL),
(13, 'teste email att', '2022-02-01', 'aaaaaaaaaaaaaa', 'Masc', '+5511999955555', 'rafa.caroba.17@gmail.com', 'Chinelos', NULL),
(14, 'teste email att 2', '2022-02-01', 'aaaaaaaaaaaaaa', 'Masc', '+5511999955555', 'rafa.caroba.17@gmail.com', 'Chinelos', NULL),
(15, 'teste email att 2', '2022-02-01', 'aaaaaaaaaaaaaa', 'Masc', '+5511999955555', 'rafa.caroba.17@gmail.com', 'Chinelos', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_infoclientes`
--
ALTER TABLE `tb_infoclientes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_infoclientes`
--
ALTER TABLE `tb_infoclientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
