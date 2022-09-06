-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 24, 2021 at 11:03 AM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `practica2`
--

-- --------------------------------------------------------

--
-- Table structure for table `Caracteristiques`
--

CREATE TABLE `Caracteristiques` (
  `foto` varchar(10) NOT NULL,
  `descripcioPlat` varchar(150) NOT NULL,
  `nomRest` varchar(20) NOT NULL,
  `idPlat` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Caracteristiques`
--

INSERT INTO `Caracteristiques` (`foto`, `descripcioPlat`, `nomRest`, `idPlat`) VALUES
('abrut.png', 'L\'arròs brut és un plat típic mallorquí, que conté arròs acompanyat de verdura, carn i peix.', 'Cal Dimoni', 12345),
('abrut.png', 'L\'arròs brut és un plat típic mallorquí, que conté arròs acompanyat de verdura i carn.', 'Don Caracol', 12345),
('abrut.png', 'L\'arròs brut és un plat típic mallorquí, que conté arròs acompanyat de verdura i carn.', 'Es Cruce', 12345),
('porc.png', 'La porcella mallorquina és una preparació culinària que consisteix a rostir al forn un garrí sencer jove, concretament, en període de lactància.', 'Ca s\'Hereu', 13456),
('paell.png', 'La paella és un guisat d\'arròs, carn i verdures preparat en una paella sobre un foc, siga paeller o fogó', 'Can Pedro', 14567),
('paell.png', 'La paella és un guisat d\'arròs, carn i verdures preparat en una paella sobre un foc, siga paeller o fogó.', 'Es Club', 14567),
('emp.png', 'Una empanada és una fina massa de pa, pasta brisa o pasta de full. El farciment pot incloure carns vermelles o blanques, peix, verdures o fruita.', 'La Parrilla', 15678),
('kofta.png', 'Mandonguilles de carn de vedella amb salsa de tomàquet, ceba i llenties especials', 'Nadia Cocina', 16789),
('manto.png', 'Semblants al raviolis europeus fets al vapor i farcits de carn de vedella, cobert amb iogurt i salsa de tomàquet i dhal (llenties).', 'Afganistan', 17890),
('qurot.png', 'És un plat d’Afganistan semblant al risotto, és un plat ric fet amb arròs de\r\ngra curti, soja, mandonguilles de carn de vedella i formatge.', 'Mantanal', 18902),
('frit.png', 'El frit de porc és un plat amb diverses teades de carn de porc, xuia, etc. A més de verdures.', 'Ca s\'Hereu', 19034),
('pijama.png', 'Postre fet de flan, nata, gelat, fruita amb almívar i nata.', 'Es Club', 23456),
('nat.png', 'Les natilles es tracta d\'una crema elaborada amb llet, rovells d\'ou, sucre i aromes com la vainilla o la llimona.', 'Ca s\'Hereu', 23678);

-- --------------------------------------------------------

--
-- Table structure for table `Ciutat`
--

CREATE TABLE `Ciutat` (
  `nomCiut` varchar(15) NOT NULL,
  `nomZona` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Ciutat`
--

INSERT INTO `Ciutat` (`nomCiut`, `nomZona`) VALUES
('Artà', 'Llevant'),
('Capdepera', 'Llevant'),
('Manacor', 'Llevant'),
('Son Servera', 'Llevant'),
('Son Gotleu', 'Palma'),
('Son Roca', 'Palma'),
('Son Sardina', 'Palma'),
('Son Vida', 'Palma'),
('Biniali', 'Raiguer'),
('Binissalem', 'Raiguer'),
('Consell', 'Raiguer'),
('Inca', 'Raiguer'),
('Santa Maria', 'Raiguer');

-- --------------------------------------------------------

--
-- Table structure for table `Menu`
--

CREATE TABLE `Menu` (
  `idServeiMenu` int(5) NOT NULL,
  `idPlatPrimer` int(5) NOT NULL,
  `idPlatSegon` int(5) NOT NULL,
  `idPlatPostre` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Menu`
--

INSERT INTO `Menu` (`idServeiMenu`, `idPlatPrimer`, `idPlatSegon`, `idPlatPostre`) VALUES
(1234, 14567, 13456, 23456),
(12345, 14567, 13456, 23678),
(23456, 14567, 12345, 23678),
(34567, 19034, 13456, 23678),
(45678, 12345, 13456, 23456),
(54321, 12345, 13456, 23456),
(56789, 12345, 13456, 23456),
(65432, 14567, 19034, 23678),
(67890, 14567, 19034, 23456),
(78901, 15678, 18902, 23678),
(87654, 14567, 13456, 23678),
(90123, 12345, 14567, 23456);

-- --------------------------------------------------------

--
-- Table structure for table `Plat`
--

CREATE TABLE `Plat` (
  `nomPlat` varchar(10) NOT NULL,
  `idPlat` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Plat`
--

INSERT INTO `Plat` (`nomPlat`, `idPlat`) VALUES
('Arròs brut', 12345),
('Porcella', 13456),
('Paella', 14567),
('Empanada', 15678),
('Kofta', 16789),
('Manto', 17890),
('Quroot', 18902),
('Frit ', 19034),
('Pijama', 23456),
('Natilla', 23678);

-- --------------------------------------------------------

--
-- Table structure for table `PlatDelDia`
--

CREATE TABLE `PlatDelDia` (
  `idServeiPlatDelDia` int(5) NOT NULL,
  `idPlat` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PlatDelDia`
--

INSERT INTO `PlatDelDia` (`idServeiPlatDelDia`, `idPlat`) VALUES
(1234, 12345),
(90123, 12345),
(67890, 13456),
(12345, 14567),
(87654, 14567),
(23456, 15678),
(76543, 16789),
(56789, 17890),
(54321, 18902);

-- --------------------------------------------------------

--
-- Table structure for table `Restaurant`
--

CREATE TABLE `Restaurant` (
  `nomRest` varchar(20) NOT NULL,
  `telefon` int(9) NOT NULL,
  `domicili` varchar(40) NOT NULL,
  `numForquilles` int(1) NOT NULL,
  `tipusCuina` varchar(15) NOT NULL,
  `nomCiut` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Restaurant`
--

INSERT INTO `Restaurant` (`nomRest`, `telefon`, `domicili`, `numForquilles`, `tipusCuina`, `nomCiut`) VALUES
('Afganistan', 971457823, 'C/ Mateu Rotger, número 43', 2, 'Afgana', 'Son Roca'),
('Azuma', 971873567, 'C/ Muntanya, número 6', 5, 'Japonesa', 'Inca'),
('Ca s\'Hereu', 971824522, 'C/ Napolitana, número 7', 4, 'Mallorquina', 'Binissalem'),
('Cal Dimoni', 971348673, 'C/ Balaguer, número 32', 2, 'Mallorquina', 'Son Servera'),
('Can Mateu', 971348673, 'C/ Menorca, número 12', 4, 'Mallorquina', 'Binissalem'),
('Can Pedro', 971347345, 'C/ Palma, número 43', 3, 'Mallorquina', 'Manacor'),
('Don Caracol', 971623122, 'C/ Santander, número 34', 5, 'Mallorquina', 'Artà'),
('Es Club', 971256709, 'C/ Fiol, número 9', 5, 'Mallorquina', 'Binissalem'),
('Es Cruce', 971225467, 'C/ Nou, número 2', 4, 'Mallorquina', 'Capdepera'),
('La Parrilla', 971456783, 'C/ Alcúdia, número 34', 5, 'Argentina', 'Son Vida'),
('Los Palillos', 971347689, 'C/ Born, número 45', 2, 'Japonesa', 'Consell'),
('Mantanal', 971346722, 'C/ Tumbet, número 34', 4, 'Afgana', 'Son Gotleu'),
('Nadia Cocina', 971236578, 'C/ Mendez, número 8', 5, 'Afgana', 'Son Sardina'),
('Sushi Bar', 971236789, 'C/ Bartomeu Ordines, número 2', 1, 'Japonesa', 'Santa Maria'),
('Tamashi', 971231245, 'C/ Albert Riera, número 24', 3, 'Japonesa', 'Biniali');

-- --------------------------------------------------------

--
-- Table structure for table `Servei`
--

CREATE TABLE `Servei` (
  `preu` double(4,2) NOT NULL,
  `franja` varchar(8) NOT NULL,
  `data` date NOT NULL,
  `cafè` tinyint(1) NOT NULL,
  `beguda` tinyint(1) NOT NULL,
  `idServei` int(5) NOT NULL,
  `nomRest` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Servei`
--

INSERT INTO `Servei` (`preu`, `franja`, `data`, `cafè`, `beguda`, `idServei`, `nomRest`) VALUES
(9.90, 'vespre', '2021-03-10', 0, 1, 1234, 'La Parrilla'),
(15.75, 'mig dia', '2021-03-12', 1, 1, 12345, 'Es Club'),
(12.50, 'mig dia', '2021-04-13', 0, 1, 23456, 'Can Pedro'),
(12.00, 'mig dia', '2021-05-01', 1, 1, 34567, 'Don Caracol'),
(17.50, 'mig dia', '2021-05-01', 1, 1, 45678, 'Es Cruce'),
(12.50, 'vespre', '2021-05-13', 1, 1, 54321, 'Afganistan'),
(13.95, 'mig dia', '2021-05-01', 1, 0, 56789, 'Cal Dimoni'),
(15.80, 'vespre', '2021-05-05', 1, 1, 65432, 'Mantanal'),
(16.80, 'vespre', '2021-03-31', 1, 1, 67890, 'Ca s\'Hereu'),
(18.00, 'mig dia', '2021-04-19', 1, 1, 76543, 'Nadia Cocina'),
(5.00, 'matí', '2021-05-05', 0, 0, 78901, 'Nadia Cocina'),
(15.00, 'vespre', '2021-05-06', 1, 1, 87654, 'Can Mateu'),
(4.00, 'matí', '2021-05-02', 0, 0, 89012, 'Cal Dimoni'),
(12.20, 'vespre', '2021-05-02', 0, 1, 90123, 'La Parrilla');

-- --------------------------------------------------------

--
-- Table structure for table `TipusCuina`
--

CREATE TABLE `TipusCuina` (
  `tipusCuina` varchar(15) NOT NULL,
  `tipusCuinaPare` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TipusCuina`
--

INSERT INTO `TipusCuina` (`tipusCuina`, `tipusCuinaPare`) VALUES
('Afgana', 'Asiàtica'),
('Argentina', 'Americana'),
('Japonesa', 'Asiàtica'),
('Mallorquina', 'Europea');

-- --------------------------------------------------------

--
-- Table structure for table `Valoracions`
--

CREATE TABLE `Valoracions` (
  `puntuacio` int(5) NOT NULL,
  `data` date NOT NULL,
  `idValoracio` int(5) NOT NULL,
  `idServei` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Valoracions`
--

INSERT INTO `Valoracions` (`puntuacio`, `data`, `idValoracio`, `idServei`) VALUES
(5, '2021-05-05', 12345, 78901),
(2, '2021-03-16', 23456, 54321),
(4, '2021-03-01', 34567, 65432),
(4, '2021-03-26', 45678, 67890),
(5, '2021-03-15', 56789, 34567),
(3, '2021-05-04', 67890, 23456);

-- --------------------------------------------------------

--
-- Table structure for table `Zona`
--

CREATE TABLE `Zona` (
  `nomZona` varchar(15) NOT NULL,
  `descripcioZona` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Zona`
--

INSERT INTO `Zona` (`nomZona`, `descripcioZona`) VALUES
('Llevant', 'Llevant és una comarca mallorquina a l\\\'est de l\\\'illa de Mallorca. Hi trobem turons i les muntanyes, els penya-segats i les platges, les badies.'),
('Palma', 'Palma, és un municipi i una ciutat de l\'illa de Mallorca, capital de la comunitat autònoma de les Illes Balears.'),
('Raiguer', 'El Raiguer és una comarca mallorquina al centre-nord de l\'illa, estesa paral·lelament a la Serra de Tramuntana des de Marratxí fins a Alcúdia.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Caracteristiques`
--
ALTER TABLE `Caracteristiques`
  ADD PRIMARY KEY (`idPlat`,`nomRest`),
  ADD KEY `nomRest` (`nomRest`);

--
-- Indexes for table `Ciutat`
--
ALTER TABLE `Ciutat`
  ADD PRIMARY KEY (`nomCiut`),
  ADD KEY `nomZona` (`nomZona`);

--
-- Indexes for table `Menu`
--
ALTER TABLE `Menu`
  ADD PRIMARY KEY (`idServeiMenu`),
  ADD KEY `idPlatPrimer` (`idPlatPrimer`),
  ADD KEY `idPlatSegon` (`idPlatSegon`),
  ADD KEY `idPostre` (`idPlatPostre`);

--
-- Indexes for table `Plat`
--
ALTER TABLE `Plat`
  ADD PRIMARY KEY (`idPlat`);

--
-- Indexes for table `PlatDelDia`
--
ALTER TABLE `PlatDelDia`
  ADD PRIMARY KEY (`idServeiPlatDelDia`),
  ADD KEY `idPlat` (`idPlat`);

--
-- Indexes for table `Restaurant`
--
ALTER TABLE `Restaurant`
  ADD PRIMARY KEY (`nomRest`),
  ADD KEY `tipusCuina` (`tipusCuina`),
  ADD KEY `nomCiut` (`nomCiut`);

--
-- Indexes for table `Servei`
--
ALTER TABLE `Servei`
  ADD PRIMARY KEY (`idServei`),
  ADD KEY `nomRest` (`nomRest`);

--
-- Indexes for table `TipusCuina`
--
ALTER TABLE `TipusCuina`
  ADD PRIMARY KEY (`tipusCuina`);

--
-- Indexes for table `Valoracions`
--
ALTER TABLE `Valoracions`
  ADD PRIMARY KEY (`idValoracio`),
  ADD KEY `idServei` (`idServei`);

--
-- Indexes for table `Zona`
--
ALTER TABLE `Zona`
  ADD PRIMARY KEY (`nomZona`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Caracteristiques`
--
ALTER TABLE `Caracteristiques`
  ADD CONSTRAINT `caracteristiques_ibfk_1` FOREIGN KEY (`nomRest`) REFERENCES `Restaurant` (`nomRest`),
  ADD CONSTRAINT `caracteristiques_ibfk_2` FOREIGN KEY (`idPlat`) REFERENCES `Plat` (`idPlat`);

--
-- Constraints for table `Ciutat`
--
ALTER TABLE `Ciutat`
  ADD CONSTRAINT `ciutat_ibfk_1` FOREIGN KEY (`nomZona`) REFERENCES `Zona` (`nomZona`);

--
-- Constraints for table `Menu`
--
ALTER TABLE `Menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`idServeiMenu`) REFERENCES `Servei` (`idServei`),
  ADD CONSTRAINT `menu_ibfk_2` FOREIGN KEY (`idPlatPrimer`) REFERENCES `Plat` (`idPlat`),
  ADD CONSTRAINT `menu_ibfk_3` FOREIGN KEY (`idPlatSegon`) REFERENCES `Plat` (`idPlat`),
  ADD CONSTRAINT `menu_ibfk_4` FOREIGN KEY (`idPlatPostre`) REFERENCES `Plat` (`idPlat`);

--
-- Constraints for table `PlatDelDia`
--
ALTER TABLE `PlatDelDia`
  ADD CONSTRAINT `platdeldia_ibfk_1` FOREIGN KEY (`idServeiPlatDelDia`) REFERENCES `servei` (`idServei`),
  ADD CONSTRAINT `platdeldia_ibfk_2` FOREIGN KEY (`idPlat`) REFERENCES `Plat` (`idPlat`);

--
-- Constraints for table `Restaurant`
--
ALTER TABLE `Restaurant`
  ADD CONSTRAINT `restaurant_ibfk_1` FOREIGN KEY (`tipusCuina`) REFERENCES `TipusCuina` (`tipusCuina`),
  ADD CONSTRAINT `restaurant_ibfk_2` FOREIGN KEY (`nomCiut`) REFERENCES `Ciutat` (`nomCiut`);

--
-- Constraints for table `Servei`
--
ALTER TABLE `Servei`
  ADD CONSTRAINT `servei_ibfk_1` FOREIGN KEY (`nomRest`) REFERENCES `Restaurant` (`nomRest`);

--
-- Constraints for table `Valoracions`
--
ALTER TABLE `Valoracions`
  ADD CONSTRAINT `valoracions_ibfk_1` FOREIGN KEY (`idServei`) REFERENCES `Servei` (`idServei`);
