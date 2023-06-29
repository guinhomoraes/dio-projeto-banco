-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29/06/2023 às 15:19
-- Versão do servidor: 10.4.11-MariaDB
-- Versão do PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projeto-dio`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nome`, `cpf`) VALUES
(1, 'Guilherme', '156156156156'),
(2, 'José', '1591121561251\r\n'),
(3, 'Pedro', '48414514115\r\n'),
(4, 'Maria', '15121841515');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estoque`
--

CREATE TABLE `estoque` (
  `idEstoque` int(11) NOT NULL,
  `local` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `estoque`
--

INSERT INTO `estoque` (`idEstoque`, `local`) VALUES
(1, 'São Paulo - LOJA 1'),
(2, 'São Paulo - LOJA 2'),
(3, 'São Paulo - LOJA 3'),
(4, 'São Paulo - LOJA 4');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estoque_produto`
--

CREATE TABLE `estoque_produto` (
  `idEstoque` int(11) NOT NULL,
  `idProduto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `estoque_produto`
--

INSERT INTO `estoque_produto` (`idEstoque`, `idProduto`) VALUES
(1, 1),
(1, 3),
(1, 5),
(1, 7),
(2, 2),
(2, 4),
(2, 6),
(2, 8),
(3, 1),
(3, 4),
(4, 2),
(4, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `idFornecedor` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `fornecedor`
--

INSERT INTO `fornecedor` (`idFornecedor`, `nome`) VALUES
(1, 'ASUS'),
(2, 'INTEL'),
(3, 'SONY'),
(4, 'APPLE'),
(5, 'MICROSOFT'),
(6, 'CHAIR');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido`
--

CREATE TABLE `pedido` (
  `idPedido` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `pedido`
--

INSERT INTO `pedido` (`idPedido`, `idCliente`, `status`) VALUES
(1, 1, 'ATIVO'),
(2, 2, 'INATIVO'),
(3, 3, 'INATIVO'),
(4, 4, 'ATIVO');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido_produto`
--

CREATE TABLE `pedido_produto` (
  `idProduto` int(11) NOT NULL,
  `idPedido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `pedido_produto`
--

INSERT INTO `pedido_produto` (`idProduto`, `idPedido`) VALUES
(2, 1),
(4, 2),
(6, 3),
(8, 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `idProduto` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`idProduto`, `nome`, `preco`) VALUES
(1, 'Notebook', '5000.00'),
(2, 'PS4', '2500.00'),
(3, 'Celular', '1000.00'),
(4, 'Tablet', '800.00'),
(5, 'Monitor', '500.00'),
(6, 'SSD', '80.00'),
(7, 'Processador I7', '1500.00'),
(8, 'Cadeira Gamer', '700.00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto_fornecedor`
--

CREATE TABLE `produto_fornecedor` (
  `idFornecedor` int(11) NOT NULL,
  `idProduto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `produto_fornecedor`
--

INSERT INTO `produto_fornecedor` (`idFornecedor`, `idProduto`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 3),
(5, 4),
(6, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `terceiro`
--

CREATE TABLE `terceiro` (
  `idTerceiro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `terceiro`
--

INSERT INTO `terceiro` (`idTerceiro`) VALUES
(1),
(2),
(3),
(4),
(5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `terceiro_produto`
--

CREATE TABLE `terceiro_produto` (
  `idTerceiro` int(11) NOT NULL,
  `idProduto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `terceiro_produto`
--

INSERT INTO `terceiro_produto` (`idTerceiro`, `idProduto`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(3, 1),
(3, 2),
(5, 3);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices de tabela `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`idEstoque`);

--
-- Índices de tabela `estoque_produto`
--
ALTER TABLE `estoque_produto`
  ADD KEY `idProduto` (`idProduto`),
  ADD KEY `idEstoque` (`idEstoque`);

--
-- Índices de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`idFornecedor`);

--
-- Índices de tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Índices de tabela `pedido_produto`
--
ALTER TABLE `pedido_produto`
  ADD KEY `idProduto` (`idProduto`),
  ADD KEY `idPedido` (`idPedido`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idProduto`);

--
-- Índices de tabela `produto_fornecedor`
--
ALTER TABLE `produto_fornecedor`
  ADD KEY `idProduto` (`idProduto`),
  ADD KEY `idFornecedor` (`idFornecedor`);

--
-- Índices de tabela `terceiro`
--
ALTER TABLE `terceiro`
  ADD PRIMARY KEY (`idTerceiro`);

--
-- Índices de tabela `terceiro_produto`
--
ALTER TABLE `terceiro_produto`
  ADD KEY `idProduto` (`idProduto`),
  ADD KEY `idTerceiro` (`idTerceiro`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `estoque`
--
ALTER TABLE `estoque`
  MODIFY `idEstoque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `idFornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `idProduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `terceiro`
--
ALTER TABLE `terceiro`
  MODIFY `idTerceiro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `estoque_produto`
--
ALTER TABLE `estoque_produto`
  ADD CONSTRAINT `estoque_produto_ibfk_1` FOREIGN KEY (`idProduto`) REFERENCES `produto` (`idProduto`),
  ADD CONSTRAINT `estoque_produto_ibfk_2` FOREIGN KEY (`idEstoque`) REFERENCES `estoque` (`idEstoque`);

--
-- Restrições para tabelas `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`);

--
-- Restrições para tabelas `pedido_produto`
--
ALTER TABLE `pedido_produto`
  ADD CONSTRAINT `pedido_produto_ibfk_1` FOREIGN KEY (`idProduto`) REFERENCES `produto` (`idProduto`),
  ADD CONSTRAINT `pedido_produto_ibfk_2` FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idPedido`);

--
-- Restrições para tabelas `produto_fornecedor`
--
ALTER TABLE `produto_fornecedor`
  ADD CONSTRAINT `produto_fornecedor_ibfk_1` FOREIGN KEY (`idProduto`) REFERENCES `produto` (`idProduto`),
  ADD CONSTRAINT `produto_fornecedor_ibfk_2` FOREIGN KEY (`idFornecedor`) REFERENCES `fornecedor` (`idFornecedor`);

--
-- Restrições para tabelas `terceiro_produto`
--
ALTER TABLE `terceiro_produto`
  ADD CONSTRAINT `terceiro_produto_ibfk_1` FOREIGN KEY (`idProduto`) REFERENCES `produto` (`idProduto`),
  ADD CONSTRAINT `terceiro_produto_ibfk_2` FOREIGN KEY (`idTerceiro`) REFERENCES `terceiro` (`idTerceiro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
