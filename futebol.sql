-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 21-Nov-2018 às 22:44
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `futebol`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cartoes`
--

CREATE TABLE `cartoes` (
  `idCartao` int(11) NOT NULL,
  `corCartao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cartoes`
--

INSERT INTO `cartoes` (`idCartao`, `corCartao`) VALUES
(1, 'vermelho'),
(2, 'amarelo'),
(3, 'branco');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gols`
--

CREATE TABLE `gols` (
  `idGol` int(11) NOT NULL,
  `nomeGol` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `gols`
--

INSERT INTO `gols` (`idGol`, `nomeGol`) VALUES
(1, 'placa'),
(2, 'voleio'),
(3, 'cobertura'),
(4, 'escanteio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogadores`
--

CREATE TABLE `jogadores` (
  `idJogador` int(11) NOT NULL,
  `nomeJogador` varchar(100) NOT NULL,
  `idadeJogador` date NOT NULL,
  `rgJogador` int(11) UNSIGNED ZEROFILL NOT NULL,
  `statusJogador` int(11) NOT NULL,
  `totalAmarelo` int(11) NOT NULL,
  `totalVermelho` int(11) NOT NULL,
  `totalGol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `jogadores`
--

INSERT INTO `jogadores` (`idJogador`, `nomeJogador`, `idadeJogador`, `rgJogador`, `statusJogador`, `totalAmarelo`, `totalVermelho`, `totalGol`) VALUES
(1, 'Alisson Lima De Souza', '2018-11-03', 04159193713, 0, 0, 8, 17),
(2, 'sergio Costa de lima', '1982-03-12', 04294967295, 0, 0, 4, 0),
(3, 'mario', '1980-04-21', 04294967295, 0, 0, 0, 8),
(6, 'JoÃ£o Silva', '2018-11-03', 00000123543, 0, 0, 3, 19),
(7, 'Matheus', '2018-08-27', 00008876765, 0, 0, 3, 6),
(8, 'Thiago Silva', '2018-12-27', 00000023423, 0, 0, 4, 2),
(9, 'AdÃ£o Pereira', '1992-12-12', 00000234456, 0, 0, 1, 27),
(10, 'Rui Felipe', '1985-02-13', 00000234234, 0, 0, 3, 10),
(11, 'Nando Silva', '2018-11-03', 01233453453, 0, 0, 0, 20),
(12, 'roberto thales', '2018-08-27', 00002345235, 0, 0, 3, 9),
(13, 'marcos macedo oliveira', '2018-08-27', 00452352354, 0, 12, 5, 3),
(14, 'marciel pereira', '2018-08-30', 00000013213, 0, 0, 1, 0),
(15, 'JoÃ£o cosme de araujo', '1984-02-05', 00125487549, 0, 0, 1, 0),
(16, 'Fernando magalhaes', '2018-09-28', 03453534534, 0, 0, 2, 0),
(17, 'Rui costa', '2018-10-10', 04294967295, 0, 0, 1, 0),
(18, 'Beto Rui', '2018-10-23', 00000002342, 0, 0, 2, 0),
(21, 'dario', '2018-10-30', 00000001234, 0, 0, 0, 11),
(22, 'Julian', '2018-11-21', 00000042324, 0, 0, 1, 8),
(23, 'Lionel', '2018-11-21', 00000000645, 0, 0, 0, 4),
(24, 'Lothar', '2018-11-16', 00000035789, 0, 0, 1, 2),
(25, 'Luka', '2018-11-04', 00415919234, 0, 0, 1, 2),
(26, 'Neymar', '2018-11-08', 00000041345, 0, 0, 0, 0),
(27, 'RomÃ¡rio', '2018-11-21', 00000007896, 0, 0, 0, 0),
(28, 'Salvatore', '2018-11-21', 00000000345, 0, 0, 0, 0),
(29, 'Santiago', '2018-11-21', 00000000456, 0, 0, 1, 0),
(30, 'Wayne', '2018-11-21', 00000012380, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `placar_partidas`
--

CREATE TABLE `placar_partidas` (
  `idPlacarPartidas` int(11) NOT NULL,
  `idTimeHasTorneio` int(11) NOT NULL,
  `idTime` int(11) NOT NULL,
  `totalGol` int(11) NOT NULL,
  `pontoPositivo` int(11) NOT NULL,
  `golNegativo` int(11) NOT NULL,
  `vitoria` int(11) NOT NULL,
  `derrota` int(11) NOT NULL,
  `empate` int(11) NOT NULL,
  `totalPonto` int(11) NOT NULL,
  `saldoGol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `placar_partidas`
--

INSERT INTO `placar_partidas` (`idPlacarPartidas`, `idTimeHasTorneio`, `idTime`, `totalGol`, `pontoPositivo`, `golNegativo`, `vitoria`, `derrota`, `empate`, `totalPonto`, `saldoGol`) VALUES
(1, 1, 1, 20, 3, 1, 1, 0, 0, 3, 19),
(2, 1, 2, 1, 0, 20, 0, 1, 0, 0, -19),
(3, 6, 1, 1, 0, 9, 0, 1, 0, 0, -8),
(4, 6, 2, 9, 3, 1, 1, 0, 0, 3, 8),
(5, 2, 5, 19, 3, 7, 1, 0, 0, 3, 12),
(6, 2, 3, 7, 0, 19, 0, 1, 0, 0, -12),
(7, 3, 1, 0, 0, 0, 0, 0, 1, 0, 0),
(8, 3, 6, 0, 0, 0, 0, 0, 1, 0, 0),
(9, 5, 3, 1, 0, 20, 0, 1, 0, 0, -19),
(10, 5, 2, 20, 3, 1, 1, 0, 0, 6, 19),
(11, 4, 1, 7, 3, 3, 1, 0, 0, 6, 4),
(12, 4, 4, 3, 0, 7, 0, 1, 0, 0, -4),
(13, 10, 8, 9, 0, 10, 0, 1, 0, 0, -1),
(14, 10, 4, 10, 3, 9, 1, 0, 0, 3, 1),
(15, 7, 8, 3, 3, 0, 1, 0, 0, 3, 3),
(16, 7, 7, 0, 0, 3, 0, 1, 0, 0, -3),
(17, 8, 6, 3, 0, 10, 0, 1, 0, 0, -7),
(18, 8, 4, 10, 3, 3, 1, 0, 0, 6, 7),
(19, 11, 8, 4, 0, 9, 0, 1, 0, 0, -5),
(20, 11, 2, 9, 3, 4, 1, 0, 0, 9, 5),
(21, 9, 4, 5, 0, 7, 0, 1, 0, 0, -2),
(22, 9, 2, 7, 3, 5, 1, 0, 0, 12, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `times`
--

CREATE TABLE `times` (
  `idTime` int(11) NOT NULL,
  `nomeTime` varchar(100) NOT NULL,
  `totalGols` int(11) NOT NULL,
  `totalPonto` int(11) NOT NULL,
  `totalVitoria` int(11) NOT NULL,
  `totalEmpate` int(11) NOT NULL,
  `totalDerrota` int(11) NOT NULL,
  `golPositivo` int(11) NOT NULL,
  `golContra` int(11) NOT NULL,
  `saldoGol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `times`
--

INSERT INTO `times` (`idTime`, `nomeTime`, `totalGols`, `totalPonto`, `totalVitoria`, `totalEmpate`, `totalDerrota`, `golPositivo`, `golContra`, `saldoGol`) VALUES
(1, 'Sambaitiba', 28, 6, 2, 1, 1, 28, 13, 15),
(2, 'Borussia', 46, 12, 4, 0, 1, 46, 31, 15),
(3, ' River ', 8, 0, 0, 0, 2, 8, 39, -31),
(4, 'Dom Bosco', 28, 6, 2, 0, 2, 28, 26, 2),
(5, 'Mangueirinha', 19, 3, 1, 0, 0, 19, 7, 12),
(6, 'Ctb', 3, 0, 0, 1, 1, 3, 10, -7),
(7, 'Real Madri', 0, 0, 0, 0, 1, 0, 3, -3),
(8, 'Milan', 16, 3, 1, 0, 2, 16, 19, -3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `times_has_jogadores`
--

CREATE TABLE `times_has_jogadores` (
  `idTimesHasJogadores` int(11) NOT NULL,
  `idTime` int(11) NOT NULL,
  `idJogador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `times_has_jogadores`
--

INSERT INTO `times_has_jogadores` (`idTimesHasJogadores`, `idTime`, `idJogador`) VALUES
(13, 2, 9),
(21, 3, 7),
(22, 3, 8),
(23, 3, 14),
(24, 4, 11),
(25, 5, 12),
(26, 2, 6),
(31, 6, 15),
(32, 4, 3),
(33, 5, 10),
(34, 6, 2),
(35, 7, 16),
(36, 7, 17),
(37, 7, 18),
(39, 1, 1),
(41, 1, 21),
(42, 6, 13),
(43, 8, 22),
(44, 8, 23),
(45, 8, 24),
(46, 8, 25),
(47, 1, 26),
(49, 2, 28),
(50, 4, 29),
(51, 4, 30),
(52, 4, 27);

-- --------------------------------------------------------

--
-- Estrutura da tabela `times_has_torneios`
--

CREATE TABLE `times_has_torneios` (
  `idTimeHasTorneiro` int(11) NOT NULL,
  `idTime` int(11) NOT NULL,
  `idTimeB` int(11) NOT NULL,
  `idTorneiro` int(11) NOT NULL,
  `dataJogo` date NOT NULL,
  `horaJogo` time NOT NULL,
  `statusLancamento` int(11) NOT NULL,
  `dataLancamento` date NOT NULL,
  `horaLancamento` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `times_has_torneios`
--

INSERT INTO `times_has_torneios` (`idTimeHasTorneiro`, `idTime`, `idTimeB`, `idTorneiro`, `dataJogo`, `horaJogo`, `statusLancamento`, `dataLancamento`, `horaLancamento`) VALUES
(1, 1, 2, 1, '2018-11-16', '15:15:00', 1, '2018-11-21', '11:57:01'),
(2, 5, 3, 1, '2018-11-21', '18:50:00', 1, '2018-11-21', '12:35:42'),
(3, 1, 6, 1, '2018-11-22', '15:15:00', 1, '2018-11-21', '12:35:59'),
(4, 1, 4, 1, '2018-11-21', '15:15:00', 1, '2018-11-21', '12:38:05'),
(5, 3, 2, 1, '2018-11-23', '15:16:00', 1, '2018-11-21', '12:36:50'),
(6, 1, 2, 1, '2018-11-21', '12:13:00', 1, '2018-11-21', '12:03:01'),
(7, 8, 7, 1, '2018-11-23', '15:15:00', 1, '2018-11-21', '19:08:23'),
(8, 6, 4, 1, '2018-11-15', '21:20:00', 1, '2018-11-21', '19:09:38'),
(9, 4, 2, 1, '2018-11-29', '21:20:00', 1, '2018-11-21', '19:13:06'),
(10, 8, 4, 1, '2018-11-29', '20:20:00', 1, '2018-11-21', '19:06:12'),
(11, 8, 2, 1, '2018-12-12', '22:00:00', 1, '2018-11-21', '19:10:49');

-- --------------------------------------------------------

--
-- Estrutura da tabela `time_has_torneio_has_cartoes`
--

CREATE TABLE `time_has_torneio_has_cartoes` (
  `idTimeHasTorneiroHasCartao` int(11) NOT NULL,
  `idTimeHasTorneio` int(11) NOT NULL,
  `idCartao` int(11) NOT NULL,
  `IdJogador` int(11) NOT NULL,
  `quantidadeCartoes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `time_has_torneio_has_cartoes`
--

INSERT INTO `time_has_torneio_has_cartoes` (`idTimeHasTorneiroHasCartao`, `idTimeHasTorneio`, `idCartao`, `IdJogador`, `quantidadeCartoes`) VALUES
(5, 11, 2, 9, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `time_has_torneio_has_gols`
--

CREATE TABLE `time_has_torneio_has_gols` (
  `idTimeHasTorneioHasGol` int(11) NOT NULL,
  `idTimeHasTorneio` int(11) NOT NULL,
  `idGol` int(11) NOT NULL,
  `IdJogador` int(11) NOT NULL,
  `quantidadeGol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `time_has_torneio_has_gols`
--

INSERT INTO `time_has_torneio_has_gols` (`idTimeHasTorneioHasGol`, `idTimeHasTorneio`, `idGol`, `IdJogador`, `quantidadeGol`) VALUES
(1, 1, 1, 1, 10),
(2, 1, 1, 21, 10),
(3, 1, 1, 9, 1),
(4, 6, 1, 1, 1),
(5, 6, 1, 6, 9),
(6, 2, 1, 12, 9),
(7, 2, 1, 10, 10),
(8, 2, 1, 7, 6),
(9, 2, 1, 8, 1),
(10, 5, 1, 8, 1),
(11, 5, 1, 9, 10),
(12, 5, 1, 6, 10),
(13, 4, 1, 1, 6),
(14, 4, 1, 21, 1),
(15, 4, 1, 3, 3),
(16, 10, 1, 22, 6),
(17, 10, 1, 23, 1),
(18, 10, 1, 25, 2),
(19, 10, 1, 11, 10),
(20, 7, 1, 23, 3),
(21, 8, 1, 13, 3),
(22, 8, 1, 11, 10),
(23, 11, 1, 22, 2),
(24, 11, 1, 24, 2),
(25, 11, 1, 9, 9),
(26, 9, 1, 3, 5),
(27, 9, 1, 9, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `torneios`
--

CREATE TABLE `torneios` (
  `idTorneio` int(11) NOT NULL,
  `nomeTorneio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `torneios`
--

INSERT INTO `torneios` (`idTorneio`, `nomeTorneio`) VALUES
(1, 'Copa Amajal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cartoes`
--
ALTER TABLE `cartoes`
  ADD PRIMARY KEY (`idCartao`);

--
-- Indexes for table `gols`
--
ALTER TABLE `gols`
  ADD PRIMARY KEY (`idGol`);

--
-- Indexes for table `jogadores`
--
ALTER TABLE `jogadores`
  ADD PRIMARY KEY (`idJogador`);

--
-- Indexes for table `placar_partidas`
--
ALTER TABLE `placar_partidas`
  ADD PRIMARY KEY (`idPlacarPartidas`),
  ADD KEY `idTimeHasTorneio` (`idTimeHasTorneio`),
  ADD KEY `idTime` (`idTime`);

--
-- Indexes for table `times`
--
ALTER TABLE `times`
  ADD PRIMARY KEY (`idTime`);

--
-- Indexes for table `times_has_jogadores`
--
ALTER TABLE `times_has_jogadores`
  ADD PRIMARY KEY (`idTimesHasJogadores`),
  ADD UNIQUE KEY `idJogador` (`idJogador`),
  ADD KEY `idTime` (`idTime`),
  ADD KEY `idJogador_2` (`idJogador`);

--
-- Indexes for table `times_has_torneios`
--
ALTER TABLE `times_has_torneios`
  ADD PRIMARY KEY (`idTimeHasTorneiro`),
  ADD KEY `idTime` (`idTime`),
  ADD KEY `idTorneiro` (`idTorneiro`),
  ADD KEY `idTimeB` (`idTimeB`);

--
-- Indexes for table `time_has_torneio_has_cartoes`
--
ALTER TABLE `time_has_torneio_has_cartoes`
  ADD PRIMARY KEY (`idTimeHasTorneiroHasCartao`),
  ADD KEY `idCartao` (`idCartao`),
  ADD KEY `IdJogador` (`IdJogador`),
  ADD KEY `idTimeHasTorneio` (`idTimeHasTorneio`);

--
-- Indexes for table `time_has_torneio_has_gols`
--
ALTER TABLE `time_has_torneio_has_gols`
  ADD PRIMARY KEY (`idTimeHasTorneioHasGol`),
  ADD KEY `idTimeHasTorneio` (`idTimeHasTorneio`),
  ADD KEY `idGol` (`idGol`),
  ADD KEY `IdJogador` (`IdJogador`);

--
-- Indexes for table `torneios`
--
ALTER TABLE `torneios`
  ADD PRIMARY KEY (`idTorneio`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cartoes`
--
ALTER TABLE `cartoes`
  MODIFY `idCartao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `gols`
--
ALTER TABLE `gols`
  MODIFY `idGol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `jogadores`
--
ALTER TABLE `jogadores`
  MODIFY `idJogador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `placar_partidas`
--
ALTER TABLE `placar_partidas`
  MODIFY `idPlacarPartidas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `times`
--
ALTER TABLE `times`
  MODIFY `idTime` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `times_has_jogadores`
--
ALTER TABLE `times_has_jogadores`
  MODIFY `idTimesHasJogadores` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `times_has_torneios`
--
ALTER TABLE `times_has_torneios`
  MODIFY `idTimeHasTorneiro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `time_has_torneio_has_cartoes`
--
ALTER TABLE `time_has_torneio_has_cartoes`
  MODIFY `idTimeHasTorneiroHasCartao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `time_has_torneio_has_gols`
--
ALTER TABLE `time_has_torneio_has_gols`
  MODIFY `idTimeHasTorneioHasGol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `torneios`
--
ALTER TABLE `torneios`
  MODIFY `idTorneio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `placar_partidas`
--
ALTER TABLE `placar_partidas`
  ADD CONSTRAINT `placar_partidas_ibfk_1` FOREIGN KEY (`idTimeHasTorneio`) REFERENCES `times_has_torneios` (`idTimeHasTorneiro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `placar_partidas_ibfk_2` FOREIGN KEY (`idTime`) REFERENCES `times` (`idTime`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `times_has_jogadores`
--
ALTER TABLE `times_has_jogadores`
  ADD CONSTRAINT `times_has_jogadores_ibfk_1` FOREIGN KEY (`idTime`) REFERENCES `times` (`idTime`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `times_has_jogadores_ibfk_2` FOREIGN KEY (`idJogador`) REFERENCES `jogadores` (`idJogador`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `times_has_torneios`
--
ALTER TABLE `times_has_torneios`
  ADD CONSTRAINT `times_has_torneios_ibfk_1` FOREIGN KEY (`idTime`) REFERENCES `times` (`idTime`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `times_has_torneios_ibfk_2` FOREIGN KEY (`idTorneiro`) REFERENCES `torneios` (`idTorneio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `times_has_torneios_ibfk_3` FOREIGN KEY (`idTimeB`) REFERENCES `times` (`idTime`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `time_has_torneio_has_cartoes`
--
ALTER TABLE `time_has_torneio_has_cartoes`
  ADD CONSTRAINT `time_has_torneio_has_cartoes_ibfk_1` FOREIGN KEY (`idCartao`) REFERENCES `cartoes` (`idCartao`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `time_has_torneio_has_cartoes_ibfk_2` FOREIGN KEY (`idTimeHasTorneio`) REFERENCES `times_has_torneios` (`idTimeHasTorneiro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `time_has_torneio_has_gols`
--
ALTER TABLE `time_has_torneio_has_gols`
  ADD CONSTRAINT `time_has_torneio_has_gols_ibfk_1` FOREIGN KEY (`idGol`) REFERENCES `gols` (`idGol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `time_has_torneio_has_gols_ibfk_2` FOREIGN KEY (`IdJogador`) REFERENCES `jogadores` (`idJogador`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `time_has_torneio_has_gols_ibfk_3` FOREIGN KEY (`idTimeHasTorneio`) REFERENCES `times_has_torneios` (`idTimeHasTorneiro`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
