-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 29-01-2022 a las 23:24:37
-- Versión del servidor: 10.3.32-MariaDB-cll-lve
-- Versión de PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `colegion_1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sw_usuario`
--

CREATE TABLE `sw_usuario` (
  `id_usuario` int(11) NOT NULL,
  `id_periodo_lectivo` int(11) NOT NULL,
  `id_perfil` int(11) NOT NULL,
  `us_titulo` varchar(8) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `us_apellidos` varchar(32) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `us_nombres` varchar(32) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `us_shortname` varchar(45) NOT NULL,
  `us_fullname` varchar(64) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `us_login` varchar(24) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `us_password` varchar(64) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `us_foto` varchar(100) NOT NULL,
  `us_genero` varchar(1) NOT NULL,
  `us_activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sw_usuario`
--

INSERT INTO `sw_usuario` (`id_usuario`, `id_periodo_lectivo`, `id_perfil`, `us_titulo`, `us_apellidos`, `us_nombres`, `us_shortname`, `us_fullname`, `us_login`, `us_password`, `us_foto`, `us_genero`, `us_activo`) VALUES
(1, 1, 1, 'Ing.', 'Peñaherrera Escobar', 'Gonzalo Nicolás', 'Ing. Gonzalo Peñaherrera', 'Peñaherrera Escobar Gonzalo Nicolás', 'ADMINISTRADOR', 'WtiObwUU0MFeLD0Z7UyJWCEUQBMoG1iPknS6i3HF6cs=', '1036192776.jpg', 'M', 1),
(2, 1, 2, 'Lic.', 'Salazar Ordoñez', 'Alicia', 'Lic. Alicia Salazar', 'Salazar Ordoñez Alicia', 'ALICIAS', 'tXHrcb5DZrDXITM7MhUV/vAdfMphUky1NizH6NQ0UxI=', '1262889970.jpg', 'F', 1),
(3, 1, 2, 'Dr.', 'Enríquez Martínez', 'Carlos Alberto', 'Dr. Carlos Enriquez', 'Enríquez Martínez Carlos Alberto', 'CARLOSE', 'o6nJPLDoyAFl3rcOgixM86hdjvFi8lnRElIpFhHybbo=', 'teacher-male-avatar.png', 'M', 1),
(6, 1, 2, 'Tlgo.', 'Cabascango Herrera', 'Milton Fabián', 'Tlgo. Milton Cabascango', 'Cabascango Herrera Milton Fabián', 'MILTONC', 'NC737WPy9brG5VhJAWGV8ni8BQmN9ZaXArMhaO6PzCg=', '2068678906.jpg', 'M', 1),
(7, 1, 2, 'Tlgo.', 'Peñafiel López', 'Diego Fernando', 'Tlgo. Diego Peñafiel', 'Peñafiel López Diego Fernando', 'diegop', 'rzK/hJmkqY/E1cYVR4dMWA7vwzoqFnTB4ocd7m3M43w=', '1401425242.png', 'M', 0),
(10, 1, 2, 'Msc.', 'Proaño Estrella', 'Wilson Eduardo', 'Msc. Wilson Proaño', 'Proaño Estrella Wilson Eduardo', 'wilsonp', '0TD+BHw/Ad8PkuQz6LTv4YP6ysPeyriYPXfJBovsWJE=', '126706935.jpg', 'M', 1),
(13, 1, 2, 'Mg.', 'Barragán García', 'Mirian', 'Mg. Mirian Barragán', 'Barragán García Mirian', 'MIRIANB', 'WCeaiy+vLMtk2ypwd88JT/2P8X5x9LShyO/NkxZdojk=', '1471992448.png', 'F', 0),
(15, 1, 2, 'Dr.', 'Guamán Calderón', 'Luis Alfredo', 'Dr. Luis Guamán', 'Guamán Calderón Luis Alfredo', 'LUISG', 'om3pB3fARsW4qgBtBPtMsPoOq+yWaHkN9NUnAjny8as=', 'teacher-male-avatar.png', 'M', 1),
(19, 1, 2, 'Lic.', 'Cedeño Zambrano', 'Edith Monserrate', 'Lic. Edith Cedeño', 'Cedeño Zambrano Edith Monserrate', 'EDITHC', '7Mae+vBBtf0P8SdmXlgPMUckSkIPRYs9fpoGlQcobEU=', '201373202.jpg', 'F', 1),
(20, 1, 2, 'Lic.', 'Montenegro Yépez', 'Jaime Efrén', 'Lic. Jaime Montenegro', 'Montenegro Yépez Jaime Efrén', 'EFRENM', 's0coLjndUJwv74KY/SjyHOXfROS+bmCVQxxOjEDphdg=', '532475779.jpg', 'M', 1),
(21, 1, 2, 'Lic.', 'Mejía Segarra', 'Rómulo Oswaldo', 'Lic. Rómulo Mejía', 'Mejía Segarra Rómulo Oswaldo', 'ROMULOM', 'PUHZvdtioTYGpCxlS5pKWd60deFLDQzsSF1iTmcYzjs=', '802050108.jpg', 'M', 1),
(24, 1, 2, 'Lic.', 'Noguera Moscoso', 'Patricia Gimena', 'Lic. Patricia Noguera', 'Noguera Moscoso Patricia Gimena', 'PATRICIAN', 'cmV+kp2KOU+kE1TOhixpWfhvr65M21Z42RSnFf2aVis=', '1651096835.png', 'F', 0),
(26, 1, 2, 'Lic.', 'Salgado Araujo', 'Rosario', 'Lic. Rosario Salgado', 'Salgado Araujo Rosario', 'ROSARIOS', '55uupFaT01KlgWCY3k37zlKDfYLxLaWpo3PVTZf/eHA=', '1447951704.png', 'F', 1),
(36, 1, 5, 'Msc.', 'Caraguay Prócel', 'Carlos Hugo', 'Msc. Carlos Caraguay', 'Caraguay Prócel Carlos Hugo', 'CARLOSC', '6yIN+YXhLMSox6287qd60tfS8KoK+vcAKLSrM5fkjBo=', 'teacher-male-avatar.png', 'M', 0),
(39, 1, 6, 'Msc.', 'Cuyo Maigua', 'Edison Wilfrido', 'Msc. Edison Cuyo', 'Cuyo Maigua Edison Wilfrido', 'edisonc', 'X+Ve3aHrlWQVWMUAAKNo6utBd+BspS3v7wgCxzR2NMs=', 'teacher-male-avatar.png', 'M', 0),
(40, 1, 2, 'Lic.', 'Quevedo Barrezueta', 'Alfonso Miguel', 'Lic. Alfonso Quevedo', 'Quevedo Barrezueta Alfonso Miguel', 'ALFONSOQ', 'F060XhDe5/eXdj6LfZoIgBRI4x08P1BCXboLEEMLs3Q=', '262013955.jpg', 'M', 1),
(42, 2, 2, 'Msc.', 'Pilataxi Zhinín', 'Ana Lucía', '', 'Pilataxi Zhinín Ana Lucía', 'ANAP', '0QzfhwZlWyCrHtnT3Ib2s+0xjN7HTnnAPgAR9y4YoWY=', 'teacher-female-avatar.png', 'M', 0),
(43, 2, 2, 'Ing.', 'Erazo López', 'Inés Alexandra', '', 'Erazo López Inés Alexandra', 'inese', 'U8F36hkf8hxj6j+BhsHaX4Bcyjt3uLniCvJ5+jF+4GM=', '702054326.png', 'F', 0),
(68, 3, 2, 'Lic.', 'Calero Navarrete', 'Elmo Eduardo', 'Lic. Elmo Calero', 'Calero Navarrete Elmo Eduardo', 'elmoc', '9iBymsu2VElv3Rd/75kp6gWd9DbFcjJrA5/ndJZz3K0=', '2031728500.jpg', 'M', 1),
(71, 4, 2, 'Msc.', 'Rosero Medina', 'Roberto Hernán', 'Msc. Roberto Rosero', 'Rosero Medina Roberto Hernán', 'robertos', 'rL2o4KP8gn7OXvVZoKsZpvqa3vWHfxdjuxQDfTmj0gE=', '111935608.jpg', 'M', 1),
(73, 4, 2, 'Lic.', 'Zambrano Cedeño', 'Walter Adbón', 'Lic. Walter Zambrano', 'Zambrano Cedeño Walter Adbón', 'walterz', 'HOF3XmX2ucfPgpGSe56heySaYMcp9W1TX9H8ZyQtgRI=', '1171235139.jpg', 'M', 1),
(75, 4, 2, 'Lic.', 'Guerrero Onofre', 'Edwin Marcelo', '', 'Guerrero Onofre Edwin Marcelo', 'edwing', '2a5WIlC/Wdb6JUdR5flmOoWLraRG+c9IE/TGCfM4e1g=', 'teacher-male-avatar.png', 'M', 0),
(586, 5, 13, 'Ps.Cl.', 'Suasnavas Silva', 'Iván Alfonso', 'Ps.Cl. Iván Suasnavas', 'Suasnavas Silva Iván Alfonso', 'ivans', 'kQBg2fpbp0OLwl/MPuhx+xp9wuR3BA3gmjAyzYY7/vM=', '589376057.jpg', 'M', 0),
(587, 5, 2, 'Ing.', 'Peñaherrera Escobar', 'Gonzalo Nicolás', 'Ing. Gonzalo Peñaherrera', 'Peñaherrera Escobar Gonzalo Nicolás', 'gonzalop', 'WtiObwUU0MFeLD0Z7UyJWCEUQBMoG1iPknS6i3HF6cs=', '1998782566.png', 'M', 1),
(593, 5, 3, 'Mr.', 'Salamanca', 'Secretaria', '', 'Salamanca Secretaria', 'secretaria', 'L+P4DJ0ChxvjQzBm1whpIdv9AMWCXhIEmGvcPd3DjGQ=', '1386176766.png', 'M', 1),
(594, 6, 2, 'Dr.', 'Castillo Cabay', 'Ramiro Vicente', 'Dr. Ramiro Castillo', 'Castillo Cabay Ramiro Vicente', 'ramiroc', 'Lzb1k+ACVQo8PMEeTJyxZa1jD6T7vL4PHCFcaIgwAPI=', 'teacher-male-avatar.png', 'M', 0),
(595, 7, 7, 'Lic.', 'Morales', 'Carlota', 'Lic. Carlota Morales', 'Morales Carlota', 'carlotam', '/GmvhmkM6glW23gEofW/Ne7860sO4XcV8FjRj1lQPws=', '135780439.png', 'M', 0),
(596, 8, 2, 'Dra.', 'VILEMA', 'LUPE', 'Dra. LUPE VILEMA', 'VILEMA LUPE', 'lupev', 'KkZVg0YfL5fk4Ycj+V9RWtLVjTFFl+Q2gSPal4Rr4GQ=', '1105736135.png', 'F', 0),
(597, 8, 2, 'Lic.', 'Trujillo Realpe', 'William Oswaldo', 'Lic. William Trujillo', 'Trujillo Realpe William Oswaldo', 'williamt', 'qgR70l2EBcK3kA/Im+fZYQZCdlB0uPTmTuxPNR7UDUg=', '938188062.jpg', 'M', 1),
(598, 8, 2, 'Ing.', 'Benavides Ortiz', 'German Gustavo', 'Ing. German Benavides', 'Benavides Ortiz German Gustavo', 'germanb', 'rrNSLtcU2xZd2fmcqe+fp7AIzcpJRFzn0lNRKmC/Wsw=', '318123795.jpg', 'M', 1),
(599, 8, 2, 'Msc.', 'Sanmartín Vásquez', 'Sandra Verónica', 'Msc. Sandra Sanmartín', 'Sanmartín Vásquez Sandra Verónica', 'veronicas', 'JNYAsqLad7SJWf2ZS/MkQ3Fo8ieLdkfxLDaCBPEXOx8=', '207274868.png', 'F', 1),
(600, 9, 13, 'Msc.', 'PEÑA ALMACHE', 'JAIME ENRIQUE', 'Msc. JAIME PEÑA', 'PEÑA ALMACHE JAIME ENRIQUE', 'jaimep', 'F8OWy6UYC2ajuNLRf43ym7htNx3cwhqXq67RjXlFGoI=', '173951668.png', 'M', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `sw_usuario`
--
ALTER TABLE `sw_usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_perfil` (`id_perfil`),
  ADD KEY `id_periodo_lectivo` (`id_periodo_lectivo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `sw_usuario`
--
ALTER TABLE `sw_usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=601;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
