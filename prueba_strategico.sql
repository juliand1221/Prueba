-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-05-2023 a las 17:32:49
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba_strategico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datostest`
--

CREATE TABLE `datostest` (
  `consola` varchar(255) NOT NULL,
  `precio_minimo` int(7) NOT NULL,
  `precio_maximo` int(7) NOT NULL,
  `descuento` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datostest`
--

INSERT INTO `datostest` (`consola`, `precio_minimo`, `precio_maximo`, `descuento`) VALUES
('OTRA', 500000, 1000000, 10),
('PC', 150000, 0, 15),
('PS4', 100000, 0, 5),
('XBOX', 100001, 150000, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosventa`
--

CREATE TABLE `datosventa` (
  `id` int(6) NOT NULL,
  `consola` varchar(255) NOT NULL,
  `Valor` int(7) NOT NULL,
  `ValorCobrarCliente` int(7) NOT NULL,
  `ValorDescuento` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datosventa`
--

INSERT INTO `datosventa` (`id`, `consola`, `Valor`, `ValorCobrarCliente`, `ValorDescuento`) VALUES
(162, 'XBOX', 324, 324, 0),
(163, 'XBOX', 324, 324, 0),
(164, 'XBOX', 345678, 345678, 0),
(165, 'XBOX', 345678, 345678, 0),
(166, 'XBOX', 345666, 345666, 0),
(167, 'XBOX', 345678, 345678, 0),
(168, 'XBOX', 234567, 234567, 0),
(169, 'XBOX', 234567, 234567, 0),
(170, 'XBOX', 234567, 234567, 0),
(171, 'PS4', 222333, 222333, 0),
(172, '', 0, 0, 0),
(173, 'PS4', 345678, 328394, 17284),
(174, 'PS4', 345678, 328394, 17284),
(175, 'XBOX', 345678, 345678, 0),
(176, 'PS4', 345655, 328372, 17283),
(177, 'PS4', 25000, 25000, 0),
(178, 'XBOX', 134500, 125085, 9415),
(179, 'XBOX', 10000, 10000, 0),
(180, 'PC', 189700, 161245, 28455),
(181, 'PC', 123000, 123000, 0),
(182, 'OTRA', 546700, 492030, 54670),
(183, 'OTRA', 423500, 423500, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datostest`
--
ALTER TABLE `datostest`
  ADD PRIMARY KEY (`consola`);

--
-- Indices de la tabla `datosventa`
--
ALTER TABLE `datosventa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `consola` (`consola`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datosventa`
--
ALTER TABLE `datosventa`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
