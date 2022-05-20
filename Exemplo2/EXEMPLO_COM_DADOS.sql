-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Maio-2022 às 13:58
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `exemplo`
--
CREATE DATABASE IF NOT EXISTS `exemplo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `exemplo`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipes`
--

CREATE TABLE `equipes` (
  `num_equipe` int(11) NOT NULL,
  `nome_equipe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `equipes`
--

INSERT INTO `equipes` (`num_equipe`, `nome_equipe`) VALUES
(1, 'INFORMÁTICA PARA INTERNET'),
(2, 'ADMINISTRAÇÃO'),
(3, 'QUÍMICA'),
(4, 'RECURSOS HUMANOS');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogadores`
--

CREATE TABLE `jogadores` (
  `num_jogadores` int(11) NOT NULL,
  `nome_jogadores` varchar(255) DEFAULT NULL,
  `num_equipe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `jogadores`
--

INSERT INTO `jogadores` (`num_jogadores`, `nome_jogadores`, `num_equipe`) VALUES
(1, 'Anderso Vanin', 1),
(2, 'Cíntia Pinho', 1),
(3, 'Simone', 4),
(4, 'Maria Isadora', 2),
(5, 'Marcela', 3),
(6, 'Stephanie', 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`num_equipe`);

--
-- Índices para tabela `jogadores`
--
ALTER TABLE `jogadores`
  ADD PRIMARY KEY (`num_jogadores`),
  ADD KEY `num_equipe` (`num_equipe`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `equipes`
--
ALTER TABLE `equipes`
  MODIFY `num_equipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `jogadores`
--
ALTER TABLE `jogadores`
  MODIFY `num_jogadores` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `jogadores`
--
ALTER TABLE `jogadores`
  ADD CONSTRAINT `jogadores_ibfk_1` FOREIGN KEY (`num_equipe`) REFERENCES `equipes` (`num_equipe`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
