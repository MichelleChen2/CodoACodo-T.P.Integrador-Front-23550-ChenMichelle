-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2023 a las 23:09:52
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
-- Base de datos: `integrador_cac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oradores`
--

CREATE TABLE `oradores` (
  `id_orador` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `mail` varchar(80) NOT NULL,
  `tema` varchar(100) DEFAULT NULL,
  `fecha_alta` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `oradores`
--

INSERT INTO `oradores` (`id_orador`, `nombre`, `apellido`, `mail`, `tema`, `fecha_alta`) VALUES
(1, 'Michelle', 'Chen', 'michellemelisachen@gmail.com', 'Introducción a Manejo de Base de Datos', '2023-12-14 20:15:00'),
(2, 'Liliana', 'Pérez', 'lilianaPerez@outlook.com', 'Cómo comer Saludable', '2023-11-20 13:30:00'),
(3, 'Lucas', 'Mendez', 'lucasmendez@gmail.com', 'Inteligencia Emocional a través de Pequeños Hábitos', '2023-12-14 20:15:00'),
(4, 'John', 'García', 'garciaJohn@gmail.com', 'Cómo aprender un Idioma', '2024-01-20 18:45:00'),
(5, 'Paola', 'Kim', 'PaolaKim@yahoo.com', 'Qué es el Síndrome Impostor', '2023-01-20 21:00:00'),
(6, 'María', 'Pavón', 'mpavon@outlook.com', 'Vencer tus Miedos', '2023-01-21 13:00:00'),
(7, 'Luz', 'Hernández', 'luzlaurahernandez@outlook.com', 'El valor de tu Actitud', '2023-01-21 19:15:00'),
(8, 'José', 'Peña', 'josePeña@gmail.com', 'La Crisis Climática como Oportunidad', '2023-01-22 16:45:00'),
(9, 'Carla', 'Sousa', 'ssousa@gmail.com', 'Cómo motivar a los Profesionales de tu empresa en 10 minutos', '2023-01-22 18:45:00'),
(10, 'Rodrigo', 'Lima', 'rodriLima@gmail.com', 'Aprender a ser Feliz', '2023-01-22 20:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `oradores`
--
ALTER TABLE `oradores`
  ADD PRIMARY KEY (`id_orador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `oradores`
--
ALTER TABLE `oradores`
  MODIFY `id_orador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
