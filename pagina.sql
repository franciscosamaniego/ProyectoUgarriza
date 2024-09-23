-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-09-2024 a las 02:06:34
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
-- Base de datos: `pagina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Apellido` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `DNI` int(10) NOT NULL,
  `Telefono` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`ID`, `Nombre`, `Apellido`, `Email`, `DNI`, `Telefono`) VALUES
(17, 'Sofía', 'Cano', 'sofia.cano@gmail.com', 23456780, 555),
(18, 'Javier', 'Reyes', 'javier.reyes@gmail.com', 34567891, 555),
(20, 'Miguel', 'Castro', 'miguel.castro@gmail.com', 56789013, 555);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnosegresados`
--

CREATE TABLE `alumnosegresados` (
  `ID` int(10) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Apellido` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `DNI` int(10) NOT NULL,
  `Telefono` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnosegresados`
--

INSERT INTO `alumnosegresados` (`ID`, `Nombre`, `Apellido`, `Email`, `DNI`, `Telefono`) VALUES
(6, 'José', 'Sánchez', 'jose.sanchez@gmail.com', 78901234, 555),
(7, 'Isabel', 'Moreno', 'isabel.moreno@gmail.com', 89012345, 555),
(8, 'Ricardo', 'Jiménez', 'ricardo.jimenez@gmail.com', 90123456, 555),
(9, 'Pedro', 'Ruiz', 'pedro.ruiz@gmail.com', 12345679, 555),
(11, 'Elena', 'Vázquez', 'elena.vazquez@gmail.com', 45678902, 555),
(12, 'Patricia', 'Romero', 'patricia.romero@gmail.com', 67890124, 555);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `Nom_Usuario` varchar(255) NOT NULL,
  `Contrasena` varchar(255) NOT NULL,
  `NomApel` varchar(255) NOT NULL,
  `Rango` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `Nom_Usuario`, `Contrasena`, `NomApel`, `Rango`) VALUES
(1, 'Peito', '1234', 'Pieito dsjad', 'Admin'),
(2, 'Pepito', '12345', 'Pepito sarasa', 'Not Admin'),
(3, 'Pepito', '12345', 'Pepito sarasa', 'Not Admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `alumnosegresados`
--
ALTER TABLE `alumnosegresados`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `alumnosegresados`
--
ALTER TABLE `alumnosegresados`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
