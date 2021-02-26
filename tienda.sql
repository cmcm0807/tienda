-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-02-2021 a las 23:05:46
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_25_235228_create_productos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `valor` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `categoria`, `cantidad`, `estado`, `valor`, `created_at`, `updated_at`) VALUES
(1, 'leche deslactosada colechera', 'lacteos', 10, 1, 2500, '2021-02-26 05:06:27', '2021-02-26 05:06:27'),
(2, 'Doritos', 'Mecato', 50, 1, 5000, '2021-02-26 01:46:53', '2021-02-26 01:47:02'),
(3, 'Nesquik vainilla bolsa x 200 gr', 'bebida en polvo', 30, 1, 2500, '2021-02-26 14:08:12', '2021-02-26 14:08:12'),
(4, 'Pan tajado blanco familiar x 600 gr\r\n', 'Pan Tajado\r\n', 20, 1, 3990, '2021-02-26 14:08:12', '2021-02-26 14:08:12'),
(5, 'Nesquik vainilla bolsa x 200 gr', 'bebida en polvo', 30, 1, 2500, '2021-02-26 14:08:12', '2021-02-26 14:08:12'),
(6, 'Pan tajado blanco familiar x 600 gr\r\n', 'Pan Tajado\r\n', 20, 1, 3990, '2021-02-26 14:08:12', '2021-02-26 14:08:12'),
(7, 'Vino Sauvignon Pionero Morande x 750ml', 'vinos', 70, 1, 31710, '2021-02-26 14:10:19', '2021-02-26 14:10:19'),
(8, 'SALCHICHA RANCHERA 480 Gramo', 'Embutidos ', 80, 1, 14500, '2021-02-26 14:10:19', '2021-02-26 14:10:19'),
(9, 'Vino Sauvignon Pionero Morande x 750ml', 'vinos', 70, 1, 31710, '2021-02-26 14:10:19', '2021-02-26 14:10:19'),
(10, 'SALCHICHA RANCHERA 480 Gramo', 'Embutidos ', 80, 1, 14500, '2021-02-26 14:10:19', '2021-02-26 14:10:19'),
(11, 'Gaseosa COCA COLA Sabor Original 3000ml 2 Unidad', 'Gaseosas', 70, 1, 6720, '2021-02-26 14:12:26', '2021-02-26 14:12:26'),
(12, 'Sal refinada 1000 gr', 'sal', 60, 1, 852, '2021-02-26 14:12:26', '2021-02-26 14:12:26'),
(13, 'Gaseosa COCA COLA Sabor Original 3000ml 2 Unidad', 'Gaseosas', 70, 1, 6720, '2021-02-26 14:12:26', '2021-02-26 14:12:26'),
(14, 'Sal refinada 1000 gr', 'sal', 60, 1, 852, '2021-02-26 14:12:26', '2021-02-26 14:12:26'),
(15, 'Papel higiénico jardín de primavera x 15 rollos FAMILIA 391 mts', 'papel higiénico ', 40, 1, 11990, '2021-02-26 14:13:50', '2021-02-26 14:13:50'),
(16, 'Leche deslactosada paq x 6 unds ( 1100 ml c.u)', 'lacteos', 70, 1, 18550, '2021-02-26 14:14:54', '2021-02-26 14:14:54'),
(18, 'Colonia solo 720 ml', 'colonias', 0, 1, 80000, '2021-02-26 20:38:01', '2021-02-26 20:38:01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
