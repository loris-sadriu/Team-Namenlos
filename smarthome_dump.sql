-- Datenbank: `smarthome`
--
CREATE DATABASE IF NOT EXISTS `smarthome` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `smarthome`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `klimawerte`
--

CREATE TABLE `klimawerte` (
  `idklimawerte` int(11) NOT NULL,
  `temperatur` decimal(10,0) DEFAULT NULL,
  `luftfeuchtigkeit` decimal(10,0) DEFAULT NULL,
  `druck` decimal(10,0) DEFAULT NULL,
  `zeitpunkt` datetime DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `klimawerte`
--

INSERT INTO `klimawerte` (`idklimawerte`, `temperatur`, `luftfeuchtigkeit`, `druck`, `zeitpunkt`, `ip`) VALUES
(58, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(59, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(60, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(61, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(62, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(63, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(64, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(65, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(66, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(67, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(68, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(69, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(70, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(71, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(72, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(73, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(74, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(75, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(76, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(77, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(78, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(79, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(80, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(81, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(82, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(83, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(84, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(85, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(86, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(87, '0', '0', '0', '0000-00-00 00:00:00', 'ipa'),
(88, '0', '0', '0', '0000-00-00 00:00:00', 'ipa');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `klimawerte`
--
ALTER TABLE `klimawerte`
  ADD PRIMARY KEY (`idklimawerte`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `klimawerte`
--
ALTER TABLE `klimawerte`
  MODIFY `idklimawerte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;