-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Jul-2022 às 03:51
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bestlane`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administrador`
--

CREATE TABLE `administrador` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `login` varchar(200) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `is_admin` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `administrador`
--

INSERT INTO `administrador` (`id`, `nome`, `login`, `senha`, `is_admin`) VALUES
(1, 'Administrador', 'root', 'root', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `telefone` varchar(200) NOT NULL,
  `cpf` varchar(200) NOT NULL,
  `bairro` varchar(200) NOT NULL,
  `cep` varchar(200) NOT NULL,
  `logradouro` varchar(200) NOT NULL,
  `numero` varchar(255) NOT NULL,
  `cidade` varchar(200) NOT NULL,
  `estado` varchar(200) NOT NULL,
  `is_active` varchar(11) NOT NULL DEFAULT 'Ativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `telefone`, `cpf`, `bairro`, `cep`, `logradouro`, `numero`, `cidade`, `estado`, `is_active`) VALUES
(1, 'teste cliente', '', '0', '', '', '', '', '', '', '1'),
(2, 'anthony', '', '\r\n', '', '', '', '', '', '', '0'),
(3, 'Aa', '', '', '', '', '', '', '', '', '1'),
(4, 'zilda', '', '', '', '', '', '', '', '', '1'),
(5, 'ana', '', '', '', '', '', '', '', '', '1'),
(6, 'anan', '', '', '', '', '', '', '', '', '1'),
(7, 'joao', '', '41569603820', '', '', '', '', '', '', '1'),
(8, 'awdawd', 'awdawd', '11231', 'awd', 'awd', 'awd', '', '', '', 'ATIVO'),
(131, '', '', '', '', '', '', '', '', '', 'Ativo'),
(132, 'gustavo garcia', '(12) 93891-8319', '91.283.190/3810-93', '38.200-120', 'Rua João Elpidio de Souza', '26', 'Centro', 'Frutal', 'MG', 'Ativo'),
(133, 'gustavo garcia', '(12) 93891-8319', '91.283.190/3810-93', '38.200-120', 'Rua João Elpidio de Souza', '26', 'Centro', 'Frutal', 'MG', 'Inativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `entregador`
--

CREATE TABLE `entregador` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `cpf` varchar(200) NOT NULL,
  `data_admissao` datetime NOT NULL,
  `login` varchar(200) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `entregador`
--

INSERT INTO `entregador` (`id`, `nome`, `cpf`, `data_admissao`, `login`, `senha`, `is_active`) VALUES
(2, 'tonin entregado', '', '2022-07-07 01:51:59', '', '', 1),
(3, 'joao', '', '2022-07-15 04:37:31', '', '', 1),
(4, 'garcia', '', '2022-07-15 04:37:40', '', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `entregas`
--

CREATE TABLE `entregas` (
  `id` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `pedido` varchar(200) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_entregador` int(11) NOT NULL,
  `id_operador` int(11) NOT NULL,
  `data_entrada` datetime DEFAULT NULL,
  `data_saida` datetime DEFAULT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `entregas`
--

INSERT INTO `entregas` (`id`, `quantidade`, `descricao`, `pedido`, `id_cliente`, `id_entregador`, `id_operador`, `data_entrada`, `data_saida`, `status`) VALUES
(2, 10, 'pedido boticario', '00001', 5, 2, 1, '2022-07-15 23:50:28', '2022-07-31 23:50:28', 'SAIU PARA ENTREGA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `operador`
--

CREATE TABLE `operador` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `login` varchar(200) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `cpf` varchar(200) NOT NULL,
  `is_admin` int(4) DEFAULT NULL,
  `is_operator` int(4) NOT NULL,
  `data_cadastro` datetime NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `operador`
--

INSERT INTO `operador` (`id`, `nome`, `login`, `senha`, `cpf`, `is_admin`, `is_operator`, `data_cadastro`, `is_active`) VALUES
(1, 'Joao Pedro', 'JoaoPedro', '123456', '41569603820', NULL, 1, '2022-07-07 01:10:20', 1),
(3, 'anthony', 'toin', '123', '1231231313', 0, 1, '2022-07-19 05:18:09', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `entregador`
--
ALTER TABLE `entregador`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `entregas`
--
ALTER TABLE `entregas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cliente_entregas` (`id_cliente`),
  ADD KEY `fk_operador_entregas` (`id_operador`),
  ADD KEY `fk_entregador_entregas` (`id_entregador`);

--
-- Índices para tabela `operador`
--
ALTER TABLE `operador`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT de tabela `entregador`
--
ALTER TABLE `entregador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `entregas`
--
ALTER TABLE `entregas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `operador`
--
ALTER TABLE `operador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `entregas`
--
ALTER TABLE `entregas`
  ADD CONSTRAINT `fk_cliente_entregas` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `fk_entregador_entregas` FOREIGN KEY (`id_entregador`) REFERENCES `entregador` (`id`),
  ADD CONSTRAINT `fk_operador_entregas` FOREIGN KEY (`id_operador`) REFERENCES `operador` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
