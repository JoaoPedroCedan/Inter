-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Jul-2022 às 01:25
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
(133, 'gustavo garcia', '(12) 93891-8319', '91.283.190/3810-93', '38.200-120', 'Rua João Elpidio de Souza', '26', 'Centro', 'Frutal', 'MG', 'Inativo'),
(134, 'MARIA VICTORIA', '(12) 31312-3123', '109.291.291-22', '38.200-120', '', '', '', '', '', 'Ativo'),
(135, 'MARIA VICTORIA', '(12) 31312-3123', '109.291.291-22', '38.200-120', 'Rua João Elpidio de Souza', '26', 'Centro', 'Frutal', 'MG', 'Ativo'),
(136, 'aaaaa', '', '', '', '', '', '', '', '', 'Ativo'),
(137, 'adawd', '', '', '', '', '', '', '', '', 'Ativo'),
(138, 'adawd', '', '', '', '', '', '', '', '', 'Ativo'),
(139, 'adawd', '', '', '', '', '', '', '', '', 'Ativo'),
(140, 'joao pedro', '(22) 93192-391', '122.391.911-22', '38.200-120', 'Rua João Elpidio de Souza', '27', 'Centro', 'Frutal', 'MG', 'Ativo'),
(141, '12313', '(12) 12312-3123', '12.312.312/3123-13', '21.231-312', '38200120', '', '', '', '', 'ATIVO'),
(142, '', '', '', '', '', '', '', '', '', 'ATIVO'),
(143, '', '', '', '', '', '', '', '', '', 'ATIVO'),
(144, 'rteste teste', '', '', '', '', '', '', '', '', 'ATIVO'),
(145, 'rteste teste', '(12) 87398-1378', '129.309.813-91', '', '', '', '', '', '', 'ATIVO'),
(146, 'rteste teste', '(12) 87398-1378', '129.309.813-91', '38.200-120', 'Rua João Elpidio de Souza', '', 'Centro', 'Frutal', 'MG', 'ATIVO'),
(147, 'rteste teste', '(12) 87398-1378', '129.309.813-91', '38.200-120', 'Rua João Elpidio de Souza', '12', 'Centro', 'Frutal', 'MG', 'ATIVO'),
(148, 'awdawda', '', '12.313.121/2121-2', '', '', '', '', '', '', 'ATIVO'),
(149, 'awdawda', '(12) 03718-2371', '12.313.121/2121-2', '38.200-120', '', '', '', '', '', 'ATIVO'),
(150, 'awdawda', '(12) 03718-2371', '12.313.121/2121-2', '38.200-120', 'Rua João Elpidio de Souza', '111', 'Centro', 'Frutal', 'MG', 'ATIVO'),
(151, 'TESTE 25', '(38) 2001-1212', '121.231.231-12', '38.200-120', 'Rua João Elpidio de Souza', '115', 'Centro', 'Frutal', 'MG', 'ATIVO'),
(152, '', '', '', '', '', '', '', '', '', 'ATIVO'),
(153, '', '', '', '', '', '', '', '', '', 'ATIVO'),
(154, 'operador', '(23) 91238-1812', '123.918.391-83', '38.200-120', '', '', '', '', '', 'ATIVO'),
(155, 'operador', '(23) 91238-1812', '123.918.391-83', '38.200-120', 'Rua João Elpidio de Souza', '12', 'Centro', 'Frutal', 'MG', 'ATIVO'),
(156, 'teste', '(12) 31312-3123', '112.312.313-11', '38.200-120', 'Rua João Elpidio de Souza', '1234', 'Centro', 'Frutal', 'MG', 'ATIVO'),
(157, 'joao pedro', '(38) 20012-0212', '12.313.123/9999-99', '38.280-000', 'rua 1', '123', '1', 'Iturama', 'MG', 'ATIVO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `entregador`
--

CREATE TABLE `entregador` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `cpf` varchar(200) NOT NULL,
  `data_admissao` datetime NOT NULL DEFAULT current_timestamp(),
  `login` varchar(200) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `entregador`
--

INSERT INTO `entregador` (`id`, `nome`, `cpf`, `data_admissao`, `login`, `senha`, `is_active`) VALUES
(3, 'joao', '', '2022-07-15 04:37:31', '', '', 1),
(4, 'garcia', '', '2022-07-15 04:37:40', '', '', 0),
(5, 'joao pedro', '415.696.038-20', '0000-00-00 00:00:00', '415.696.038-20', '123456', 1),
(7, 'AWDAJOIWDJOI', '192.839.138-91', '2022-07-26 20:10:34', '192.839.138-91', '1234', 1);

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
  `data_entrada` datetime DEFAULT current_timestamp(),
  `data_saida` datetime DEFAULT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `entregas`
--

INSERT INTO `entregas` (`id`, `quantidade`, `descricao`, `pedido`, `id_cliente`, `id_entregador`, `id_operador`, `data_entrada`, `data_saida`, `status`) VALUES
(4, 1, 'awdawd\r\n\r\n', '', 138, 3, 16, '2022-07-26 02:43:12', '2022-07-26 02:43:12', 'ENTREGUE'),
(7, 15, 'TESTE DESCRIÇAO', '0012231411', 133, 3, 21, NULL, NULL, 'ENTREGUE'),
(10, 0, '10', '1203910391093', 4, 5, 18, '2022-07-26 20:10:54', NULL, 'SAIU PARA ENTREGA'),
(11, 1231, 'aiwdiao', '109283091', 4, 5, 18, '2022-07-26 20:15:28', NULL, 'SAIU PARA ENTREGA'),
(12, 25, 'awodiawdji', '1239139193', 147, 4, 21, '2022-07-26 20:15:59', NULL, 'ENTREGUE'),
(13, 12, 'MAIUSCULO', '1235114124', 4, 5, 18, '2022-07-26 20:17:04', NULL, 'SAIU PARA ENTREGA'),
(14, 1231, 'SDJIASJDIASOIDJIIAJDOIAWJDIOAWJDIO', '1231', 4, 5, 18, '2022-07-26 20:17:43', NULL, 'SAIU PARA ENTREGA'),
(15, 1231, 'SDJIASJDIASOIDJIIAJDOIAWJDIOAWJDIO', '1231', 4, 5, 18, '2022-07-26 20:17:48', NULL, 'SAIU PARA ENTREGA'),
(16, 123, 'WJOIDAJOIWDJIAIWODJAOIWJDOIAWJDIOAWJOIDAWJDOIAWDJOAWJDIAOJDIO', '1231414', 145, 5, 18, '2022-07-26 20:18:49', NULL, 'SAIU PARA ENTREGA');

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
  `data_cadastro` datetime NOT NULL DEFAULT current_timestamp(),
  `is_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `operador`
--

INSERT INTO `operador` (`id`, `nome`, `login`, `senha`, `cpf`, `is_admin`, `is_operator`, `data_cadastro`, `is_active`) VALUES
(1, 'Joao Pedro', 'JoaoPedro', '123456', '41569603820', NULL, 1, '2022-07-07 01:10:20', 1),
(3, 'anthony', 'toin', '123', '1231231313', 0, 1, '2022-07-19 05:18:09', 1),
(4, '', '', '', '', NULL, 0, '0000-00-00 00:00:00', 1),
(5, '', '', '', '', NULL, 0, '0000-00-00 00:00:00', 1),
(6, 'awdawdawdaw', '', '', 'd', NULL, 0, '0000-00-00 00:00:00', 1),
(7, 'awdawdaijodjiao', '', '190238091873', 'ioawjdoiawjdoi', NULL, 0, '0000-00-00 00:00:00', 1),
(8, '', '', '', '', NULL, 0, '0000-00-00 00:00:00', 1),
(9, '', '', '', '', NULL, 0, '0000-00-00 00:00:00', 1),
(10, 'adawd', '', '1234', '13131313', NULL, 0, '0000-00-00 00:00:00', 1),
(11, 'awdawd', '', '1231', '12313', NULL, 0, '0000-00-00 00:00:00', 1),
(12, '', '', '', '', NULL, 0, '0000-00-00 00:00:00', 1),
(13, '', '', '', '', NULL, 0, '0000-00-00 00:00:00', 1),
(14, '', '', '', '', NULL, 0, '0000-00-00 00:00:00', 1),
(15, 'joao', '', '1234', '123', NULL, 0, '0000-00-00 00:00:00', 1),
(16, 'awdawd', '', '123', '123123', NULL, 0, '0000-00-00 00:00:00', 1),
(17, 'teste', '', '1212', '123131', NULL, 0, '0000-00-00 00:00:00', 1),
(18, 'testesteste', '', '1213', '11.231.231/3123-1', NULL, 0, '0000-00-00 00:00:00', 1),
(19, 'anthonymelo', '', '23456', '123.456.623-42', NULL, 0, '0000-00-00 00:00:00', 1),
(20, 'awdawd', '', '12313', '123.131.312-31', NULL, 0, '0000-00-00 00:00:00', 1),
(21, 'oooooo', '', '12345', '139.123.871-88', NULL, 0, '0000-00-00 00:00:00', 1);

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
  ADD KEY `fk_entregador_entregas` (`id_entregador`),
  ADD KEY `fk_operador_entregas` (`id_operador`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT de tabela `entregador`
--
ALTER TABLE `entregador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `entregas`
--
ALTER TABLE `entregas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `operador`
--
ALTER TABLE `operador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `entregas`
--
ALTER TABLE `entregas`
  ADD CONSTRAINT `fk_cliente_entregas` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_entregador_entregas` FOREIGN KEY (`id_entregador`) REFERENCES `entregador` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_operador_entregas` FOREIGN KEY (`id_operador`) REFERENCES `operador` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
