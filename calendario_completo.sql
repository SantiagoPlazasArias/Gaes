-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-05-2025 a las 21:42:51
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `calendario_completo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `fecha_compra` date NOT NULL,
  `tamaño` varchar(50) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `vlr_unitario` decimal(10,2) DEFAULT NULL,
  `vlr_total` decimal(10,2) DEFAULT NULL,
  `vlr_total_iva` decimal(10,2) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `vlr_unitario_con_iva` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `fecha_compra`, `tamaño`, `cantidad`, `nombre`, `vlr_unitario`, `vlr_total`, `vlr_total_iva`, `marca`, `vlr_unitario_con_iva`) VALUES
(75, '2024-08-28', '600 ML', 1, 'Tono Perla Beige 600 ML', 82857.00, 82857.00, 98600.00, 'BUKI PRO', 98600),
(79, '2024-08-28', '250 ML', 1, 'Tono Rojo Cobre 250 ML', 38478.00, 38478.00, 45788.82, 'BUKI PRO', 45789),
(80, '2024-08-28', '250 ML', 3, 'Tono Rojo Marròn 250 Ml', 38487.00, 115461.00, 137398.59, 'BUKI PRO', 45800),
(81, '2024-08-28', '250 ML', 1, 'Tono Rojo Vino 250 ML', 38487.00, 38487.00, 45799.53, 'BUKI PRO', 45800),
(82, '2024-08-28', '250 ML', 4, 'Coctel De Aminoacidos 250 ML', 38487.00, 153948.00, 183198.12, 'BUKI PRO', 45800),
(83, '2024-08-28', '300ML', 1, 'Shampoo Sin Sal 300 ML', 30840.00, 30840.00, 36699.60, 'BUKI PRO', 36700),
(84, '2024-08-28', '600 ML', 2, 'Tratamiento de Frutas 600ML', 82857.00, 165714.00, 197199.66, 'BUKI PRO', 98600),
(85, '2024-08-28', '250 ML', 5, 'Tratamiento de Frutas 250 ML', 38487.00, 192435.00, 228997.65, 'BUKI PRO', 45800),
(87, '2024-08-15', '13,5 ML', 4, 'Base Nutritiva Rosada 13,5 ML', 5868.00, 23472.00, 27931.68, 'MASGLO', 6983),
(88, '2024-08-15', '13,5 ML', 4, 'Brillo Gel Top 13,5 ML', 6626.00, 26504.00, 31539.76, 'MASGLO', 7885),
(89, '2024-08-15', '13,5 ML', 4, 'Esmalte Negro 13,5 ML', 5868.00, 23472.00, 27931.68, 'MASGLO', 6983),
(90, '2024-08-15', '13,5 ML', 4, 'Esmalte Tiza Gel Evolution 13,5 ML', 7943.00, 31772.00, 37808.68, 'MASGLO', 9452),
(91, '2024-08-15', '13,5 ML', 2, 'Esmalte Actual 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(92, '2024-08-15', '13,5 ML', 2, 'Esmalte Bella 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(93, '2024-08-15', '13,5 ML', 2, 'Esmalte Calmada 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(94, '2024-08-15', '13,5 ML', 2, 'Esmalte Chic 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(95, '2024-08-15', '13,5 ML', 2, 'Esmalte Controladora 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(96, '2024-08-15', '13,5 ML', 2, 'Esmalte Decoraciones Plata 13,5 ML', 4311.00, 8622.00, 10260.18, 'MASGLO', 5130),
(97, '2024-08-15', '13,5 ML', 2, 'Esmalte Dinamica 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(98, '2024-08-28', '600 ML', 2, 'Coctel De Aminoacidos 600 ML', 82857.00, 165714.00, 197199.66, 'BUKI PRO', 98600),
(99, '2024-08-28', '250 ML', 4, 'Tono Perla Beige 250 ML', 38487.00, 153948.00, 183198.12, 'BUKI PRO', 45800),
(100, '2024-08-28', '250 ML', 4, 'Tono Sobre Gris Plata 250ML', 38487.00, 153948.00, 183198.12, 'BUKI PRO', 45800),
(101, '2024-08-15', '13,5 ML', 2, 'Esmalte Diva 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(102, '2024-08-15', '13,5 ML', 2, 'Esmalte Doble 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(103, '2024-08-15', '13,5 ML', 2, 'Esmalte Ejecutiva 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(104, '2024-08-15', '13,5 ML', 2, 'Esmalte Fiera 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(105, '2024-08-15', '13,5 ML', 2, 'Esmalte Fiesta 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(106, '2024-08-15', '13,5 ML', 2, 'Esmalte Frances 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(107, '2024-08-15', '13,5 ML', 2, 'Esmalte Fufurufa 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(109, '2024-08-15', '13,5 ML', 2, 'Esmalte Gitana 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(110, '2024-08-15', '13,5 ML', 2, 'Esmalte Glamorosa 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(112, '2024-08-15', '13,5 ML', 2, 'Esmalte Ilusion 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(113, '2024-08-15', '13,5 ML', 2, 'Esmalte Inconfundible 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(115, '2024-08-15', '13,5 ML', 2, 'Esmalte Intuitiva 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(116, '2024-08-15', '13,5 ML', 2, 'Esmalte Malvada 13,5 ', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(117, '2024-08-15', '13,5 ML', 2, 'Esmalte Golosa 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(118, '2024-08-15', '13,5 ML', 2, 'Esmalte Inquieta 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(119, '2024-08-15', '13,5 ML', 2, 'Esmalte Matrimonio 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(120, '2024-08-15', '13,5 ML', 2, 'Esmalte Nativa 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(121, '2024-08-15', '13,5 ML', 2, 'Esmalte Nieve 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(122, '2024-08-15', '13,5 ML', 2, 'Esmalte Novia 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(123, '2024-08-15', '13,5 ML', 2, 'Esmalte Primera dama 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(124, '2024-08-15', '13,5 ML', 2, 'Esmalte Prisionera 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(125, '2024-08-15', '13,5 ML', 2, 'Esmalte Profesional 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(126, '2024-08-15', '13,5 ML', 2, 'Esmalte Razonable 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(127, '2024-08-15', '13,5 ML', 2, 'Esmalte Sofisticada 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(128, '2024-08-15', '13,5 ML', 2, 'Esmalte Solidaria 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(129, '2024-08-15', '13,5 ML', 2, 'Esmalte Soltera 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(130, '2024-08-15', '13,5 ML', 2, 'Esmalte Tierna 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(131, '2024-08-15', '13,5 ML', 2, 'Esmalte Virginal 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(133, '2024-08-15', '13,5 ML', 1, 'Esmalte Adaptable 13,5 ML', 5868.00, 5868.00, 6982.92, 'MASGLO', 6983),
(134, '2024-08-15', '13,5 ML', 2, 'Esmalte Amante 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(135, '2024-08-15', '13,5 ML', 2, 'Esmalte Bailadora 13,5 ML', 5868.00, 11736.00, 11736.00, 'MASGLO', 5868),
(136, '2024-08-15', '13,5 ML', 1, 'Esmalte Bipolar 13,5 ML', 5868.00, 5868.00, 6982.92, 'MASGLO', 6983),
(137, '2024-08-15', '13,5 ML', 1, 'Esmalte Brillo ajedrez 13,5 ML', 5868.00, 5868.00, 6982.92, 'MASGLO', 6983),
(139, '2024-08-15', '13,5 ML', 1, 'Esmalte Brillo coral 13,5 ML', 5868.00, 5868.00, 6982.92, 'MASGLO', 6983),
(140, '2024-08-15', '13,5 ML', 1, 'Esmalte Brillo confianza 13,5 ML', 5868.00, 5868.00, 6982.92, 'MASGLO', 6983),
(141, '2024-08-15', '13,5 ML', 1, 'Esmalte Brillo tres oros 13,5 ML', 5868.00, 5868.00, 6982.92, 'MASGLO', 6983),
(142, '2024-08-15', '13,5 ML', 2, 'Esmalte Buscona 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(143, '2024-08-15', '13,5 ML', 2, 'Esmalte Campeona 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(144, '2024-08-15', '13,5 ML', 2, 'Esmalte Candidata 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(145, '2024-08-15', '13,5 ML', 2, 'Esmalte Comica 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(146, '2024-08-15', '13,5 ML', 2, 'Esmalte Decoraciones dorado 13,5 ML', 4311.00, 8622.00, 10260.18, 'MASGLO', 5130),
(147, '2024-08-15', '13,5 ML', 1, 'Esmalte Doble 13,5 ML', 5868.00, 5868.00, 6982.92, 'MASGLO', 6983),
(148, '2024-08-15', '13,5 ML', 2, 'Esmalte Dominante 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(149, '2024-08-15', '13,5 ML', 2, 'Esmalte Exagerada 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(150, '2024-08-15', '13,5 ML', 2, 'Esmalte Experimentada 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(151, '2024-08-15', '13,5 ML', 1, 'Esmalte Gomela 13,5 ML', 5868.00, 5868.00, 6982.92, 'MASGLO', 6983),
(152, '2024-08-15', '13,5 ML', 2, 'Esmalte Granizado dorado 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(153, '2024-08-15', '13,5 ML', 2, 'Esmalte Imponente 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(154, '2024-08-15', '13,5 ML', 1, 'Esmalte Inestable 13,5 ML', 5868.00, 5868.00, 6982.92, 'MASGLO', 6983),
(155, '2024-08-15', '13,5 ML', 5, 'Esmalte Insinuante 13,5 ML', 5868.00, 29340.00, 34914.60, 'MASGLO', 6983),
(156, '2024-08-15', '13,5 ML', 2, 'Esmalte Juguetona 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(157, '2024-08-15', '13,5 ML', 2, 'Esmalte Linda 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(158, '2024-08-15', '13,5 ML', 2, 'Esmalte Materialista 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(159, '2024-08-15', '13,5 ML', 2, 'Esmalte Metodica 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(160, '2024-08-15', '13,5 ML', 2, 'Esmalte Paciente 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(161, '2024-08-15', '13,5 ML', 2, 'Esmalte Perfeccionista 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(162, '2024-08-15', '13,5 ML', 1, 'Esmalte Polifacetica 13,5 ML', 5868.00, 5868.00, 6982.92, 'MASGLO', 6983),
(163, '2024-08-15', '13,5 ML', 2, 'Esmalte Sangre toro 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(164, '2024-08-15', '13,5 ML', 1, 'Esmalte Susceptible 13,5 ML', 5868.00, 5868.00, 5868.00, 'MASGLO', 5868),
(165, '2024-08-15', '13,5 ML', 2, 'Esmalte Tranquila 13,5 ML', 5868.00, 11736.00, 13965.84, 'MASGLO', 6983),
(166, '2024-08-15', '14 ML', 1, 'polishbaserubberpink 14 ML', 24725.00, 24725.00, 29422.75, 'MASGLO', 29423),
(167, '2024-08-15', '14 ML', 1, 'polishausente 14 ML', 23025.00, 23025.00, 27399.75, 'MASGLO', 27400),
(168, '2024-08-15', '7 ML', 1, 'polishbloomingclear 7 ML', 21933.00, 21933.00, 26100.27, 'MASGLO', 26100),
(169, '2024-08-15', '7 ML', 1, 'polishbrillocuarzo 7 ML', 16891.00, 16891.00, 20100.29, 'MASGLO', 20100),
(170, '2024-08-15', '7 ML', 1, 'polishbrilloluminoso 7 ML', 16891.00, 16891.00, 20100.29, 'MASGLO', 20100),
(171, '2024-08-15', '7 ML', 1, 'polishcamaleonica 7 ML', 21933.00, 21933.00, 26100.27, 'MASGLO', 26100),
(172, '2024-08-15', '7 ML', 1, 'polishcazadora 7 ML', 21933.00, 21933.00, 26100.27, 'MASGLO', 26100),
(173, '2024-08-15', '14 ML', 1, 'polishcoherente 14 ML', 23025.00, 23025.00, 27399.75, 'MASGLO', 27400),
(174, '2024-08-15', '14 ML', 1, 'polishconsentida 14 ML', 23025.00, 23025.00, 27399.75, 'MASGLO', 27400),
(175, '2024-08-15', '7 ML', 1, 'polishconstante 7 ML', 16891.00, 16891.00, 20100.29, 'MASGLO', 20100),
(176, '2024-08-15', '7 ML', 1, 'polishejemplar 7 ML', 16891.00, 16891.00, 20100.29, 'MASGLO', 20100),
(177, '2024-08-15', '14 ML', 1, 'polishemocional 14 ML', 23025.00, 23025.00, 27399.75, 'MASGLO', 27400),
(178, '2024-08-15', '14 ML', 1, 'polishexagerada 14 ML', 23025.00, 23025.00, 27399.75, 'MASGLO', 27400),
(179, '2024-08-15', '7 ML', 1, 'polishfelina 7 ML', 21933.00, 21933.00, 26100.27, 'MASGLO', 26100),
(180, '2024-08-15', '14 ML', 1, 'polishfiesta 14 ML', 23025.00, 23025.00, 27399.75, 'MASGLO', 27400),
(181, '2025-08-15', '14 ML', 1, 'polishfrances 14 ML', 23025.00, 23025.00, 27399.75, 'MASGLO', 27400),
(182, '2024-08-15', '14 ML', 1, 'polishgolosa 14 ML', 23025.00, 23025.00, 27399.75, 'MASGLO', 27400),
(183, '2024-08-15', '14 ML', 1, 'polishguapa 14 ML', 23025.00, 23025.00, 27399.75, 'MASGLO', 27400),
(184, '2024-08-15', '14 ML', 1, 'polishilusión 14 ML', 23025.00, 23025.00, 27399.75, 'MASGLO', 27400),
(185, '2024-08-15', '7 ML', 1, 'polishinfluencer 7 ML', 16891.00, 16891.00, 20100.29, 'MASGLO', 20100),
(186, '2024-08-15', '7 ML', 1, 'polishinteligente 7 ML', 16891.00, 16891.00, 20100.29, 'MASGLO', 20100),
(187, '2024-08-15', '14 ML', 1, 'polishjuguetona 14 ML', 23025.00, 23025.00, 27399.75, 'MASGLO', 27400),
(188, '2024-08-15', '14 ML', 1, 'polishjuiciosa 14 ML', 23025.00, 23025.00, 27399.75, 'MASGLO', 27400),
(189, '2024-08-15', '14 ML', 1, 'polishleal 14 ML', 23025.00, 23025.00, 27399.75, 'MASGLO', 27400),
(190, '2024-08-15', '14 ML', 1, 'polishmatrimonio 14 ML', 23025.00, 23025.00, 27399.75, 'MASGLO', 27400),
(191, '2024-08-15', '14 ML', 1, 'polishmoderada 14 ML', 23025.00, 23025.00, 27399.75, 'MASGLO', 27400),
(192, '2024-08-05', '14 ML', 1, 'polishnieve 14 ML', 23025.00, 23025.00, 27399.75, 'MASGLO', 27400),
(193, '2024-08-15', '14 ML', 1, 'polishnovia 14 ML', 23025.00, 23025.00, 27399.75, 'MASGLO', 27400),
(194, '2024-08-15', '5 GR', 1, 'polishpaintingblanco 5 GR', 20126.00, 20126.00, 23949.94, 'MASGLO', 23950),
(195, '2024-08-15', '5 GM', 1, 'polishgelspidernegro 5 GR', 20126.00, 20126.00, 23949.94, 'MASGLO', 23950),
(196, '2024-08-15', '14 ML', 1, 'polishtrasnochadora 14 ML', 23025.00, 23025.00, 27399.75, 'MASGLO', 27400),
(197, '2024-08-15', '14 ML', 1, 'polishvirginal 14 ML', 23025.00, 23025.00, 27399.75, 'MASGLO', 27400),
(198, '2024-08-15', '7 ML', 1, 'polishfarandulera 7 ML', 16933.00, 16933.00, 20150.27, 'MASGLO', 20150),
(199, '2024-08-15', '7 ML', 1, 'polishinsaciable 7 ML', 16981.00, 16981.00, 20207.39, 'MASGLO', 20207),
(200, '2024-08-15', '7 ML', 1, 'polishcandidata 7 ML', 16891.00, 16891.00, 20100.29, 'MASGLO', 20100),
(201, '2024-08-15', '7 ML', 1, 'polishrazonable 7 ML', 16891.00, 16891.00, 20100.29, 'MASGLO', 20100),
(202, '2024-08-15', '7 ML', 1, 'polishnovedosa 7 ML', 16891.00, 16891.00, 20100.29, 'MASGLO', 20100),
(203, '2024-08-15', '7 ML', 1, 'polishpopular 7 ML', 16891.00, 16891.00, 20100.29, 'MASGLO', 20100),
(206, '2024-09-16', '13,5 ML', 2, 'Esmalte Abrumadora 13,5 ML', 5497.00, 10994.00, 13082.86, 'MASGLO', 6541),
(207, '2024-09-16', '13,5 ML', 2, 'Esmalte Activista 13,5 ML', 5497.00, 10994.00, 13082.86, 'MASGLO', 6541),
(208, '2024-09-16', '13,5 ML', 2, 'Esmalte Adorable 13,5 ML', 5497.00, 10994.00, 13082.86, 'MASGLO', 6541),
(209, '2024-09-16', '13,5 ML', 2, 'Esmalte Amigable 13,5 ML', 5497.00, 10994.00, 13082.86, 'MASGLO', 6541),
(210, '2024-09-16', '13,5 ML', 2, 'Esmalte Arriesgada 13,5 ML', 5497.00, 10994.00, 13082.86, 'MASGLO', 6541),
(211, '2024-09-16', '13,5 ML', 2, 'Esmalte Atractiva 13,5 ML', 5497.00, 10994.00, 13082.86, 'MASGLO', 6541),
(212, '2024-09-16', '13,5 ML', 1, 'Esmalte Base Nutri Avanzada Conbiokera Mge 13,5 ML', 8361.00, 8361.00, 9949.59, 'MASGLO', 9950),
(213, '2024-09-16', '13,5 ML', 2, 'Esmalte Blanco Nacar 13,5 ML', 5497.00, 10994.00, 13082.86, 'MASGLO', 6541),
(214, '2024-09-16', '13,5 ML', 2, 'Esmalte Educada 13,5 ML', 5497.00, 10994.00, 13082.86, 'MASGLO', 6541),
(215, '2024-09-16', '13,5 ML', 2, 'Esmalte Electrica 13,5 ML', 5497.00, 10994.00, 13082.86, 'MASGLO', 6541),
(216, '2026-06-19', '13,5 ML', 2, 'Esmalte Famosa 13,5 ML', 5497.00, 10994.00, 13082.86, 'MASGLO', 6541),
(217, '2024-09-16', '13,5 ML', 2, 'Esmalte Fresca 13,5 ML', 5497.00, 10994.00, 13082.86, 'MASGLO', 6541),
(218, '2024-09-16', '13,5 ML', 2, 'Esmalte Humana 13,5 ML', 5497.00, 10994.00, 13082.86, 'MASGLO', 6541),
(219, '2024-09-16', '13,5 ML', 2, 'Esmalte Ilusion 13,5 ML', 5497.00, 10994.00, 13082.86, 'MASGLO', 6541),
(220, '2024-09-16', '13,5 ML', 2, 'Esmalte Intrigante 13,5 ML', 5497.00, 10994.00, 13082.86, 'MASGLO', 6541),
(221, '2024-09-16', '13,5 ML', 2, 'Esmalte Luchadora 13,5 ML', 5497.00, 10994.00, 13082.86, 'MASGLO', 6541),
(222, '2024-09-16', '13,5 ML', 2, 'Esmalte Matificador 13,5 ML', 5497.00, 10994.00, 13082.86, 'MASGLO', 6541),
(223, '2024-09-16', '13,5 ML', 2, 'Esmalte Original 13,5 ML', 5497.00, 10994.00, 13082.86, 'MASGLO', 6541),
(224, '2024-09-16', '13,5 ML', 2, 'Esmalte Rebelde 13,5 ML', 5497.00, 10994.00, 13082.86, 'MASGLO', 6541),
(225, '2024-09-16', '13,5 ML', 2, 'Esmalte Serena 13,5 ML', 5497.00, 10994.00, 13082.86, 'MASGLO', 6541),
(226, '2024-09-16', '13,5 ML', 2, 'Esmalte Talentosa 13,5 ML', 5497.00, 10994.00, 13082.86, 'MASGLO', 6541),
(227, '2024-09-16', '13,5 ML', 2, 'Esmalte Tiza 13,5 ML', 5497.00, 10994.00, 13082.86, 'MASGLO', 6541),
(228, '2024-09-16', '13,5 ML', 1, 'Esmalte Abrumadora Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(229, '2024-09-16', '13,5 ML', 1, 'Esmalte Activista Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(230, '2024-09-16', '13,5 ML', 1, 'Esmalte Adorable Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(231, '2024-09-16', '13,5 ML', 1, 'Esmalte Arriesgada Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(232, '2024-09-16', '13,5 ML', 1, 'Esmalte Ausente Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(233, '2024-09-16', '13,5 ML', 1, 'Esmalte Auténtica Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(234, '2024-09-16', '13,5 ML', 1, 'Esmalte Bella Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(235, '2024-09-16', '13,5 ML', 1, 'Esmalte Blanco Nacar Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(236, '2024-09-16', '13,5 ML', 1, 'Esmalte Brillo Coral Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(237, '2024-09-16', '13,5 ML', 1, 'Esmalte Brillo Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(238, '2024-09-16', '13,5 ML', 1, 'Esmalte Campeona Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(239, '2024-09-16', '13,5 ML', 1, 'Esmalte Chic Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(240, '2024-09-16', '13,5 ML', 1, 'Esmalte Comica Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(242, '2024-09-16', '10 ML', 3, 'Esmalte Dilusor De Esma 10Ml Mas Secado Rapido 10,0 ML', 3403.00, 10209.00, 12148.71, 'MASGLO', 4050),
(243, '2024-09-16', '13,5 ML', 1, 'Esmalte Ejecutiva Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(244, '2024-09-16', '13,5 ML', 1, 'Esmalte Fiesta Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(245, '2024-09-16', '13,5 ML', 1, 'Esmalte Golosa Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(246, '2024-09-16', '13,5 ML', 1, 'Esmalte Humana Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(247, '0000-00-00', '13,5 ML', 1, 'Esmalte Ilusión Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(248, '2024-09-16', '13,5 ML', 1, 'Esmalte Libre Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(249, '2024-09-16', '13,5 ML', 1, 'Esmalte Linda Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(250, '2024-09-16', '13,5 ML', 1, 'Esmalte Malvada Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(251, '2024-09-16', '13,5 ML', 1, 'Esmalte Materialista Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(252, '2024-09-16', '13,5 ML', 1, 'Esmalte Matrimonio Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(253, '2024-09-16', '13,5 ML', 1, 'Esmalte Metodica Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(254, '2024-09-16', '13,5 ML', 1, 'Esmalte Negro Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(255, '2024-09-16', '13,5 ML', 1, 'Esmalte Primera  Dama  Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(256, '2024-09-16', '13,5 ML', 1, 'Esmalte Profesional Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(257, '2024-09-16', '13,5 ML', 1, 'Esmalte Rebelde Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(258, '2024-09-16', '13,5 ML', 1, 'Esmalte Sangre  Toro Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(259, '2024-09-16', '13,5 ML', 1, 'Esmalte Serena Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(260, '2024-09-16', '13,5 ML', 1, 'Esmalte Soñadora Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(261, '2024-09-16', '13,5 ML', 1, 'Esmalte Virginal Secado Rapido 13,5 ML', 6773.00, 6773.00, 8059.87, 'MASGLO', 8060),
(276, '2024-08-15', '50 GR', 1, 'Acrilico Org Co. 12 Petal 50 Grs. 50 GR', 58739.00, 58739.00, 69899.41, 'ORGANIC', 69899),
(277, '2024-08-15', '140 GR', 1, 'Cover Org Peach 140 Grs. 140 GR', 134370.00, 134370.00, 159900.30, 'ORGANIC', 159900),
(278, '2024-08-15', '140 GR', 1, 'Acrilico Org Crystal Clear 140 Grs. 140 GR', 134370.00, 134370.00, 159900.30, 'ORGANIC', 159900),
(279, '2024-08-15', '120 ML', 2, 'Sani Spray 120 Ml. 120 ML', 18403.00, 36806.00, 43799.14, 'ORGANIC', 21900),
(280, '2024-08-15', '120 ML', 1, 'Genius Cleaner 120 Ml 120 ML', 22605.00, 22605.00, 26899.95, 'ORGANIC', 26900),
(281, '2024-08-15', '480 ML', 1, 'Synergy Wipe Org 480 Ml. 480 ML', 27647.00, 27647.00, 32899.93, 'ORGANIC', 32900),
(282, '2024-08-15', '4.5 GM', 1, 'Polar Lights Gel Bronce 4.5G/0.15Oz 4,5 GR', 27647.00, 27647.00, 32899.93, 'ORGANIC', 32900),
(283, '2024-08-15', '4.5 GM', 1, 'Polar Lights Gel Pink 4.5G/0.15Oz 4,5 GR', 27647.00, 27647.00, 32899.93, 'ORGANIC', 32900),
(284, '2024-08-15', '4.5 GM', 1, 'Polar Lights Gel Silver 4.5G/0.15Oz 4,5 GR', 27647.00, 27647.00, 32899.93, 'ORGANIC', 32900),
(285, '2024-08-15', '4.5 GM', 1, 'Polar Lights Gel Lilac 4.5G/0.15Oz 4,5 GR', 27647.00, 27647.00, 32899.93, 'ORGANIC', 32900),
(286, '2024-08-15', 'UND', 2, 'Lima Zebra 150 Professional Lima Zebra UNID', 7143.00, 14286.00, 17000.34, 'ORGANIC', 8500),
(287, '2024-08-15', 'UND', 2, '100 Professional UNID', 7143.00, 14286.00, 17000.34, 'ORGANIC', 8500),
(288, '2024-08-15', '15 ML', 1, 'Cuticle Oil Tanger 15 ML', 11681.00, 11681.00, 13900.39, 'ORGANIC', 13900),
(289, '2024-08-15', '15 ML', 1, 'Cuticle Oil Kiwifruit 15 ML', 11681.00, 11681.00, 13900.39, 'ORGANIC', 13900),
(290, '2024-08-15', '7,5ML', 1, 'Gel Org 059 Iron Blue 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(291, '2024-08-15', '7,5ML', 1, 'Gel Org 164 Ciel 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(292, '2024-08-15', '7,5ML', 1, 'Gel Org 165 Steelblue 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(293, '2024-08-15', '7,5ML', 1, 'Gel Org 161 Capuccino 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(295, '2024-08-15', '7,5ML', 1, 'Gel Org 160 Dark Chocolate 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(296, '2024-08-15', '7,5ML', 1, 'Gel Org 095 Love Letter 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(297, '2024-08-15', '7,5ML', 1, 'Gel Org 098 Floral Rose 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(298, '2024-08-15', '7,5ML', 1, 'Gel Org 151 Pastel Blue 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(299, '2024-08-15', '7,5ML', 1, 'Gel Org 155 Pastel Coral 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(300, '2024-08-15', '7,5ML', 1, 'Gel Org 158 Pastel Pink 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(301, '2024-08-15', '7,5ML', 1, 'Gel Org 157 Pastel Rose 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(302, '2024-08-15', '7,5ML', 1, 'Gel Org 127 Ocean Gel Org 122 Mauve 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(303, '2024-08-15', '7,5ML', 1, 'Gel Org 111 Sweet Verbena 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(304, '2024-08-15', '7,5ML', 1, 'Gel Org 121 Coraline 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(305, '2024-08-15', '7,5ML', 1, 'Gel Org 112 Sweet Taro 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(306, '2024-08-15', '7,5ML', 1, 'Gel Org 109 Sweet Latte 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(307, '2024-08-15', '7,5ML', 1, 'Gel Org 106 True Almond 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(308, '2024-08-15', '7,5ML', 1, 'Gel Org 107 True Coffee 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(309, '2024-08-15', '7,5ML', 1, 'Gel Org 067 Glow Pink 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(310, '2024-08-15', '7,5ML', 1, 'Gel Org 044 Imperial Velvet 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(311, '2024-08-15', '7,5ML', 1, 'Gel Org 036 Mermaid Aqua 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(312, '2024-08-15', '7,5ML', 1, 'Gel Org 031 Classic Taupe 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(313, '2024-08-15', '7,5ML', 1, 'Gel Org 028 Classic Moka 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(314, '2024-08-15', '7,5ML', 1, 'Gel Org 029 Classic Blush 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(315, '2024-08-15', '7,5ML', 1, 'Gel Org 032 Classic Beige 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(316, '2024-08-15', '7,5ML', 1, 'Gel Org 084 Temppink 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(317, '2024-08-15', '7,5ML', 1, 'Gel Org 105 True Lips 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(318, '2024-08-15', '7,5ML', 1, 'Gel Org 097 Floral Darcey 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(319, '2024-08-15', '7,5ML', 1, 'Gel Org 066 Glow Coral 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(320, '2024-08-15', '7,5ML', 1, 'Gel Org 103 True Pinky 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(321, '2024-08-15', '7,5ML', 1, 'Gel Org 096 Love Spell 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(322, '2024-08-15', '7,5ML', 1, 'Gel Org 018 Midnight Fiusha 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(323, '2024-08-15', '7,5ML', 1, 'Gel Org 019 Midnight Purple 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(324, '2024-08-15', '7,5ML', 1, 'Gel Org 013 Ice Mint 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(325, '2024-08-15', '7,5ML', 1, 'Gel Org 011 Ice Purple 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(326, '2024-08-15', '7,5ML', 1, 'Gel Org 014 Ice Pink 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(327, '2024-08-15', '7,5ML', 1, 'Gel Org 012 Ice Lilac 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(328, '2024-08-15', '7,5ML', 1, 'Gel Org 070 Fairy Silver 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(329, '2024-08-15', '7,5ML', 1, 'Gel Org 043 Imperial Shedron 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(330, '2024-08-15', '7,5ML', 1, 'Gel Org 101 Floral Lotus 7,5 ML', 25126.00, 25126.00, 29899.94, 'ORGANIC', 29900),
(331, '2024-08-15', '15 ML', 2, 'Gel Org 167 Moon White 15 ML', 33529.00, 67058.00, 79799.02, 'ORGANIC', 39900),
(332, '2024-08-15', '15 ML', 1, 'Gel Org 010 Ice Blue 15 ML', 33529.00, 33529.00, 39899.51, 'ORGANIC', 39900),
(333, '2024-08-15', '15 ML', 1, 'Gel Org 130 Sky 15 ML', 33529.00, 33529.00, 39899.51, 'ORGANIC', 39900),
(334, '2024-08-15', '15 ML', 1, 'Gel Org 159 Pastel Lilac 15 ML', 33529.00, 33529.00, 39899.51, 'ORGANIC', 39900),
(335, '2024-08-15', '15 ML', 1, 'Gel Org 118 Coral Rose 15 ML', 33529.00, 33529.00, 39899.51, 'ORGANIC', 39900),
(336, '2024-08-15', '15 ML', 1, 'Gel Org 092 Love Kiss 15 ML', 33529.00, 33529.00, 39899.51, 'ORGANIC', 39900),
(337, '2024-08-15', '15 ML', 2, 'Gel Org 040 Imperial Black 15 ML', 33529.00, 67058.00, 79799.02, 'ORGANIC', 39900),
(338, '2024-08-15', '15 ML', 1, 'Matte Coat Gel Org 002 Cg 15 ML', 41933.00, 41933.00, 49900.27, 'ORGANIC', 49900),
(339, '2024-08-15', '15 ML', 1, 'Gel Org 037 Mermaid Tiara 15 ML', 33529.00, 33529.00, 39899.51, 'ORGANIC', 39900),
(340, '2024-08-15', '15 ML', 2, 'Gel Org 030 Classic Skin 15 ML', 33529.00, 67058.00, 79799.02, 'ORGANIC', 39900),
(341, '2024-08-15', '15 ML', 1, 'Gel Org 039 Mermaid Paradise 15 ML', 33529.00, 33529.00, 39899.51, 'ORGANIC', 39900),
(342, '2024-08-15', '15 ML', 2, 'Base Coat Gel Org 000 Cg 15Ml 15 ML', 41933.00, 83866.00, 99800.54, 'ORGANIC', 49900),
(343, '2024-08-15', '15 ML', 2, 'Top Coat Gel Org 001 Cg 15Ml 15 ML', 41933.00, 83866.00, 99800.54, 'ORGANIC', 49900),
(344, '2024-08-15', 'UND', 2, 'Tijera Cristal Rusa  Hc 14971 Mpz17 UNID', 28571.00, 57142.00, 67998.98, 'ORGANIC', 33999),
(345, '2024-08-15', '480 ML', 1, 'Total Remover 480 Ml 480ML', 32689.00, 32689.00, 38899.91, 'ORGANIC', 38900),
(348, '2024-08-15', 'UND', 2, 'Proteind Bond  UNID', 25000.00, 50000.00, 50000.00, 'ORGANIC', 25000),
(349, '2024-08-15', 'UND', 2, 'Pegante En Brocha UNID', 4500.00, 9000.00, 9000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 4500),
(350, '2024-08-15', 'UND', 1, 'Caja Limas 144 U UNID', 24000.00, 24000.00, 24000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 24000),
(351, '2024-08-15', 'UND', 2, 'Eucida UNID', 19000.00, 38000.00, 38000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 19000),
(352, '2024-08-15', 'UND', 1, 'Polygel UNID', 12000.00, 12000.00, 12000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 12000),
(353, '2024-08-15', 'UND', 2, 'Bledos UNID', 9000.00, 18000.00, 18000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 9000),
(354, '2024-08-15', 'UND', 3, 'Lamparas Presson UNID', 17000.00, 51000.00, 51000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 17000),
(355, '2024-08-15', 'UND', 1, 'Solucion Polygel UNID', 10000.00, 10000.00, 10000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 10000),
(356, '2024-08-15', 'UND', 6, 'Removedor Magic UNID', 5000.00, 30000.00, 30000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 5000),
(357, '2024-08-15', 'UND', 1, 'Olla Cera UNID', 24000.00, 24000.00, 24000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 24000),
(358, '2024-08-15', 'UND', 2, 'Corta Uñas UNID', 2000.00, 4000.00, 4000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 2000),
(359, '2024-08-15', 'UND', 1, 'Cera X 250 UNID', 22000.00, 22000.00, 22000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 22000),
(360, '2024-08-15', 'UND', 5, 'Kit Mezcladores X 5 Uni UNID', 4400.00, 22000.00, 22000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 4400),
(361, '2024-08-15', 'UND', 2, 'Piedras Surtidas UNID', 8000.00, 16000.00, 16000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 8000),
(362, '2024-08-15', 'UND', 1, 'Piedras Numero 3 UNID', 7000.00, 7000.00, 7000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 7000),
(363, '2024-08-15', 'UND', 1, 'Caja Guantes UNID', 32000.00, 32000.00, 32000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 32000),
(364, '2024-08-15', 'UND', 2, 'Kit Manicure Rusa UNID', 20000.00, 40000.00, 40000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 20000),
(365, '2024-08-15', 'UND', 2, 'Brocas Ceramica UNID', 10000.00, 20000.00, 20000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 10000),
(366, '2024-08-15', 'UND', 1, 'Broca 5 En 1 UNID', 20000.00, 20000.00, 20000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 20000),
(367, '2024-08-15', 'UND', 1, 'Moldes Esculturales X 500 UNID', 28000.00, 28000.00, 28000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 28000),
(368, '2024-08-15', 'UND', 4, 'Morteros De Copas UNID', 2000.00, 8000.00, 8000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 2000),
(369, '2024-08-15', 'UND', 1, 'Rollo Lienzo UNID', 24000.00, 24000.00, 24000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 24000),
(370, '2024-08-15', '1 LT', 1, 'Removedor De Callos 1 L', 19000.00, 19000.00, 19000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 19000),
(371, '2024-08-15', '1 LT', 1, 'Removedor De Esmalte 1 L', 16000.00, 16000.00, 16000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 16000),
(372, '2024-08-15', '1 LT', 1, 'Removedor De Callos 1 L', 16000.00, 16000.00, 16000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 16000),
(373, '2024-08-15', 'UND', 2, 'Cortacuticula UNID', 12000.00, 24000.00, 24000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 12000),
(374, '2024-08-15', 'UND', 2, 'Cortacuticula UNID', 14000.00, 28000.00, 28000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 14000),
(375, '2024-08-15', 'UND', 2, 'Pincel Kalinsky UNID', 60000.00, 120000.00, 120000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 60000),
(376, '2024-08-15', 'UND', 3, 'Bolsas Manos UNID', 3000.00, 9000.00, 9000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 3000),
(377, '2024-08-15', 'UND', 1, 'Bolsas Pies UNID', 6000.00, 6000.00, 6000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 6000),
(378, '2024-08-15', 'UND', 2, 'Toallas Wypall UNID', 28000.00, 56000.00, 56000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 28000),
(379, '2024-08-15', 'UND', 2, 'Kit Pusher X 4 UNID', 35000.00, 70000.00, 70000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 35000),
(380, '2024-08-15', 'UND', 1, 'Kit Pusher X 3 UNID', 20000.00, 20000.00, 20000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 20000),
(381, '2024-08-15', 'UND', 2, 'Raspacallo Electrico UNID', 60000.00, 120000.00, 120000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 60000),
(382, '2024-08-15', '1 LT', 1, 'Exfoliante X 1L 1 L', 23000.00, 23000.00, 23000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 23000),
(383, '2024-08-15', '1 LT', 1, 'Crema Hidratante 1 L', 14000.00, 14000.00, 14000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 14000),
(384, '2024-08-15', 'UND', 1, 'Toallas Antimota UNID', 9000.00, 9000.00, 9000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 9000),
(385, '2024-08-15', 'UND', 2, 'Pincel Polygel UNID', 9000.00, 18000.00, 18000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 9000),
(386, '2024-08-15', '1 LT', 1, 'Monomero 1 L', 83000.00, 83000.00, 83000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 83000),
(387, '2024-08-15', '120 gr', 1, 'Polvo Acrilico 120 GR', 23000.00, 23000.00, 23000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 23000),
(388, '2024-08-15', 'UND', 4, 'Limas  UNID', 3000.00, 12000.00, 12000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 3000),
(389, '2024-08-15', 'UND', 2, 'Limas Sponge UNID', 3000.00, 6000.00, 6000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 3000),
(390, '2024-08-15', 'UND', 14, 'Uñas Surt Gel UNID', 14000.00, 196000.00, 196000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 14000),
(391, '2024-08-15', 'UND', 1, 'Tips X 500 Xxl UNID', 25000.00, 25000.00, 25000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 25000),
(392, '2024-08-15', 'UND', 1, 'Baja Lenguas UNID', 6000.00, 6000.00, 6000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 6000),
(393, '2024-08-15', 'UND', 1, 'Palitos De Naranjo X 100 UNID', 6000.00, 6000.00, 6000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 6000),
(394, '2024-08-15', 'UND', 12, 'Encapsuladas UNID', 10000.00, 120000.00, 120000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 10000),
(395, '2024-08-15', 'UND', 1, 'Effecto Espejo Miracle UNID', 12000.00, 12000.00, 12000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 12000),
(396, '2024-08-15', 'UND', 1, 'Glitter Miracle UNID', 10000.00, 10000.00, 10000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 10000),
(397, '2024-08-15', 'UND', 4, 'Decoraciones UNID', 8000.00, 32000.00, 32000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 8000),
(398, '2024-08-15', 'UND', 2, 'Guillotinas UNID', 9000.00, 18000.00, 18000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 9000),
(399, '2024-08-15', 'UND', 2, 'Imanes Guillotina UNID', 6000.00, 12000.00, 12000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 6000),
(400, '2024-08-15', 'UND', 1, 'Cepillos Manos Pequeño UNID', 2000.00, 2000.00, 2000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 2000),
(401, '2024-08-15', 'UND', 1, 'Separadores Desechables X 100 UNID', 10000.00, 10000.00, 10000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 10000),
(402, '2024-08-15', 'UND', 2, 'Separadores Grandes UNID', 2000.00, 4000.00, 4000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 2000),
(403, '2024-08-15', 'UND', 2, 'Gel Construccion UNID', 80000.00, 160000.00, 160000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 80000),
(404, '2024-08-15', 'UND', 1, 'Pestañas Nagaraku UNID', 18000.00, 18000.00, 18000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 18000),
(405, '2024-08-15', 'UND', 1, 'Pegante Sky Zone UNID', 40000.00, 40000.00, 40000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 40000),
(406, '2024-08-15', 'UND', 3, 'Pulidor Inalambrico UNID', 105000.00, 315000.00, 315000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 105000),
(407, '2024-08-15', 'UND', 1, 'Kit X 6 Efecto Aurora UNID', 24000.00, 24000.00, 24000.00, 'DISTRIBUIDORA DE COSMETICOS H Y F', 24000),
(413, '2024-08-30', 'UNID', 12, 'KIT DESECHABLES', 3200.00, 38400.00, 38400.00, 'ASBELL', 3200),
(414, '2024-08-30', 'UNID', 4, 'SABANAS', 3450.00, 13800.00, 13800.00, 'ASBELL', 3450),
(415, '2024-08-28', '30 ML', 4, 'Serum Para Puntas 30 ML', 34874.00, 139496.00, 166000.00, 'BUKI PRO', 41500),
(416, '2024-12-07', 'UND', 3, 'Mantequilla Maracuya 235 GR', 35000.00, 105000.00, 105000.00, 'LOTUS DREAM SPA', 35000),
(417, '2024-12-07', 'UND', 2, 'Mantequillas Frutos Rojos 235 GR', 35000.00, 70000.00, 70000.00, 'LOTUS DREAM SPA', 35000),
(418, '2024-12-07', 'UND', 2, 'Mantequillas Sandia Victoria Secret 235 GR', 35000.00, 70000.00, 70000.00, 'LOTUS DREAM SPA', 35000),
(419, '2024-12-07', 'UND', 1, 'Mantequillas Coco 235 GR', 35000.00, 35000.00, 35000.00, 'LOTUS DREAM SPA', 35000),
(420, '2024-12-07', 'UND', 1, 'Mantequillas Coco 235 GR', 35000.00, 35000.00, 35000.00, 'LOTUS DREAM SPA', 35000),
(421, '2024-12-07', 'UND', 2, 'Mantequilla Maracuya 235 GR', 35000.00, 70000.00, 70000.00, 'LOTUS DREAM SPA', 35000),
(422, '2025-01-18', '13,5 ML', 1, 'Nivelador de PH', 69756.00, 69756.00, 83009.64, 'MASGLO', 83010),
(423, '2025-01-18', '30 ml', 1, 'AcryGel Pink', 36429.00, 36429.00, 43350.51, 'MASGLO', 43351),
(424, '2025-01-18', '55 Ml', 1, 'Monomero', 21555.00, 21555.00, 25650.45, 'MASGLO', 25650),
(425, '2025-01-18', '13,5 ML', 1, 'Base Gel Evolution (secado rapido)', 8361.00, 8361.00, 9949.59, 'MASGLO', 9950),
(426, '2025-01-18', '13,5 ML', 1, 'Brillo Gel Evolution (secado rapido)', 8361.00, 8361.00, 9949.59, 'MASGLO', 9950),
(427, '2025-01-18', '13,5 ML', 1, 'Esmalte Bondadosa Secado Rapido', 8361.00, 8361.00, 9949.59, 'MASGLO', 9950),
(428, '2025-01-20', '13,5 ML', 1, 'Esmalte Materialista ', 6176.00, 6176.00, 7349.44, 'MASGLO', 7349),
(429, '2025-01-20', '14 ml', 1, 'Polish Hiperactiva', 23025.00, 23025.00, 27399.75, 'MASGLO', 27400),
(431, '2025-01-24', '480 ML', 1, 'Total Removedor de Semi', 32689.00, 32689.00, 38899.91, 'Organic', 38900),
(432, '2025-01-24', '15 Ml', 1, 'Rubber Clear ', 46134.00, 46134.00, 54899.46, 'Organic', 54899),
(433, '2025-01-24', '4 und', 1, 'Puntas Europeas', 67983.00, 67983.00, 80899.77, 'Organic', 80900),
(434, '2025-01-24', '1 und', 2, 'Lima Org  240 ', 9664.00, 19328.00, 23000.32, 'Organic', 11500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `puesto` varchar(100) DEFAULT NULL,
  `porcentaje_de_ganancia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `email`, `puesto`, `porcentaje_de_ganancia`) VALUES
(10, 'Liliana Franco', 'Lotusdreamspa5@gmail.com', 'Manicurista', 50),
(11, 'Astrid Plazas', 'Lotusdreamspa5@gmail.com', 'Manicurista', 50),
(12, 'Alcira', 'Lotusdreamspa5@gmail.com', 'Manicurista', 60),
(13, 'Enyel', 'Lotusdreamspa5@gmail.com', 'Manicurista', 60),
(14, 'Laura Jaime', 'Lotusdreamspa5@gmail.com', 'Manicurista', 50),
(15, 'Daniela', 'Lotusdreamspa5@gmail.com', 'Manicurista', 50),
(16, 'NIKOL PRIETO', 'nprietoariza@gmail.com', 'MANICURISTA', 50),
(17, 'ADRIANA VEGA', 'adriveto1@gmail.com', 'ESTETICISTA', 0),
(18, 'Alexa pestañas', 'lotusdream@gmai.com', 'Lashista', 65),
(19, 'Gleysi Gutierrez', 'gleysima@gmail.com', 'Manicurista', 50),
(20, 'Matthew  Real', 'Lotusdreamspa5@gmail.com', 'Esteticista', 50),
(21, 'Yasmin Sarmiento', 'yasminsarmiento1@outlook.es', 'Manicurista', 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `inicio` datetime NOT NULL,
  `fin` datetime NOT NULL,
  `descripcion` text DEFAULT NULL,
  `empleado_id` int(11) NOT NULL,
  `nombre_solicitante` varchar(255) NOT NULL,
  `correo_solicitante` varchar(255) NOT NULL,
  `numero_solicitante` varchar(20) NOT NULL,
  `precio_servicio` decimal(10,2) NOT NULL,
  `descuento` int(11) DEFAULT NULL,
  `ganancias_empleados` decimal(10,2) DEFAULT NULL,
  `ganancialotus` decimal(10,2) DEFAULT NULL,
  `total_descuento` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `titulo`, `inicio`, `fin`, `descripcion`, `empleado_id`, `nombre_solicitante`, `correo_solicitante`, `numero_solicitante`, `precio_servicio`, `descuento`, `ganancias_empleados`, `ganancialotus`, `total_descuento`) VALUES
(237, 'Maquillaje Artistico', '2024-11-01 17:30:00', '2024-11-01 18:45:00', NULL, 17, 'Santiago Barrietos', 'santiago.barrientos.torres@gmail.com', '3024949789', 24000.00, 0, 0.00, 24000.00, 24000.00),
(238, 'Depilacion bigote y Cejas', '2024-11-01 12:10:00', '2024-11-01 12:30:00', NULL, 10, 'Jina', 'Lotusdreamspa5@gmail.com', '0', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(239, 'manicure semipermanente', '2024-11-01 13:30:00', '2024-11-01 14:30:00', NULL, 10, 'Diana Acuña', 'Lotusdreamspa5@gmail.com', '0', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(240, 'Pedicure Semipermanente', '2024-11-01 13:30:00', '2024-11-01 14:30:00', NULL, 16, 'Diana Acuña', 'Lotusdreamspa5@gmail.com', '0', 55000.00, 0, 27500.00, 27500.00, 55000.00),
(241, 'mantenimiento press on', '2024-11-01 17:00:00', '2024-11-01 19:00:00', NULL, 10, 'laura romero', 'Lotusdreamspa5@gmail.com', '3006958893', 90000.00, 0, 45000.00, 45000.00, 90000.00),
(242, 'Manicure Tradicional', '2024-11-01 15:00:00', '2024-11-01 15:45:00', NULL, 16, 'Piedad', 'Lotusdreamspa5@gmail.com', '0', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(243, 'Pedicure Tradicional', '2024-11-01 15:00:00', '2024-11-01 16:00:00', NULL, 10, 'martha (mama Nata)', 'Lotusdreamspa5@gmail.com', '0', 30000.00, 0, 15000.00, 15000.00, 30000.00),
(244, 'Pedicure Spa secado rapido', '2024-11-02 12:10:00', '2024-11-02 13:00:00', NULL, 10, 'Ana Rodriguez', 'Lotusdreamspa5@gmail.com', '0', 40000.00, 0, 20000.00, 20000.00, 40000.00),
(245, 'Manicure Tradicional', '2024-11-02 13:00:00', '2024-11-02 13:45:00', NULL, 10, 'mara', 'Lotusdreamspa5@gmail.com', '0', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(246, 'Manicure Tradicional', '2024-11-02 13:45:00', '2024-11-02 14:15:00', NULL, 10, 'Daniela Suarez', 'Lotusdreamspa5@gmail.com', '0', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(247, 'Manicure Tradicional', '2024-11-02 10:30:00', '2024-11-02 11:15:00', NULL, 10, 'Carolina Villegas', 'Lotusdreamspa5@gmail.com', '0', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(248, 'manicure semipermanente', '2024-11-02 16:30:00', '2024-11-02 18:30:00', NULL, 10, 'claudia', 'Lotusdreamspa5@gmail.com', '0', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(249, 'Manicure Tradicional', '2024-11-02 18:30:00', '2024-11-02 19:00:00', NULL, 10, 'luisa Leon', 'luleon.95@gmail.com', '3138354810', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(250, 'Manicure Tradicional', '2024-11-02 16:00:00', '2024-11-02 16:30:00', NULL, 10, 'Mauricio Panche', 'adriveto1@gmail.com', '3143833132', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(251, 'Manicure Semi , Pedicure  Tradicional ', '2024-11-05 16:30:00', '2024-11-05 18:30:00', NULL, 14, 'Lina Medellín', 'Lotusdreamspa5@gmail.com', '3116574468', 80000.00, 0, 40000.00, 40000.00, 80000.00),
(252, 'Manicura Semipermanente ', '2024-11-05 15:00:00', '2024-11-05 16:00:00', NULL, 14, 'Lorena Bolivar', 'Lotusdreamspa5@gmail.com', '3214631049', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(254, 'Manicure Tradicional', '2024-11-07 13:30:00', '2024-11-07 14:20:00', NULL, 10, 'Natalia Vargas', 'Lotusdreamspa5@gmail.com', '3192261261', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(255, 'retiro de Semi + Recubrimiento de poligel ', '2024-11-07 18:30:00', '2024-11-07 19:30:00', NULL, 10, 'Jinna Aponte', 'Lotusdreamspa5@gmail.com', '3015172035', 105000.00, 0, 52500.00, 52500.00, 105000.00),
(256, 'Manicure y Pedicure  Tradicional spa, Depilacion', '2024-11-07 10:30:00', '2024-11-07 12:45:00', NULL, 10, 'Pilar Jimenez', 'Lotusdreamspa5@gmail.com', '0', 105000.00, 0, 52500.00, 52500.00, 105000.00),
(257, 'Masaje Relajante', '2024-11-16 16:00:00', '2024-11-16 17:15:00', NULL, 17, 'Indrid Fraser', 'Lotusdreamspa5@gmail.com', '3187853471', 50000.00, 0, 0.00, 50000.00, 50000.00),
(258, 'CAMBIO DE ESMALTE SECADO RAPIDO', '2024-11-07 17:15:00', '2024-11-07 17:35:00', NULL, 10, 'Elizabeth', 'Lotusdreamspa5@gmail.com', '3104073052', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(259, 'Manicure  secado rapidoy Pedicure  Tradicional s.r.+ retiro de semi', '2024-11-08 15:00:00', '2024-11-08 17:00:00', NULL, 10, 'Daniela Zapata', 'Lotusdreamspa5@gmail.com', '3113285868', 80000.00, 0, 40000.00, 40000.00, 80000.00),
(260, 'Retiro Esmalte Semipermanente y Manicure', '2024-11-08 11:10:00', '2024-11-08 12:30:00', NULL, 10, 'Lida de Mutiz', 'Lotusdreamspa5@gmail.com', '0', 40000.00, 0, 20000.00, 20000.00, 40000.00),
(261, 'Manicure Tradicional', '2024-11-08 13:45:00', '2024-11-08 14:20:00', NULL, 10, 'Monica Castañeda', 'Lotusdreamspa5@gmail.com', '0', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(262, 'Masaje Relajante', '2024-11-08 17:00:00', '2024-11-08 18:00:00', NULL, 17, 'Luisa', 'Lotusdreamspa5@gmail.com', '3107709540', 50000.00, 0, 0.00, 50000.00, 50000.00),
(263, 'Pedicure Tradicional SPA', '2024-11-09 10:50:00', '2024-11-09 11:50:00', NULL, 10, 'viviana', 'Lotusdreamspa5@gmail.com', '3123511024', 35000.00, 0, 17500.00, 17500.00, 35000.00),
(264, 'Limpieza facial con microdermoabrasion', '2024-11-09 15:00:00', '2024-11-09 16:15:00', NULL, 17, 'Viviana', 'Lotusdreamspa5@gmail.com', '3123511024', 50000.00, 0, 0.00, 50000.00, 50000.00),
(265, 'Masaje Relajante', '2024-11-09 16:30:00', '2024-11-09 17:30:00', NULL, 11, 'Enrique alvarez', 'enriqueap00@gmail.com', '3218660107', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(266, 'Masaje Relajante', '2024-11-09 16:30:00', '2024-11-09 17:30:00', NULL, 17, 'Valentina Ramirez', 'Lotusdreamspa5@gmail.com', '3218660107', 50000.00, 0, 0.00, 50000.00, 50000.00),
(267, 'Manicura Tradicional', '2024-11-09 16:00:00', '2024-11-09 17:00:00', NULL, 10, 'Maria Teresa', 'Lotusdreamspa5@gmail.com', '0', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(268, 'Manicure Deeping', '2024-11-09 17:30:00', '2024-11-09 19:00:00', NULL, 10, 'Mabel vanegas', 'Lotusdreamspa5@gmail.com', '3193406977', 80000.00, 20, 40000.00, 24000.00, 64000.00),
(269, 'Manicure y Pedicure Semipermanente', '2024-11-29 15:00:00', '2024-11-29 17:30:00', NULL, 10, 'Liliana', 'Lotusdreamspa5@gmail.com', '3125132884', 105000.00, 0, 52500.00, 52500.00, 105000.00),
(270, 'Manicure Semipermanente base Ruber', '2024-11-12 11:30:00', '2024-11-12 13:30:00', NULL, 19, 'July Plazas', 'Lotusdreamspa5@gmail.com', '0', 45000.00, 0, 22500.00, 22500.00, 45000.00),
(271, 'Manicura Tradicional', '2024-11-13 10:15:00', '2024-11-13 11:00:00', NULL, 19, 'Clara Ines Martinez', 'Lotusdreamspa5@gmail.com', '0', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(274, 'Manicura Semipermanente', '2024-11-16 17:00:00', '2024-11-16 18:00:00', NULL, 10, 'Valentina Bernal', 'Lotusdreamspa5@gmail.com', '3164737667', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(275, 'Manicura Recubrimiento de Acrilico, Decoracion y Retiro de Acrilico', '2024-11-14 12:15:00', '2024-11-14 15:30:00', NULL, 10, 'Tatiana Plazas', 'Lotusdreamspa5@gmail.com', '3045444411', 120000.00, 20, 60000.00, 36000.00, 96000.00),
(276, 'Manicure Base Ruber Semi +2 Retiro Semi +Pedicure Semi', '2024-11-14 17:00:00', '2024-11-14 20:00:00', NULL, 10, 'Mia Llinas', 'Lotusdreamspa5@gmail.com', '3012780406', 175000.00, 0, 87500.00, 87500.00, 175000.00),
(277, 'Manicure polygel con tips + uña esculpida', '2024-11-15 12:00:00', '2024-11-15 14:45:00', NULL, 10, 'Nicolle Plaza', 'Lotusdreamspa5@gmail.com', '350 8841719', 123000.00, 0, 61500.00, 61500.00, 123000.00),
(278, 'Depilacion de axilas', '2024-11-15 16:00:00', '2024-11-15 16:20:00', NULL, 10, 'karen', 'Lotusdreamspa5@gmail.com', '311 4408657', 15000.00, 0, 7500.00, 7500.00, 15000.00),
(279, 'Manicura Semipermanente, Pedicure Tradicional, depilaciòn axila, bigote piernacompleta', '2024-11-16 12:30:00', '2024-11-16 15:00:00', NULL, 10, 'Manuela Villamarin', 'Lotusdreamspa5@gmail.com', '0', 155000.00, 0, 77500.00, 77500.00, 155000.00),
(281, 'Manicure y Pedicure Tradicional ', '2024-11-19 16:00:00', '2024-11-19 18:00:00', NULL, 19, 'Ximena Gaitan', 'Lotusdreamspa5@gmail.com', '3164734162', 55000.00, 0, 27500.00, 27500.00, 55000.00),
(282, 'Manicure y Pedicure Tradicional Secado Rapido', '2024-11-20 10:00:00', '2024-11-20 12:00:00', NULL, 10, 'Liliana', 'Lotusdreamspa5@gmail.com', '3125132884', 65000.00, 0, 32500.00, 32500.00, 65000.00),
(283, 'Manicura Semipermanente', '2024-11-20 14:00:00', '2024-11-20 15:00:00', NULL, 10, 'Maria Paula Sanchez', 'Lotusdreamspa5@gmail.com', '3505417579', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(284, 'Manicure y Pedicure Tradicional ', '2024-11-19 13:45:00', '2024-11-19 15:30:00', NULL, 19, 'Elizabeth', 'Lotusdreamspa5@gmail.com', '3104073052', 55000.00, 0, 27500.00, 27500.00, 55000.00),
(285, 'manicure semipermanente', '2024-11-21 18:00:00', '2024-11-21 19:00:00', NULL, 10, 'Andrea Santiago', 'Lotusdreamspa5@gmail.com', '3176591090', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(286, 'pedicure tradicional', '2024-11-20 18:00:00', '2024-11-20 18:30:00', NULL, 10, 'Francisco', 'Lotusdreamspa5@gmail.com', '0', 30000.00, 0, 15000.00, 15000.00, 30000.00),
(288, 'Manicure y Pedicure Tradicional ', '2024-11-21 15:02:00', '2024-11-21 16:30:00', NULL, 10, 'Martha', 'Lotusdreamspa5@gmail.com', '0', 55000.00, 0, 27500.00, 27500.00, 55000.00),
(289, 'Manicura Semipermanente', '2024-11-21 17:00:00', '2024-11-21 18:00:00', NULL, 10, 'Bibiana', 'Lotusdreamspa5@gmail.com', '0', 50000.00, 15, 25000.00, 17500.00, 42500.00),
(290, 'Pedicure Semi', '2024-11-23 11:00:00', '2024-11-23 12:00:00', NULL, 10, 'Andrea Santiago', 'Lotusdreamspa5@gmail.com', '3176591090', 55000.00, 0, 27500.00, 27500.00, 55000.00),
(291, 'Manicura Semipermanente', '2024-11-23 13:00:00', '2024-11-23 14:00:00', NULL, 10, 'Jinna Aponte', 'Lotusdreamspa5@gmail.com', '3015172035', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(292, 'Manicure y Pedicure Semipermanente', '2024-11-23 09:30:00', '2024-11-23 11:00:00', NULL, 10, 'DIANA ACUÑA', 'Lotusdreamspa5@gmail.com', '0', 105000.00, 0, 52500.00, 52500.00, 105000.00),
(294, 'Manicura Tradicional', '2024-11-22 14:30:00', '2024-11-22 15:15:00', NULL, 19, 'lina campos', 'Lotusdreamspa5@gmail.com', '3185605826', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(297, 'Manicure Semipermanente', '2024-11-23 14:45:00', '2024-11-23 15:45:00', NULL, 10, 'Ximena Esparro', 'Lotusdreamspa5@gmail.com', '0', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(298, 'Manicura Tradicional', '2024-11-23 15:45:00', '2024-11-23 16:30:00', NULL, 10, 'Maria Teresa Diaz', 'Lotusdreamspa5@gmail.com', '0', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(299, 'Pedicure Tradicional', '2024-11-23 16:00:00', '2024-11-23 16:45:00', NULL, 11, 'Ximena Esparro', 'Lotusdreamspa5@gmail.com', '0', 30000.00, 0, 15000.00, 15000.00, 30000.00),
(300, 'Masaje Relajante', '2024-11-26 17:00:00', '2024-11-26 18:00:00', NULL, 17, 'Ingrid f', 'Lotusdreamspa5@gmail.com', '3187853471', 50000.00, 0, 0.00, 50000.00, 50000.00),
(301, 'Manicura Tradicional', '2024-11-28 17:30:00', '2024-11-28 18:15:00', NULL, 14, 'Alejandra Trujillo', 'Lotusdreamspa5@gmail.com', '3112249407', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(302, 'Pedicure Tradicional spa', '2024-11-25 16:30:00', '2024-11-25 17:30:00', NULL, 19, 'carolina Rodriguez', 'Lotusdreamspa5@gmail.com', '3106180623', 35000.00, 0, 17500.00, 17500.00, 35000.00),
(303, 'Limpieza facial sencilla', '2024-11-25 17:30:00', '2024-11-25 18:30:00', NULL, 17, 'Carolina Rodriguez', 'Lotusdreamspa5@gmail.com', '3106180623', 30000.00, 0, 0.00, 30000.00, 30000.00),
(305, 'Depilacion', '2024-11-27 15:00:00', '2024-11-27 16:00:00', NULL, 10, 'sara', 'Lotusdreamspa5@gmail.com', '3106130672', 70000.00, 0, 35000.00, 35000.00, 70000.00),
(306, 'Masaje Relajante', '2024-11-30 17:00:00', '2024-11-30 18:00:00', NULL, 17, 'Ivania', 'ivaniapatricia@gmail.com', '3143941753', 50000.00, 0, 0.00, 50000.00, 50000.00),
(307, 'Postura pestañas Efecto Natural + Retiro', '2024-11-30 18:00:00', '2024-11-30 19:00:00', NULL, 18, 'Ivania', 'ivaniapatricia@gmail.com', '3143941753', 100000.00, 0, 65000.00, 35000.00, 100000.00),
(308, 'Manicura Tradicional', '2024-11-28 13:00:00', '2024-11-28 14:00:00', NULL, 14, 'Lina Medellin', 'Lotusdreamspa5@gmail.com', '3116574468', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(309, 'Masaje Relajante', '2024-11-30 11:30:00', '2024-11-30 00:30:00', NULL, 17, 'patricia gomez', 'Lotusdreamspa5@gmail.com', '3057721555', 50000.00, 0, 0.00, 50000.00, 50000.00),
(310, 'Manicura Tradicional', '2024-11-30 13:00:00', '2024-11-30 13:45:00', NULL, 10, 'Natalia Vargas', 'Lotusdreamspa5@gmail.com', '3192261261', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(313, 'Manicura Semipermanente con base Ruber + Pedicure semiperm', '2024-12-06 11:00:00', '2024-12-06 13:00:00', NULL, 10, 'Mara', 'Lotusdreamspa5@gmail.com', '0', 145000.00, 0, 72500.00, 72500.00, 145000.00),
(314, 'Manicura Tradicional', '2024-11-29 18:00:00', '2024-11-29 18:30:00', NULL, 10, 'Mara', 'Lotusdreamspa5@gmail.com', '0', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(315, 'Manicure y Pedicure Tradicional con Jelly Spa', '2024-11-30 16:00:00', '2024-11-30 18:00:00', NULL, 19, 'Elizabeth', 'Lotusdreamspa5@gmail.com', '3104073052', 60000.00, 0, 30000.00, 30000.00, 60000.00),
(318, 'Manicure Uñas Esculpidas', '2024-12-03 13:00:00', '2024-12-03 15:30:00', NULL, 19, 'Valentina ', 'Lotusdreamspa5@gmail.com', '3102530353', 130000.00, 0, 65000.00, 65000.00, 130000.00),
(319, 'retiro de Acrilico en Manos Y Retiro de Semi pies', '2024-12-02 10:30:00', '2024-12-02 11:30:00', NULL, 19, 'Antoinette Muro', 'Lotusdreamspa5@gmail.com', '(514)8085851', 40000.00, 15, 20000.00, 14000.00, 34000.00),
(320, 'Retoque de Pestañas', '2024-12-02 16:00:00', '2024-12-02 17:00:00', NULL, 18, 'Lorena Bolivar', 'Lotusdreamspa5@gmail.com', '3214631049', 60000.00, 0, 39000.00, 21000.00, 60000.00),
(321, 'Manicure y Pedicure  Tradicional', '2024-12-02 15:00:00', '2024-12-02 16:30:00', NULL, 19, 'sector', 'Lotusdreamspa5@gmail.com', '0', 55000.00, 0, 27500.00, 27500.00, 55000.00),
(322, 'Manicure Tradicional', '2024-12-03 16:30:00', '2024-12-03 17:00:00', NULL, 19, 'Blanca Lopez', 'Lotusdreamspa5@gmail.com', '0', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(323, 'Manicura Semipermanente base ruber', '2024-12-26 09:00:00', '2024-12-26 10:00:00', NULL, 19, 'Alejandra Pantoja', 'Lotusdreamspa5@gmail.com', '3103059763', 90000.00, 0, 45000.00, 45000.00, 90000.00),
(324, 'Manicura Semipermanente', '2024-12-26 10:00:00', '2024-12-26 11:00:00', NULL, 19, 'Nancy Pantoja ', 'Lotusdreamspa5@gmail.com', '3103059763', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(325, 'Manicura Semipermanente base Ruber', '2024-12-04 11:15:00', '2024-12-04 12:15:00', NULL, 19, 'Alejandra Pantoja', 'Lotusdreamspa5@gmail.com', '3103059763', 90000.00, 0, 45000.00, 45000.00, 90000.00),
(326, 'Manicura Semipermanente', '2024-12-04 12:15:00', '2024-12-04 13:15:00', NULL, 19, 'Nancy Pantoja ', 'Lotusdreamspa5@gmail.com', '3103059763', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(328, 'Manicure Tradicional y Retiro Semi', '2024-12-04 13:30:00', '2024-12-04 14:15:00', NULL, 19, 'Maria Paula Bernal', 'Lotusdreamspa5@gmail.com', '0', 32000.00, 0, 16000.00, 16000.00, 32000.00),
(329, 'Manicura Semipermanente', '2024-12-04 17:30:00', '2024-12-04 18:30:00', NULL, 19, 'Carolina Bernal', 'Lotusdreamspa5@gmail.com', '3132385124', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(330, 'Manicure Tradicional', '2024-12-05 18:30:00', '2024-12-05 19:00:00', NULL, 10, 'Mauricio Panche', 'Lotusdreamspa5@gmail.com', '0', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(332, 'Manicure Tradicional', '2024-12-06 17:00:00', '2024-12-06 17:45:00', NULL, 10, 'luz Stella Parra', 'stellyta99@hotmail.com', '3227594893', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(333, 'Manicure y Pedicure  Tradicional', '2024-12-06 13:00:00', '2024-12-06 14:00:00', NULL, 10, 'Daniela Suarez', 'Lotusdreamspa5@gmail.com', '3103440049', 55000.00, 0, 27500.00, 27500.00, 55000.00),
(334, 'Manicura Semipermanente', '2024-12-07 16:00:00', '2024-12-07 17:00:00', NULL, 11, 'Maria fernanda Cifuente', 'mafecd@gmail.com', '3108038994', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(335, 'Manicure y Pedicure  Tradicional spa', '2024-12-07 16:00:00', '2024-12-07 18:00:00', NULL, 10, 'Carolina Villegas', 'Lotusdreamspa5@gmail.com', '0', 60000.00, 0, 30000.00, 30000.00, 60000.00),
(336, 'Manicure polygel y decoracion', '2024-12-07 13:00:00', '2024-12-07 15:00:00', NULL, 10, 'laura romero', 'Lotusdreamspa5@gmail.com', '3006958893', 93000.00, 0, 46500.00, 46500.00, 93000.00),
(337, 'Retiro Esmalte Semipermanente  en manos y pies', '2024-12-07 14:15:00', '2024-12-07 14:45:00', NULL, 11, 'Manuela pabon', 'Lotusdreamspa5@gmail.com', '0', 30000.00, 0, 15000.00, 15000.00, 30000.00),
(338, 'Manicure y Pedicure  Tradicional', '2024-12-16 09:00:00', '2024-12-16 11:00:00', NULL, 19, 'Ximena Gaitan', 'Lotusdreamspa5@gmail.com', '3164734162', 55000.00, 0, 27500.00, 27500.00, 55000.00),
(339, 'Pedicure Tradicional', '2024-12-09 17:00:00', '2024-02-09 18:00:00', NULL, 19, 'luz Stella Parra', 'stellyta99@hotmail.com', '3227594893', 30000.00, 0, 15000.00, 15000.00, 30000.00),
(343, 'Depilacion Axila', '2024-12-07 18:00:00', '2024-12-07 18:15:00', NULL, 10, 'santiago', 'Lotusdreamspa5@gmail.com', '0', 15000.00, 0, 7500.00, 7500.00, 15000.00),
(344, 'Manicure  Base Ruber Semi', '2024-12-12 18:00:00', '2024-12-12 19:00:00', NULL, 10, 'Laura castañeda', 'Lotusdreamspa5@gmail.com', '3232342105', 90000.00, 0, 45000.00, 45000.00, 90000.00),
(345, 'Masaje Relajante', '2024-12-11 10:00:00', '2024-12-11 11:00:00', NULL, 17, 'Daniela Mosquera', 'Lotusdreamspa5@gmail.com', '3168333452', 50000.00, 0, 0.00, 50000.00, 50000.00),
(346, 'Masaje Relajante', '2024-12-11 11:15:00', '2024-12-11 12:15:00', NULL, 17, 'Rita Lebbos', 'Lotusdreamspa5@gmail.com', '3168333452', 50000.00, 0, 0.00, 50000.00, 50000.00),
(347, 'Manicure semi y Pedicure  Tradicional', '2024-12-10 10:45:00', '2024-12-10 12:45:00', NULL, 19, 'Ximena Esparro', 'Lotusdreamspa5@gmail.com', '0', 80000.00, 0, 40000.00, 40000.00, 80000.00),
(348, 'Manicure Semipermanente y Retiro', '2024-12-11 10:30:00', '2024-12-11 11:30:00', NULL, 19, 'Alejandra Cabrera', 'Lotusdreamspa5@gmail.com', '3134687098', 65000.00, 0, 32500.00, 32500.00, 65000.00),
(349, 'Manicure Press Onn+decoracion', '2024-12-10 17:00:00', '2024-12-10 19:00:00', NULL, 19, 'Laura Sofia', 'suarezv.sofia@gmail.com', '3208633112', 102000.00, 0, 51000.00, 51000.00, 102000.00),
(350, 'Manicure y Pedicure Semi', '2024-12-12 10:30:00', '2024-12-12 13:00:00', NULL, 10, 'maria paula Sanchez', 'Lotusdreamspa5@gmail.com', '3505417579', 105000.00, 0, 52500.00, 52500.00, 105000.00),
(351, 'Manicure Tradicional', '2024-12-11 10:00:00', '2024-12-11 10:30:00', NULL, 19, 'Rita Lebbos', 'Lotusdreamspa5@gmail.com', '3168333452', 25000.00, 100, 12500.00, -12500.00, 0.00),
(352, 'Manicure  Tradicional ', '2024-12-12 13:00:00', '2024-12-12 13:45:00', NULL, 10, 'Sandra Zapata', 'sandrisz23@hotmail.com', '3202424474', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(353, 'Manicure y Pedicure Semipermanente', '2024-12-13 16:00:00', '2024-12-13 18:00:00', NULL, 10, 'DIANA ACUÑA', 'Lotusdreamspa5@gmail.com', '0', 105000.00, 0, 52500.00, 52500.00, 105000.00),
(356, 'Pedicure Tradicional', '2024-12-14 13:00:00', '2024-12-14 14:00:00', NULL, 10, 'Sandra Zapata', 'sandrisz23@hotmail.com', '3202424474', 30000.00, 0, 15000.00, 15000.00, 30000.00),
(357, 'Manicure y Pedicure Semipermanente', '2024-12-13 14:00:00', '2024-12-13 16:20:00', NULL, 10, 'Andrea Santiago', 'Lotusdreamspa5@gmail.com', '3176591090', 105000.00, 0, 52500.00, 52500.00, 105000.00),
(358, 'Masaje Relajante', '2024-12-12 17:30:00', '2024-12-12 18:30:00', NULL, 17, 'Luisa', 'Lotusdreamspa5@gmail.com', '3107709540', 50000.00, 0, 0.00, 50000.00, 50000.00),
(359, 'Limpieza con Microdermoabrasion', '2024-12-14 15:00:00', '2024-12-14 16:00:00', NULL, 17, 'Maria Jose', 'Lotusdreamspa5@gmail.com', '3107686721', 40000.00, 0, 0.00, 40000.00, 40000.00),
(360, 'Manicura Tradicional', '2024-12-12 16:45:00', '2024-12-12 17:30:00', NULL, 10, 'Maria Jose', 'Lotusdreamspa5@gmail.com', '3107686721', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(361, 'Pedicure Tradicional', '2024-12-13 10:00:00', '2024-12-13 11:00:00', NULL, 10, 'Carolina Bernal', 'Lotusdreamspa5@gmail.com', '3132385124', 30000.00, 0, 15000.00, 15000.00, 30000.00),
(363, 'Masaje Relajante', '2024-12-20 11:00:00', '2024-12-20 12:00:00', NULL, 17, 'LAURA PEDRAZA', 'Lotusdreamspa5@gmail.com', '3118927535', 50000.00, 0, 0.00, 50000.00, 50000.00),
(364, 'MANICURE TRADICIONAL ', '2024-12-14 10:40:00', '2024-12-14 11:30:00', NULL, 19, 'VIVIANA', 'Lotusdreamspa5@gmail.com', '0', 30000.00, 0, 15000.00, 15000.00, 30000.00),
(365, 'PEDICURE TRADICIONAL SECADO RAPIDO', '2024-12-14 10:30:00', '2024-12-14 11:30:00', NULL, 19, 'VIVIANA', 'Lotusdreamspa5@gmail.com', '0', 35000.00, 0, 17500.00, 17500.00, 35000.00),
(366, 'DEPILACION CEJAS', '2024-12-14 11:30:00', '2024-12-14 11:45:00', NULL, 10, 'PAMELA', 'Lotusdreamspa5@gmail.com', '0', 15000.00, 0, 7500.00, 7500.00, 15000.00),
(367, 'Manicura Semipermanente', '2024-12-14 13:00:00', '2024-12-14 14:00:00', NULL, 19, 'Sector', 'Lotusdreamspa5@gmail.com', '0', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(368, 'Manicure Tradicional HOMBRE', '2024-12-14 14:00:00', '2024-12-14 15:00:00', NULL, 10, 'MAURICIO PANCHE', 'Lotusdreamspa5@gmail.com', '0', 30000.00, 0, 15000.00, 15000.00, 30000.00),
(369, 'Manicura Tradicional', '2024-12-14 16:00:00', '2024-12-14 16:30:00', NULL, 19, 'Sector', 'Lotusdreamspa5@gmail.com', '0', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(370, 'Manicure Tradicional', '2024-12-14 17:00:00', '2024-12-14 18:00:00', NULL, 19, 'elizabeth', 'Lotusdreamspa5@gmail.com', '0', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(371, 'Pedicure Tradicional spa', '2024-12-14 16:00:00', '2024-12-14 17:00:00', NULL, 10, 'ELIZABETH', 'Lotusdreamspa5@gmail.com', '0', 35000.00, 0, 17500.00, 17500.00, 35000.00),
(372, 'Manicura Tradicional', '2024-12-16 14:00:00', '2024-12-16 15:00:00', NULL, 19, 'ANA SALAMANCA', 'Lotusdreamspa5@gmail.com', '3229059406', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(373, 'Manicure y Pedicure Tradicional ', '2024-12-18 14:00:00', '2024-12-18 16:00:00', NULL, 19, 'Elizabeth', 'Lotusdreamspa5@gmail.com', '0', 55000.00, 0, 27500.00, 27500.00, 55000.00),
(374, 'Manicura Tradicional', '2024-12-16 11:30:00', '2024-12-16 12:30:00', NULL, 19, 'Silvana Galeano', 'Lotusdreamspa5@gmail.com', '0', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(375, 'Manicura Tradicional', '2024-12-16 17:00:00', '2024-12-16 18:00:00', NULL, 19, 'luciana', 'Lotusdreamspa5@gmail.com', '3505613412', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(376, 'Manicure Acrilico, pedicure semi y depilacion', '2024-12-17 18:00:00', '2024-12-17 21:00:00', NULL, 10, 'Maria jose Diaz', 'mariajdpe@hotmail.com', '3114868792', 215000.00, 0, 107500.00, 107500.00, 215000.00),
(377, 'manicure Polygel y pedicure semipermanente', '2024-12-21 08:00:00', '2024-12-21 11:00:00', NULL, 10, 'Jinna Aponte', 'Lotusdreamspa5@gmail.com', '3015172035', 145000.00, 0, 72500.00, 72500.00, 145000.00),
(378, 'manicure tradicional', '2024-12-18 09:00:00', '2024-12-18 10:00:00', NULL, 19, 'Claudia Poveda', 'Lotusdreamspa5@gmail.com', '0', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(379, 'Masaje Relajante', '2024-12-21 14:00:00', '2024-12-21 15:00:00', NULL, 17, 'ingrid', 'Lotusdreamspa5@gmail.com', '3187853471', 50000.00, 0, 0.00, 50000.00, 50000.00),
(380, 'Pedicure Tradicional ', '2024-12-18 16:00:00', '2024-12-18 17:00:00', NULL, 19, 'Cristina Moreno', 'Lotusdreamspa5@gmail.com', '3102748159', 30000.00, 0, 15000.00, 15000.00, 30000.00),
(381, 'Manicura Tradicional', '2024-12-19 10:30:00', '2024-12-19 11:15:00', NULL, 10, 'Estefania Meluk', 'Lotusdreamspa5@gmail.com', '3105699212', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(382, 'Manicura Tradicional', '2024-12-19 11:15:00', '2024-12-19 12:00:00', NULL, 10, 'Maria Teresa Diaz', 'Lotusdreamspa5@gmail.com', '3105699212', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(383, 'Manicura Semipermanente + capa base ruber', '2024-12-19 12:00:00', '2024-12-19 13:45:00', NULL, 10, 'Bibiana', 'Lotusdreamspa5@gmail.com', '3115977142', 65000.00, 0, 32500.00, 32500.00, 65000.00),
(384, 'Manicura Tradicional', '2024-12-19 14:00:00', '2024-12-19 15:00:00', NULL, 10, 'Ana Cartwright', 'Lotusdreamspa5@gmail.com', '3053140108', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(385, 'Manicure Semipermanente y Pedicure Tradicional', '2024-12-20 12:00:00', '2024-12-20 15:00:00', NULL, 10, 'elizenia gomez', 'Lotusdreamspa5@gmail.com', '3002989977', 95000.00, 0, 47500.00, 47500.00, 95000.00),
(386, 'Pedicure Tradicional spa', '2024-12-19 15:00:00', '2024-12-19 16:00:00', NULL, 10, 'carlos', 'Lotusdreamspa5@gmail.com', '0', 35000.00, 0, 17500.00, 17500.00, 35000.00),
(387, 'Limpieza Facial profunda', '2024-12-20 10:00:00', '2024-12-20 11:30:00', NULL, 17, 'Tatiana Plazas', 'Lotusdreamspa5@gmail.com', '3045444411', 50000.00, 20, 0.00, 40000.00, 40000.00),
(388, 'Limpieza con Microdermoabrasion', '2024-12-21 11:00:00', '2024-12-21 12:00:00', NULL, 17, 'Jinna Aponte', 'Lotusdreamspa5@gmail.com', '3015172035', 40000.00, 0, 0.00, 40000.00, 40000.00),
(389, 'Manicure Tradicional y Depilacion pierna, bigote cejas', '2024-12-20 10:00:00', '2024-12-20 11:30:00', NULL, 10, 'Vanesa Lopez', 'Lotusdreamspa5@gmail.com', '3125044878', 75000.00, 0, 37500.00, 37500.00, 75000.00),
(390, 'Manicura Tradicional y depilacion bigote', '2024-12-20 11:30:00', '2024-12-20 12:00:00', NULL, 10, 'Sector', 'Lotusdreamspa5@gmail.com', '3507742168', 35000.00, 0, 17500.00, 17500.00, 35000.00),
(391, 'Manicure semi con capa base ruber y pies tradicional', '2024-12-20 15:30:00', '2024-12-20 17:00:00', NULL, 10, 'Carolina Villegas', 'Lotusdreamspa5@gmail.com', '0', 95000.00, 0, 47500.00, 47500.00, 95000.00),
(392, 'Manicure semi y Pedicure Tradicional ', '2024-12-20 17:00:00', '2024-12-20 19:00:00', NULL, 10, 'Alexandra Perilla', 'Lotusdreamspa5@gmail.com', '3173770716', 80000.00, 0, 40000.00, 40000.00, 80000.00),
(393, 'Masaje Relajante', '2024-12-21 15:15:00', '2024-12-21 16:15:00', NULL, 17, 'Sara Gabriela', 'Lotusdreamspa5@gmail.com', '3022400087', 50000.00, 0, 0.00, 50000.00, 50000.00),
(394, 'Manicure y Pedicure Tradicional ', '2024-12-23 18:00:00', '2024-12-23 20:00:00', NULL, 19, 'Andres Soto', 'Lotusdreamspa5@gmail.com', '3174230227', 55000.00, 0, 27500.00, 27500.00, 55000.00),
(395, 'Manicure Tradicional y pedicure', '2024-12-23 18:00:00', '2024-12-23 20:00:00', NULL, 10, 'Patricia Guzman', 'Lotusdreamspa5@gmail.com', '3174230227', 55000.00, 0, 27500.00, 27500.00, 55000.00),
(396, 'Manicure y Pedicure Tradicional ', '2024-12-23 20:00:00', '2024-12-23 22:00:00', NULL, 10, 'Angelica Mora', 'Lotusdreamspa5@gmail.com', '3174230227', 55000.00, 0, 27500.00, 27500.00, 55000.00),
(397, 'Manicura Tradicional', '2024-12-23 12:30:00', '2024-12-23 13:30:00', NULL, 19, 'Natalia Vargas', 'Lotusdreamspa5@gmail.com', '3192261261', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(398, 'Manicura Tradicional', '2024-12-24 11:00:00', '2024-12-24 11:45:00', NULL, 19, 'Olga Granados', 'Lotusdreamspa5@gmail.com', '3003929921', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(400, 'Manicure Semi y Pedicure Tradicional', '2024-12-24 14:00:00', '2024-12-24 16:00:00', NULL, 19, 'Catalina', 'Lotusdreamspa5@gmail.com', '0', 40000.00, 0, 20000.00, 20000.00, 40000.00),
(403, 'depilacion bigote', '2024-12-24 12:30:00', '2024-12-24 12:45:00', NULL, 10, 'Priscila caballero', 'Lotusdreamspa5@gmail.com', '3505904697', 10000.00, 0, 5000.00, 5000.00, 10000.00),
(404, ' depilación Pierna completa', '2024-12-27 11:00:00', '2024-12-27 12:30:00', NULL, 14, 'LAURA PEDRAZA', 'Lotusdreamspa5@gmail.com', '3118927535', 35000.00, 0, 17500.00, 17500.00, 35000.00),
(405, 'Pedicure Tradicional', '2024-12-24 14:45:00', '2024-12-24 15:30:00', NULL, 10, 'JULIETA', 'Lotusdreamspa5@gmail.com', '0', 30000.00, 20, 15000.00, 9000.00, 24000.00),
(406, 'Pedicure Tradicional', '2024-12-27 14:15:00', '2024-12-27 15:30:00', NULL, 19, 'laura jaime', 'Lotusdreamspa5@gmail.com', '0', 30000.00, 50, 15000.00, 0.00, 15000.00),
(407, 'pedicure semipermanente', '2024-12-27 13:00:00', '2024-12-27 14:00:00', NULL, 19, 'Alejandra Zorro', 'Lotusdreamspa5@gmail.com', '0', 55000.00, 0, 27500.00, 27500.00, 55000.00),
(408, 'Manicura Semipermanente', '2024-12-27 13:00:00', '0000-00-00 00:00:00', NULL, 14, 'Alejandra Zorro', 'Lotusdreamspa5@gmail.com', '0', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(409, 'Manicura Semipermanente', '2024-12-31 11:00:00', '2024-12-31 12:00:00', NULL, 19, 'Laura Silvana Leal', 'Lotusdreamspa5@gmail.com', '3213941669', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(410, 'Retiro de Semi y Manicure Tradicional', '2024-12-30 15:00:00', '2024-12-30 16:30:00', NULL, 19, 'maria fernanda ', 'Lotusdreamspa5@gmail.com', '3108038994', 40000.00, 0, 20000.00, 20000.00, 40000.00),
(411, 'Manicure Tradicional', '2024-12-30 13:30:00', '2024-12-30 14:15:00', NULL, 19, 'vanesa lopez', 'Lotusdreamspa5@gmail.com', '3125044878', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(412, 'Manicure acrilico y dos uñas esculpidas', '2024-12-31 08:00:00', '2024-12-31 11:00:00', NULL, 19, 'Tatiana Plazas', 'Lotusdreamspa5@gmail.com', '0', 116000.00, 20, 58000.00, 34800.00, 92800.00),
(413, 'Manicura Semipermanente y Pedicure Tradicional', '2024-12-30 16:40:00', '2024-12-30 18:00:00', NULL, 19, 'karen', 'Lotusdreamspa5@gmail.com', '0', 80000.00, 0, 40000.00, 40000.00, 80000.00),
(414, 'Manicura Semipermanente + Decoracion', '2024-12-30 18:00:00', '2024-12-30 18:45:00', NULL, 19, 'Daniela Estupiñan', 'Lotusdreamspa5@gmail.com', '3158814844', 60000.00, 0, 30000.00, 30000.00, 60000.00),
(415, 'Manicura Semipermanente', '2024-12-31 12:00:00', '2024-12-31 13:00:00', NULL, 19, 'Claudia', 'Lotusdreamspa5@gmail.com', '3152648198', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(416, 'Manicura Semipermanente', '2024-12-31 13:30:00', '2024-12-31 14:30:00', NULL, 19, 'Andrea Santiago', 'Lotusdreamspa5@gmail.com', '3176591090', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(417, 'manicure semipermanente y pedicure', '2025-01-11 11:00:00', '2025-01-11 00:30:00', NULL, 10, 'Carolina Villegas', 'Lotusdreamspa5@gmail.com', '+57 322 3680195', 80000.00, 0, 40000.00, 40000.00, 80000.00),
(418, 'Manicure y pedicure tradicional', '2025-01-09 10:00:00', '2025-01-09 11:30:00', NULL, 10, 'Francisco', 'Lotusdreamspa5@gmail.com', '3505417579', 55000.00, 0, 27500.00, 27500.00, 55000.00),
(419, 'Manicura Semipermanente', '2025-01-10 14:00:00', '2025-01-10 15:00:00', NULL, 10, 'Jinna Aponte', 'Gaponte3@hotmail.com', '3015172035', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(420, 'Manicura Semipermanente', '2025-01-10 17:30:00', '2025-01-10 18:30:00', NULL, 10, 'Maria Paula Sanchez', 'Lotusdreamspa5@gmail.com', '3505417579', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(421, 'Manicure y pedicure semipermanente', '2025-01-16 14:00:00', '2025-01-16 16:30:00', NULL, 10, 'Diana Acuñe', 'Lotusdreamspa5@gmail.com', '3015626675', 105000.00, 0, 52500.00, 52500.00, 105000.00),
(422, 'Retiro de Poly gel', '2025-01-25 10:00:00', '2025-01-25 11:35:00', NULL, 17, 'Laura Garzon', 'Lamagali97@gmail.com', '3164953208', 25000.00, 0, 0.00, 25000.00, 25000.00),
(423, 'Manicure semipermanente', '2025-01-10 11:00:00', '2025-01-10 12:00:00', NULL, 10, 'Juliana Ortiz', 'Lotusdreamspa5@gmail.com', '3208652567', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(424, 'Manicure Tradicional', '2025-01-11 11:00:00', '2025-01-11 12:00:00', NULL, 11, 'Ana Cartwright', 'Ana.cartwrightco@gmail.com', '3053140108', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(425, 'Retoque de Poly gel ', '2025-01-11 17:00:00', '2025-01-11 19:20:00', NULL, 10, 'Laura Romero', 'Laura8romero25@gmail.com', '3006958893', 90000.00, 0, 45000.00, 45000.00, 90000.00),
(426, 'Manicura Tradicional niña', '2025-01-10 13:00:00', '2025-01-10 14:00:00', NULL, 14, 'Cristine', 'Lotusdreamspa5@gmail.com', '3142866048', 12500.00, 50, 6250.00, 0.00, 6250.00),
(427, 'Manicura Semipermanente', '2025-01-08 15:00:00', '2025-01-08 16:00:00', NULL, 19, 'Leidy Borques', 'Lotusdreamspa5@gmail.com', '0', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(428, 'Manicura Tradicional y pedicure semi', '2025-01-08 13:20:00', '2025-01-08 15:00:00', NULL, 19, 'Carolina vallesteros', 'Lotusdreamspa5@gmail.com', '3213472315', 80000.00, 0, 40000.00, 40000.00, 80000.00),
(429, 'Manicura y pedicure tradicional ', '2025-01-08 16:00:00', '2025-01-08 17:30:00', NULL, 19, 'Dennis Torres', 'Lotusdreamspa5@gmail.com', '0', 55000.00, 0, 27500.00, 27500.00, 55000.00),
(430, 'Depilacion bigote y cejas ', '2025-01-07 11:00:00', '2025-01-07 11:36:00', NULL, 14, 'Valentina', 'Lotusdreamspa5@gmail.com', '3507742168', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(431, 'Manicura y pedicure tradicional', '2025-01-07 16:20:00', '2025-01-07 17:40:00', NULL, 19, 'Ximena Gaitan', 'Lotusdreamspa5@gmail.com', '3164734162', 55000.00, 0, 27500.00, 27500.00, 55000.00),
(432, 'Masaje Descontracturante', '2025-01-07 17:00:00', '2025-01-07 18:00:00', NULL, 20, 'Andrea Moriones', 'Lotusdreamspa5@gmail.com', '3144022383', 100000.00, 0, 50000.00, 50000.00, 100000.00),
(433, 'Pedicure tradicional y Manicure Base Rubber ', '2025-01-11 14:00:00', '2025-01-11 16:00:00', NULL, 10, 'Laura Castañeda', 'castaneda.laura@gmail.com', '3232342105', 100000.00, 0, 50000.00, 50000.00, 100000.00),
(434, 'Pedicure Semipermanente', '2025-01-16 17:30:00', '2025-01-16 19:00:00', NULL, 10, 'Maria Paula Sanchez', 'mpaulasanchezc@hotmail.com', '3505417579', 55000.00, 0, 27500.00, 27500.00, 55000.00),
(435, 'Manicura Tradicional Secado Rápido', '2025-01-11 10:40:00', '2025-01-11 11:20:00', NULL, 10, 'Adriana Vargas', 'Lotusdreamspa5@gmail.com', '3112061936', 30000.00, 0, 15000.00, 15000.00, 30000.00),
(436, 'Manicure Tradicional', '2025-01-13 13:00:00', '2025-01-13 14:05:00', NULL, 19, 'Karen Hernandez', 'Kari.herza@gmail.com', '3223058516', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(437, 'Manicura Semipermanente', '2025-01-13 17:31:00', '2025-01-13 18:30:00', NULL, 14, 'Bibiana Orozco', 'Lotusdreamspa5@gmail.com', '3007413331', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(438, 'Pedicure Tradicional', '2025-01-15 09:30:00', '2025-01-15 10:35:00', NULL, 19, 'Cristina ', 'Cristinamunoz2346@gmail.com', '311 2832553', 30000.00, 0, 15000.00, 15000.00, 30000.00),
(439, 'Manicura Tradicional', '2025-01-14 11:30:00', '2025-01-14 12:40:00', NULL, 19, 'Lucia Monsalve', 'Lotusdreamspa5@gmail.com', '3208995211', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(440, 'Manicura Tradicional Secado Rápido', '2025-01-14 17:15:00', '2025-01-14 18:00:00', NULL, 19, 'Alejandra Trujillo', 'Lotusdreamspa5@gmail.com', '311 2249407', 30000.00, 0, 15000.00, 15000.00, 30000.00),
(441, 'Manicura Tradicional', '2025-01-15 16:30:00', '2025-01-15 17:30:00', NULL, 19, 'Mara', 'Maracif20@hotmail.com', '3505613412', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(442, 'Manicura Tradicional', '2025-01-15 16:30:00', '2025-01-15 17:30:00', NULL, 14, 'Luciana', 'Maracif20@hotmail.com', '3505613412', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(443, 'Manicura Semipermanente y Pedicure tradicional', '2025-01-15 12:00:00', '2025-01-15 13:30:00', NULL, 19, 'Daniela Suarez', 'Lotusdreamspa5@gmail.com', '3103440049', 85000.00, 10, 42500.00, 34000.00, 76500.00),
(444, 'Reparacion de esmalte semi- sin cobro ', '2025-01-15 17:30:00', '2025-01-15 18:30:00', NULL, 19, 'Leidy Borques', 'leidybohorquez084@gmail.com', '3137683479', 0.00, 0, 0.00, 0.00, 0.00),
(445, 'Masaje Relajante', '2025-01-18 10:30:00', '2025-01-18 11:30:00', NULL, 17, 'Daniela Suarez', 'danielasuarez_r@hotmail.com', '3103440049', 110000.00, 0, 0.00, 110000.00, 110000.00),
(446, 'Manicure tradicional', '2025-01-17 15:00:00', '2025-01-17 16:10:00', NULL, 10, 'Maria Jose Cabrera', 'Majok26@hotmail.com', '3182065275', 30000.00, 0, 15000.00, 15000.00, 30000.00),
(447, 'Manicura Tradicional', '2025-01-17 15:00:00', '2025-01-17 16:10:00', NULL, 14, 'Maria Jose Cabrera', 'Majok26@hotmail.com', '3182065275', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(449, 'retiro de semi, manicure y pedicure tradi', '2025-01-18 10:30:00', '2025-01-18 13:00:00', NULL, 10, 'Alexandra Perilla', 'Lotusdreamspa5@gmail.com', '0', 70000.00, 0, 35000.00, 35000.00, 70000.00),
(450, 'Pedicure Tradicional spa', '2025-01-28 12:05:00', '2025-01-28 13:05:00', NULL, 10, 'Francisco Franco', 'mpaulasanchezc@hotmail.com', '350 5417579', 35000.00, 0, 17500.00, 17500.00, 35000.00),
(451, 'Manicura Tradicional', '2025-01-17 16:15:00', '2025-01-17 16:45:00', NULL, 10, 'olga mendez', 'Lotusdreamspa5@gmail.com', '3102579594', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(452, 'Manicura Tradicional', '2025-01-17 17:30:00', '2025-01-17 18:00:00', NULL, 10, 'pilar asuero', 'Lotusdreamspa5@gmail.com', '3153197310', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(453, 'Manicure y Pedicure Tradicional ', '2025-01-18 17:00:00', '2025-01-18 18:30:00', NULL, 10, 'Yeimi Pedroza', 'Lotusdreamspa5@gmail.com', '0', 55000.00, 0, 27500.00, 27500.00, 55000.00),
(454, 'Manicura Tradicional', '2025-01-20 10:30:00', '2025-01-20 11:30:00', NULL, 19, 'Yeily Tatiana Palacios', 'Lotusdreamspa5@gmail.com', '3123434690', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(455, 'Manicura Tradicional', '2025-01-20 10:30:00', '2025-01-20 11:30:00', NULL, 14, 'luisa fernanda soto', 'Lotusdreamspa5@gmail.com', '3123434690', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(456, 'Retiro de Semi y manicure semi', '2025-01-20 14:45:00', '2025-01-20 15:45:00', NULL, 19, 'Pamela Flores', 'Lotusdreamspa5@gmail.com', '3108144269', 65000.00, 0, 32500.00, 32500.00, 65000.00),
(457, 'Manicura Semipermanente', '2025-01-20 14:45:00', '2025-01-20 15:45:00', NULL, 14, 'Patricia Guzman', 'Lotusdreamspa5@gmail.com', '3144929457', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(458, 'Manicure y Pedicure Semipermanente', '2025-01-24 18:00:00', '2025-01-24 20:00:00', NULL, 10, 'Mia Millan', 'Lotusdreamspa5@gmail.com', '310 2530353', 105000.00, 0, 52500.00, 52500.00, 105000.00),
(459, 'Manicura semipermanente ', '2025-01-21 16:00:00', '2025-01-21 17:00:00', NULL, 14, 'Alejandra Zorro', 'Lotusdreamspa5@gmail.com', '320 9457826', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(460, 'manicure  semipermanente capa base ruber', '2025-01-21 11:30:00', '2025-01-21 13:00:00', NULL, 14, 'Sector', 'Lotusdreamspa5@gmail.com', '0', 70000.00, 0, 35000.00, 35000.00, 70000.00),
(461, 'Manicura Semipermanente', '2025-01-22 13:00:00', '2025-01-22 14:00:00', NULL, 19, 'LAURA ALARCON', 'Lotusdreamspa5@gmail.com', '310 2905067', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(462, 'Manicure Tradicional Secado Rapido', '2025-01-22 16:00:00', '2025-01-22 17:00:00', NULL, 19, 'ANA SALAMANCA', 'Lotusdreamspa5@gmail.com', '322 9059406', 30000.00, 0, 15000.00, 15000.00, 30000.00),
(463, 'Manicure Tradicional Secado Rapido', '2025-01-22 17:00:00', '2025-01-22 18:00:00', NULL, 19, 'cristina Moreno', 'Lotusdreamspa5@gmail.com', '322 9059406', 30000.00, 0, 15000.00, 15000.00, 30000.00),
(464, 'Manicure y Pedicure Tradicional ', '2025-01-24 12:00:00', '2025-01-24 14:00:00', NULL, 10, 'Sandra Zapata', 'Lotusdreamspa5@gmail.com', '320 2424474', 55000.00, 0, 27500.00, 27500.00, 55000.00),
(465, 'Manicura Tradicional', '2025-01-23 17:30:00', '2025-01-23 18:30:00', NULL, 10, 'Maria Jose', 'Lotusdreamspa5@gmail.com', '310 7686721', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(466, 'Manicure semi y pies tradicional', '2025-01-23 18:30:00', '2025-01-23 19:30:00', NULL, 10, 'Ximena Esparro', 'Lotusdreamspa5@gmail.com', '0', 80000.00, 0, 40000.00, 40000.00, 80000.00),
(467, 'Manicure y Pedicure Tradicional ', '2025-02-05 17:30:00', '2025-02-05 19:30:00', NULL, 21, 'Patricia Gomez', 'Lotusdreamspa5@gmail.com', '305 7721555', 55000.00, 0, 27500.00, 27500.00, 55000.00),
(468, 'Depilación Bikini Completo', '2025-01-25 10:00:00', '2025-01-25 10:30:00', NULL, 10, 'Maria Alejandra Gomez', 'magb.asistencialegal@gmail.com', '316 2420775', 40000.00, 0, 20000.00, 20000.00, 40000.00),
(469, 'Manicura Semipermanente', '2025-01-25 18:00:00', '2025-01-25 19:00:00', NULL, 10, 'Valentina Bernal', 'Lotusdreamspa5@gmail.com', '316 4737667', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(470, 'Manicura Semipermanente', '2025-01-24 13:00:00', '2025-01-24 14:00:00', NULL, 14, 'Nahomi Taub', 'Lotusdreamspa5@gmail.com', '3157616723', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(471, 'Manicure  y pedicure Semipermanente ', '2025-01-25 10:30:00', '2025-01-25 13:00:00', NULL, 10, 'Liliana Torres', 'Lotusdreamspa5@gmail.com', '312 5132884', 105000.00, 0, 52500.00, 52500.00, 105000.00),
(472, 'Limpieza  facial', '2025-01-25 15:00:00', '2025-01-25 16:00:00', NULL, 17, 'janeth castellanos ', 'Lotusdreamspa5@gmail.com', '3118780723', 120000.00, 0, 0.00, 120000.00, 120000.00),
(473, 'Manicure y Pedicure Semipermanente, manicure Tradicional y depilacion', '2025-02-03 09:00:00', '2025-02-03 12:30:00', NULL, 19, 'Estefania', 'Lotusdreamspa5@gmail.com', '310 5699212', 170000.00, 0, 85000.00, 85000.00, 170000.00),
(474, 'manicure semipermanente', '2025-01-25 13:00:00', '2025-01-25 14:00:00', NULL, 10, 'Elicenia', 'lotusdream5@gmail.com', '300 2989977', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(475, 'Manicure uñas esculpidas', '2025-01-25 10:00:00', '2025-01-25 13:00:00', NULL, 11, 'Pilar bermudez', 'lotusdreamspa5@gmail.com', '3118466089', 130000.00, 0, 65000.00, 65000.00, 130000.00),
(476, 'Manicure Press on', '2025-01-25 16:00:00', '2025-01-25 18:00:00', NULL, 11, 'Laura Sofia', 'Lotusdreamspa5@gmail.com', '320 8633112', 90000.00, 0, 45000.00, 45000.00, 90000.00),
(477, 'Manicura Semipermanente', '2025-01-27 16:00:00', '2025-01-27 17:00:00', NULL, 19, 'Angelica', 'angelica_15_15@hotmail.com', '321 2395175', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(478, 'DEPILACION CEJAS', '2025-01-28 14:00:00', '2025-01-28 14:15:00', NULL, 10, 'andrea Carron', 'Lotusdreamspa5@gmail.com', '3046697400', 15000.00, 0, 7500.00, 7500.00, 15000.00),
(480, 'Retiro semi y manicure secado rapido', '2025-01-30 12:30:00', '2025-01-30 14:00:00', NULL, 10, 'Laura', 'Lotusdreamspa5@gmail.com', '3108749227', 45000.00, 0, 22500.00, 22500.00, 45000.00),
(481, 'Manicura Tradicional', '2025-01-28 15:30:00', '2025-01-28 16:30:00', NULL, 10, 'Andres Niño', 'Lotusdreamspa5@gmail.com', '3214758141', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(482, 'Manicura Semipermanente', '2025-01-29 09:45:00', '2025-01-29 11:00:00', NULL, 19, 'maria alejandra', 'Lotusdreamspa5@gmail.com', '3162420775', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(483, 'Retiro Semi y Manicure Tradicional', '2025-01-29 14:00:00', '2025-01-29 15:30:00', NULL, 19, 'Liliana Gonzalez', 'Lotusdreamspa5@gmail.com', '3208488076', 40000.00, 0, 20000.00, 20000.00, 40000.00),
(484, 'Postura pestañas Efecto Natural', '2025-02-01 12:05:00', '2025-02-01 13:05:00', NULL, 18, 'Ika Lopez', 'Lotusdreamspa5@gmail.com', '0', 70000.00, 0, 45500.00, 24500.00, 70000.00),
(485, 'Manicura Tradicional', '2025-01-31 16:30:00', '2025-01-31 17:30:00', NULL, 19, 'Maria Camila ', 'Lotusdreamspa5@gmail.com', '3042196693', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(486, 'Retiro de Semi y manicure tradicional', '2025-01-31 12:00:00', '2025-01-31 13:20:00', NULL, 19, 'Maria Juliana', 'Lotusdreamspa5@gmail.com', '3208652567', 40000.00, 0, 20000.00, 20000.00, 40000.00),
(487, 'pedicure preventivo y depilacion pierna -axilas', '2025-01-31 10:00:00', '2025-01-31 12:30:00', NULL, 10, 'maria alejandra', 'Lotusdreamspa5@gmail.com', '3162420775', 120000.00, 0, 60000.00, 60000.00, 120000.00),
(488, 'Pedicure Semi y retiro de semi', '2025-01-30 10:30:00', '2025-01-30 12:00:00', NULL, 10, 'Claudia Losano', 'Lotusdreamspa5@gmail.com', '0', 70000.00, 0, 35000.00, 35000.00, 70000.00),
(489, 'Manicure  Semiy Pedicure Tradicional ', '2025-01-07 12:00:00', '2025-01-07 14:00:00', NULL, 19, 'Maria Juliana Ortiz', 'Lotusdreamspa5@gmail.com', '3208652567', 80000.00, 0, 40000.00, 40000.00, 80000.00),
(491, 'limpieza facial', '2025-02-01 10:00:00', '2025-02-01 11:00:00', NULL, 17, 'isabella perez', 'Lotusdreamspa5@gmail.com', '3173770716', 60000.00, 0, 0.00, 60000.00, 60000.00),
(492, 'Manicura Tradicional', '2025-02-01 14:15:00', '2025-02-01 15:00:00', NULL, 11, 'Adriana Vargas', 'Lotusdreamspa5@gmail.com', '3112061936', 25000.00, 0, 12500.00, 12500.00, 25000.00),
(493, 'Manicure Deeping Y RETIRO ACRILICO', '2025-02-01 11:00:00', '2025-02-01 13:30:00', NULL, 13, 'Tatiana Plazas', 'Lotusdreamspa5@gmail.com', '0', 105000.00, 20, 63000.00, 21000.00, 84000.00),
(494, 'manicure uñas  acrilicas', '2025-02-05 15:30:00', '2025-02-05 17:30:00', NULL, 19, 'Maria Jose', 'Lotusdreamspa5@gmail.com', '3163980989', 95000.00, 0, 47500.00, 47500.00, 95000.00),
(495, 'Manicura Tradicional', '2025-02-05 15:30:00', '2025-02-05 16:30:00', NULL, 21, 'isabella', 'Lotusdreamspa5@gmail.com', '3163980989', 28000.00, 0, 14000.00, 14000.00, 28000.00),
(496, 'Manicure y Pedicure Tradicional ', '2025-02-03 15:30:00', '2025-02-03 17:30:00', NULL, 21, 'Maria Jose Cabrera', 'Lotusdreamspa5@gmail.com', '3182065275', 61000.00, 10, 30500.00, 24400.00, 54900.00),
(497, 'Manicura Semipermanente', '2025-02-04 17:00:00', '2025-02-04 18:00:00', NULL, 19, 'Jinna Aponte', 'Lotusdreamspa5@gmail.com', '3015172035', 55000.00, 0, 27500.00, 27500.00, 55000.00),
(498, 'Pedicure Tradicional', '2025-02-03 13:15:00', '2025-02-03 14:00:00', NULL, 19, 'cecilia', 'Lotusdreamspa5@gmail.com', '0', 33000.00, 30, 16500.00, 6600.00, 23100.00),
(499, 'Manicure semi y pies tradicional + retiro', '2025-02-07 12:00:00', '2025-02-07 14:00:00', NULL, 19, 'Maria Juliana Ortiz', 'm.julianaortiz@hotmail.com', '3208652567', 95000.00, 0, 47500.00, 47500.00, 95000.00),
(500, 'Manicura Semipermanente', '2025-02-05 10:31:00', '2025-02-05 11:45:00', NULL, 19, 'Nancy Pantoja', 'Lotusdreamspa5@gmail.com', '3103059763', 55000.00, 0, 27500.00, 27500.00, 55000.00),
(501, 'Manicure y Pedicure Tradicional ', '2025-02-06 17:00:00', '2025-02-06 19:00:00', NULL, 13, 'Andrea', 'Lotusdreamspa5@gmail.com', '0', 61000.00, 0, 36600.00, 24400.00, 61000.00),
(502, 'Limpieza facial sencilla', '2025-02-07 10:00:00', '2025-02-07 11:00:00', NULL, 17, 'Martha Arias', 'Lotusdreamspa5@gmail.com', '0', 35000.00, 20, 0.00, 28000.00, 28000.00),
(503, 'Manicure y Pedicure Tradicional ', '2025-02-07 11:15:00', '2025-02-07 13:30:00', NULL, 13, 'Martha Arias', 'Lotusdreamspa5@gmail.com', '0', 61000.00, 20, 36600.00, 12200.00, 48800.00),
(504, 'Manicure y Pedicure Tradicional ', '2025-02-06 10:30:00', '2025-02-06 12:30:00', NULL, 21, 'Monica Gisella', 'Lotusdreamspa5@gmail.com', '3168786205', 61000.00, 0, 30500.00, 30500.00, 61000.00),
(505, 'Manicure Tradicional', '2025-02-06 12:00:00', '2025-02-06 12:40:00', NULL, 21, 'Piedad', 'Lotusdreamspa5@gmail.com', '3212027837', 28000.00, 0, 14000.00, 14000.00, 28000.00),
(506, 'Manicura Tradicional', '2025-02-06 16:10:00', '2025-02-06 16:53:00', NULL, 21, 'Paola Almanza', 'Lotusdreamspa5@gmail.com', '3102489896', 28000.00, 0, 14000.00, 14000.00, 28000.00),
(507, 'Manicura Semipermanente con Capa Base Ruber', '2025-02-07 11:00:00', '2025-02-07 12:20:00', NULL, 21, 'Yulay Peña', 'Lotusdreamspa5@gmail.com', '3177116527', 75000.00, 0, 37500.00, 37500.00, 75000.00),
(508, 'Masaje Relajante ', '2025-02-07 17:00:00', '2025-02-07 18:00:00', NULL, 17, 'Angela Hernandez', 'hernandezangela05@gmail.com', '3187341791', 60000.00, 0, 0.00, 60000.00, 60000.00),
(509, 'Manicura Tradicional', '2025-02-07 18:00:00', '2025-02-07 19:00:00', NULL, 21, 'Angela Hernandez', 'hernandezangela05@gmail.com', '3187341791', 28000.00, 0, 14000.00, 14000.00, 28000.00),
(510, 'Deoilacion de Cejas', '2025-02-07 10:00:00', '2025-02-07 10:26:00', NULL, 14, 'Mayra P', 'pintomayra048@gmail.com', '3182002994', 20000.00, 0, 10000.00, 10000.00, 20000.00),
(511, 'Manicura Semipermanente', '2025-02-08 10:00:00', '2025-02-08 11:00:00', NULL, 13, 'Naomi Taub ', 'naomitaubs@gmail.com', '3157616723', 55000.00, 0, 33000.00, 22000.00, 55000.00),
(512, 'Lifting de Pestañas', '2025-02-11 16:00:00', '2025-02-11 17:30:00', NULL, 18, 'Angelica H', 'Angelica_15_15@hotmail.com', '3212395175', 75000.00, 0, 48750.00, 26250.00, 75000.00),
(513, 'Manicura Tradicional Y Pedicure Tradicional', '2025-02-10 09:30:00', '2025-02-10 10:30:00', NULL, 19, 'Puerta', 'Lotusdreamspa5@gmail.com', '31', 61000.00, 0, 30500.00, 30500.00, 61000.00),
(514, 'Reparacion de uña en polygel', '2025-02-10 17:00:00', '2025-02-10 17:30:00', NULL, 19, 'laura romero', 'Lotusdreamspa5@gmail.com', '3006958893', 13000.00, 0, 6500.00, 6500.00, 13000.00),
(515, 'Manicura Tradicional', '2025-02-10 18:00:00', '2025-02-10 19:00:00', NULL, 21, 'adriana leon', 'Lotusdreamspa5@gmail.com', '0', 28000.00, 0, 14000.00, 14000.00, 28000.00),
(516, 'Manicura Semipermanente', '2025-02-11 13:00:00', '2025-02-11 14:30:00', NULL, 21, 'Bibiana Orozco', 'Lotusdreamspa5@gmail.com', '3007413331', 38500.00, 0, 19250.00, 19250.00, 38500.00),
(517, 'Manicura Semipermanente + Retiro de semi', '2025-02-11 16:00:00', '2025-02-11 17:20:00', NULL, 21, 'Maria Fuquene', 'Lotusdreamspa5@gmail.com', '3172295583', 70000.00, 0, 35000.00, 35000.00, 70000.00),
(518, 'Manicura Semipermanente', '2025-02-11 15:00:00', '2025-02-11 16:25:00', NULL, 19, 'Maria Alejandra Veterinaria', 'Lotusdreamspa5@gmail.com', '3227017419', 55000.00, 0, 27500.00, 27500.00, 55000.00),
(521, 'Mantenimiento de uñas en Acrilico + extensión de uñas', '2025-02-12 13:00:00', '2025-02-12 15:00:00', NULL, 21, 'Sofia Rios', 'sofiarodriguez0816@gmail.com', '3105819529', 95000.00, 0, 47500.00, 47500.00, 95000.00),
(522, 'Manicura Tradicional', '2025-02-12 11:00:00', '2025-02-12 12:00:00', NULL, 19, 'Camilo Gonzales', 'cg3953493@gmail.com', '3144568726', 28000.00, 0, 14000.00, 14000.00, 28000.00),
(523, 'Manicura Semipermanente', '2025-02-12 16:30:00', '2025-02-12 17:20:00', NULL, 19, 'Angelica H', 'angelica_15_15@hotmail.com', '3212395175', 55000.00, 0, 27500.00, 27500.00, 55000.00),
(524, 'retiro de Semi y Manicure tradicional', '2025-02-12 13:30:00', '2025-02-12 14:30:00', NULL, 19, 'Dulis sorza', 'Lotusdreamspa5@gmail.com', '3113427838', 43000.00, 0, 21500.00, 21500.00, 43000.00),
(525, 'Manicura Tradicional', '2025-02-13 10:30:00', '2025-02-13 11:30:00', NULL, 13, 'Maria Blanco', 'Lotusdreamspa5@gmail.com', '3003516995', 28000.00, 0, 16800.00, 11200.00, 28000.00);
INSERT INTO `eventos` (`id`, `titulo`, `inicio`, `fin`, `descripcion`, `empleado_id`, `nombre_solicitante`, `correo_solicitante`, `numero_solicitante`, `precio_servicio`, `descuento`, `ganancias_empleados`, `ganancialotus`, `total_descuento`) VALUES
(526, 'Manicura Secado Rapido + Pedicure Tradicional', '2025-02-13 16:30:00', '2025-02-13 18:20:00', NULL, 21, 'Carolina Bernal', 'Lotusdreamspa5@gmail.com', '3132385124', 88000.00, 0, 44000.00, 44000.00, 88000.00),
(527, 'Promo de Masajes ', '2025-02-15 10:00:00', '2025-02-15 11:00:00', NULL, 17, 'María Eugenia Bonilla Ovallos', 'Jesusgonzalze@gmail.com', '3188273463', 100000.00, 0, 0.00, 100000.00, 100000.00),
(528, 'Promo de Masajes ', '2025-02-15 11:00:00', '2025-02-15 12:00:00', NULL, 11, 'Jesús Enrique González Exarcheas', 'Jesusgonzalze@gmail.com', '3188273463', 0.00, 0, 0.00, 0.00, 0.00),
(530, 'Press On + Retriro + Decoracion ', '2025-02-14 17:40:00', '2025-02-14 19:00:00', NULL, 21, 'Ginna Vega', 'Lotusdreamspa5@gmail.com', '3202507497', 98000.00, 0, 49000.00, 49000.00, 98000.00),
(531, 'Manicura Tradicional Secado Rápido', '2025-02-13 15:00:00', '2025-02-13 16:00:00', NULL, 21, 'Maria Cristina', 'Lotusdreamspa5@gmail.com', '3134199888', 32000.00, 0, 16000.00, 16000.00, 32000.00),
(532, 'Pedicure Tradicional + Retoque de polygel + Retiro de poly gel', '2025-02-13 17:40:00', '2025-02-13 19:00:00', NULL, 13, 'Pilar bermudez', 'Lotusdreamspa5@gmail.com', '3118466089', 158000.00, 0, 94800.00, 63200.00, 158000.00),
(533, 'Retiro Poly Gel + Deping', '2025-02-13 18:20:00', '2025-02-13 19:28:00', NULL, 21, 'Claudia Lozano', 'Lotusdreamspa5@gmail.com', '3165288560', 110000.00, 0, 55000.00, 55000.00, 110000.00),
(534, 'Depilacion Media Pierna y Axilas', '2025-02-14 11:30:00', '2025-02-14 12:00:00', NULL, 14, 'Martha Delgadillo', 'Lotusdreamspa5@gmail.com', '3165288560', 50000.00, 0, 25000.00, 25000.00, 50000.00),
(535, 'Manicura Semipermanente', '2025-02-14 11:17:00', '2025-02-14 12:30:00', NULL, 13, 'Maria Alejandra ', 'Lotusdreamspa5@gmail.com', '3162420775', 55000.00, 0, 33000.00, 22000.00, 55000.00),
(536, 'Manicura Tradicional', '2025-02-14 13:18:00', '2025-02-14 13:40:00', NULL, 21, 'Patricia camargo', 'Pattiich9@hotmail.com', '3108803292', 28000.00, 0, 14000.00, 14000.00, 28000.00),
(538, 'Manicura Semipermanente', '2025-02-17 11:00:00', '2025-02-17 12:46:00', NULL, 14, 'Elicenia gomoz', 'Lotusdreamspa5@gmail.com', '0', 55000.00, 0, 27500.00, 27500.00, 55000.00),
(539, 'Masajes 2x1', '2025-02-22 11:00:00', '2025-02-22 12:00:00', NULL, 17, 'Anna Lee', 'Lotusdreamspa5@gmail.com', '3153859849', 100000.00, 0, 0.00, 100000.00, 100000.00),
(540, 'Masaje 2x1', '2025-02-22 11:00:00', '2025-02-22 12:00:00', NULL, 11, 'Anna Lee', 'Lotusdreamspa5@gmail.com', '3153859849', 0.00, 0, 0.00, 0.00, 0.00),
(541, 'Arreglo 1 uña', '2025-02-19 17:30:00', '2025-02-19 18:20:00', NULL, 19, 'Laura Romero', 'Lotusdreamspa5@gmail.com', '3006958893', 8000.00, 0, 4000.00, 4000.00, 8000.00),
(542, 'Manicura y Pedicura Tradicional', '2025-02-18 17:00:00', '2025-02-18 18:30:00', NULL, 19, 'Alejandra Trujillo', 'Lotusdreamspa5@gmail.com', '3112249407', 59000.00, 0, 29500.00, 29500.00, 59000.00),
(543, 'Pedicure Tradicional', '2025-02-18 09:00:00', '2025-02-18 10:00:00', NULL, 19, 'Laura', 'Lotusdreamspa5@gmail.com', '3108749227', 33000.00, 0, 16500.00, 16500.00, 33000.00),
(544, 'Manicura Tradicional', '2025-02-18 09:10:00', '2025-02-18 10:20:00', NULL, 14, 'Laura', 'Lotusdreamspa5@gmail.com', '3108749227', 28000.00, 0, 14000.00, 14000.00, 28000.00),
(545, 'Manicure y Pedicure Tradicional ', '2025-02-18 16:30:00', '2025-02-18 17:30:00', NULL, 19, 'Alejandra Trujillo', 'Lotusdreamspa5@gmail.com', '3112249407', 61000.00, 0, 30500.00, 30500.00, 61000.00),
(546, 'Manicura Tradicional', '2025-02-18 16:15:00', '2025-02-18 17:20:00', NULL, 14, 'Mara Cifuente', 'Lotusdreamspa5@gmail.com', '3505613412', 28000.00, 0, 14000.00, 14000.00, 28000.00),
(547, 'Manicura Tradicional', '2025-02-22 11:00:00', '2025-02-22 12:00:00', NULL, 11, 'Diana Isabel Sacristan Fandiño', 'dianaisabelsf1@gmail.com', '3113253474', 28000.00, 0, 14000.00, 14000.00, 28000.00),
(548, 'Manicura Semipermanente con Capa de Base Rubber', '2025-02-21 11:00:00', '2025-02-20 12:20:00', NULL, 14, 'Yulay Peña', 'Lotusdreamspa5@gmail.com', '3177116527', 73000.00, 0, 36500.00, 36500.00, 73000.00),
(549, 'Manicura con Baño de Acrilico', '2025-02-20 10:28:00', '2025-02-20 12:30:00', NULL, 13, 'Tatiana Plazas', 'Lotusdreamspa5@gmail.com', '0', 74400.00, 0, 44640.00, 29760.00, 74400.00),
(550, 'reparacion de 3 uñas ', '2025-02-21 18:00:00', '2025-02-21 19:00:00', NULL, 13, 'Claudia Lozano', 'Lotusdreamspa5@gmail.com', '3108921345', 0.00, 0, 0.00, 0.00, 0.00),
(551, 'Manicura Tradicional', '2025-02-20 17:45:00', '2025-02-20 18:30:00', NULL, 13, 'ximena gaitan', 'Lotusdreamspa5@gmail.com', '3164734162', 26000.00, 0, 15600.00, 10400.00, 26000.00),
(552, 'Manicura Tradicional', '2025-02-20 12:30:00', '2025-02-20 14:00:00', NULL, 14, 'piedad', 'Lotusdreamspa5@gmail.com', '3212027837', 26000.00, 0, 13000.00, 13000.00, 26000.00),
(553, 'Manicura Semipermanente', '2025-02-22 17:00:00', '2025-02-21 18:10:00', NULL, 13, 'Valentina Bernal', 'mavale1006@gmail.com', '3164737667', 55000.00, 0, 33000.00, 22000.00, 55000.00),
(554, 'Manicura Tradicional', '2025-02-21 15:00:00', '2025-02-21 16:00:00', NULL, 14, 'Sebastian Ortiz', 'Lotusdreamspa5@gmail.com', '3147512521', 26000.00, 0, 13000.00, 13000.00, 26000.00),
(555, 'Manicura Tradicional + Pedicure tradicional', '2025-02-21 14:00:00', '2025-02-21 15:00:00', NULL, 13, 'DP', 'Lotusdreamspa5@gmail.com', '3124748012', 59000.00, 0, 35400.00, 23600.00, 59000.00),
(556, 'Masaje Descontracturante', '2025-02-24 15:00:00', '2025-02-24 04:20:00', NULL, 17, 'Piedad', 'piaarango2004@gmail.com', '3212027837', 120000.00, 0, 0.00, 120000.00, 120000.00),
(557, ' Retoque Polygel, Pedicure tradicional', '2025-03-01 12:00:00', '2025-03-01 14:00:00', NULL, 13, 'Jinna Aponte', 'lotus@gmail.com', '3015172035', 126000.00, 0, 75600.00, 50400.00, 126000.00),
(558, 'Depilacion cejas', '2025-03-01 14:00:00', '2025-03-01 14:20:00', NULL, 11, 'Jinna Aponte', 'lotus@gmail.com', '3015172035', 15000.00, 0, 7500.00, 7500.00, 15000.00),
(560, 'Manicura tradicional', '2025-02-24 11:31:00', '2025-02-24 12:31:00', NULL, 19, 'Claudia guzman', 'lotus@gmail.com', '3115611873', 31000.00, 0, 15500.00, 15500.00, 31000.00),
(561, 'Manicura tradicional', '2025-02-24 12:32:00', '2025-02-24 13:02:00', NULL, 14, 'Maria Paula', 'lotus@gmail.com', '30', 31000.00, 0, 15500.00, 15500.00, 31000.00),
(562, 'manicure semipermanente  ', '2025-02-26 18:00:00', '2025-02-26 19:00:00', NULL, 19, 'Naomi Taub', 'lotus@gmail.com', '0', 52000.00, 0, 26000.00, 26000.00, 52000.00),
(563, 'Manicure semipermanente + pedicure', '2025-02-25 14:30:00', '2025-02-25 16:00:00', NULL, 19, 'Luisa Giraldo', 'isa5124@hotmail.com', '3105753506', 83000.00, 0, 41500.00, 41500.00, 83000.00),
(564, 'Pedicure Semi', '2025-02-25 13:00:00', '2025-02-25 14:20:00', NULL, 19, 'Adriana Merlano', 'Lotusdreamspa5@gmail.com', '3242318632', 58000.00, 0, 29000.00, 29000.00, 58000.00),
(565, 'Pedicure Tradicional', '2025-02-25 16:20:00', '2025-02-25 17:25:00', NULL, 19, 'Maira Gonzales', 'Mairaa1@yahoo.com', '3166273116', 33000.00, 0, 16500.00, 16500.00, 33000.00),
(566, 'Manicura Tradicional', '2025-02-25 15:45:00', '2025-02-25 16:45:00', NULL, 17, 'ana maria herrera', 'Lotusdreamspa5@gmail.com', '3174871906', 26000.00, 0, 0.00, 26000.00, 26000.00),
(567, 'Manicura Semipermanente', '2025-02-26 16:30:00', '2025-02-26 17:50:00', NULL, 19, 'Kely Whine', 'Kelywhite7@gmail.com', '3013723754', 55000.00, 0, 27500.00, 27500.00, 55000.00),
(568, 'Manicura Tradicional Secado Rápido', '2025-02-26 11:01:00', '2025-02-26 12:01:00', NULL, 19, 'Carolina Bernal', 'Lotusdreamspa5@gmail.com', '3132385124', 33000.00, 0, 16500.00, 16500.00, 33000.00),
(569, 'Retiro Semipermanente pies y manos y Manicure tradicional', '2025-02-27 16:00:00', '2025-02-27 17:30:00', NULL, 13, 'Estefania Meluk', 'lotus@gmail.com', '3105699212', 67000.00, 0, 40200.00, 26800.00, 67000.00),
(571, 'manicure semipermanente  + Depilacion cejas', '2025-02-27 17:30:00', '2025-02-28 18:30:00', NULL, 14, 'Angelica Hernandez', 'lotus@gmail.com', '3212395175', 38000.00, 0, 19000.00, 19000.00, 38000.00),
(572, 'Manicure tradicional', '2025-02-27 14:30:00', '2025-02-27 15:30:00', NULL, 13, 'Angie -juan', 'lotus@gmail.com', '312', 26000.00, 0, 15600.00, 10400.00, 26000.00),
(573, 'Manicura tradicional', '2025-03-03 09:57:00', '2025-03-03 10:50:00', NULL, 19, 'Maria Clauida Rodriguez', 'Mariac.rodriguez810@gmail.com', '3246870119', 26000.00, 0, 13000.00, 13000.00, 26000.00),
(574, 'manicure semipermanente  ', '2025-03-04 17:00:00', '2025-03-04 18:40:00', NULL, 19, 'Laura Romero', 'lotus@gmail.com', '3006958893', 52000.00, 0, 26000.00, 26000.00, 52000.00),
(575, 'retiro semi y Manicure tradicional', '2025-03-03 16:10:00', '2025-03-03 17:30:00', NULL, 19, 'Juanita Osuna', 'lotus@gmail.com', '3057515982', 41000.00, 0, 20500.00, 20500.00, 41000.00),
(576, 'Pedicure Tradicional', '2025-03-04 09:14:00', '2025-03-04 09:59:00', NULL, 14, 'Maria Mercedes Ortega ', 'Mmortegavi@gmail.com', '3112003441', 28000.00, 0, 14000.00, 14000.00, 28000.00),
(577, 'Retiro de esmalte', '2025-03-05 10:30:00', '2025-03-05 10:45:00', NULL, 19, 'sandra Rocha', 'lotus@gmail.com', '0', 10000.00, 0, 5000.00, 5000.00, 10000.00),
(578, 'Manicura tradicional', '2025-03-05 11:30:00', '2025-03-05 12:20:00', NULL, 19, 'Piedad', 'lotus@gmail.com', '3212027837', 26000.00, 0, 13000.00, 13000.00, 26000.00),
(579, 'manicure semipermanente  ', '2025-03-08 09:00:00', '2025-03-08 10:00:00', NULL, 19, 'maria Juliana', 'lotus@gmail.com', '3208652567', 52000.00, 0, 26000.00, 26000.00, 52000.00),
(580, 'masaje relajante', '2025-03-06 10:00:00', '2025-03-06 12:15:00', NULL, 17, 'Zorayda Cortes', 'lotus@gmail.com', '+57 310 7865327', 40000.00, 0, 0.00, 40000.00, 40000.00),
(581, 'manicure semipermanente  + Dipping', '2025-03-06 13:30:00', '2025-03-06 14:30:00', NULL, 13, 'carolina Ballesteros', 'lotus@gmail.com', '3213472315', 83000.00, 0, 49800.00, 33200.00, 83000.00),
(582, 'Manicura tradicional', '2025-03-06 15:00:00', '2025-03-06 15:45:00', NULL, 13, 'juanita Pirazan', 'juanitapirazanib@hotmail.com', '3102931264', 26000.00, 0, 15600.00, 10400.00, 26000.00),
(583, 'Manicura tradicional', '2025-03-06 11:00:00', '2025-03-06 11:45:00', NULL, 13, 'Maria de los Angeles Cortes', 'lotus@gmail.com', '3107865327', 26000.00, 0, 15600.00, 10400.00, 26000.00),
(584, 'Manicura tradicional', '2025-03-07 10:00:00', '2025-03-07 10:45:00', NULL, 13, 'luisa vanegas', 'lotus@gmail.com', '3026303503', 26000.00, 0, 15600.00, 10400.00, 26000.00),
(585, 'manicure semi+depilacion pierna completa y bikini', '2025-03-14 10:00:00', '2025-03-14 12:30:00', NULL, 13, 'Luisa Gonzalez', 'lotus@gmail.com', '3026303503', 26000.00, 0, 15600.00, 10400.00, 26000.00),
(586, 'Manicura Acrílicas con tips (15% descuento) +  Depilación de cejas', '2025-03-08 11:00:00', '2025-03-08 01:30:00', NULL, 13, 'Sofia', 'lotus@gmail.com', '3026303503', 111000.00, 0, 66600.00, 44400.00, 111000.00),
(587, 'limpieza facial sencilla', '2025-03-17 10:00:00', '2025-03-17 11:00:00', NULL, 17, 'Consuelo Linares', 'lotus@gmail.com', '3125068414', 95000.00, 0, 0.00, 95000.00, 95000.00),
(588, 'manicure Semi', '2025-03-10 17:00:00', '2025-03-10 18:00:00', NULL, 19, 'bibiana', 'lotus@gmail.com', '3007413331', 52000.00, 0, 26000.00, 26000.00, 52000.00),
(589, 'Masaje Descontracturante', '2025-03-10 15:00:00', '2025-03-10 15:30:00', NULL, 17, 'franciasco', 'lotus@gmail.com', '0', 40000.00, 0, 0.00, 40000.00, 40000.00),
(590, 'Pedicure Tradicional', '2025-03-11 10:30:00', '2025-03-11 11:30:00', NULL, 19, 'cristina Muñoz', 'lotus@gmail.com', '3112832553', 33000.00, 5, 16500.00, 14850.00, 31350.00),
(592, 'Manicura tradicional', '2025-03-12 18:00:00', '2025-03-12 19:00:00', NULL, 17, 'david perz', 'david.perezb99@gmail.com', '3124748012', 26000.00, 0, 0.00, 26000.00, 26000.00),
(593, 'retoque acrilico', '2025-03-13 10:00:00', '2025-03-13 11:30:00', NULL, 13, 'Tatiana Plazas', 'lotus@gmail.com', ' 304 5444411', 93000.00, 20, 55800.00, 18600.00, 74400.00),
(594, 'Pedicure Tradicional secado rapido', '2025-03-13 10:30:00', '2025-03-13 11:30:00', NULL, 17, 'Tatiana Plazas', 'lotus@gmail.com', ' 304 5444411', 38000.00, 20, 0.00, 30400.00, 30400.00),
(595, 'Manicure  + Pedicure tradicional', '2025-03-13 16:30:00', '2025-03-13 19:00:00', NULL, 13, 'carolina Bernal', 'lotus@gmail.com', '313 2385124', 69000.00, 5, 41400.00, 24150.00, 65550.00),
(596, 'pestañas efecto pestañina', '2025-03-14 11:00:00', '2025-03-14 12:30:00', NULL, 12, 'Paola Villanueva', 'lotus@gmail.com', '3114611737', 90000.00, 0, 54000.00, 36000.00, 90000.00),
(597, 'Manicura tradicional', '2025-03-14 11:30:00', '2025-03-14 12:30:00', NULL, 17, 'Vanessa Lopez', 'valogue12@hotmail.com', '3125044878', 26000.00, 0, 0.00, 26000.00, 26000.00),
(598, 'depilacion de espalda', '2025-03-14 12:30:00', '2025-03-14 13:00:00', NULL, 12, 'Vanessa Lopez', 'valogue12@hotmail.com', '3125044878', 0.00, 0, 0.00, 0.00, 0.00),
(599, 'Manicure y Pedicure Tradicional secado rapido', '2025-03-13 16:00:00', '2025-03-13 18:30:00', NULL, 17, 'Argenis Hernandez', 'lotus@gmail.com', '3214921260', 69000.00, 5, 0.00, 65550.00, 65550.00),
(600, 'Limpieza Pedicura', '2025-03-13 12:05:00', '2025-03-13 13:00:00', NULL, 13, 'Martha Arias', 'lotus@gmail.com', '0', 23000.00, 0, 13800.00, 9200.00, 23000.00),
(601, 'Depilación de Espalda', '2025-03-15 17:00:00', '2025-03-15 17:20:00', NULL, 11, 'Vanessa Lopez', 'lotus@gmail.com', '3125044878', 20000.00, 0, 10000.00, 10000.00, 20000.00),
(602, 'Manicure capa ruber', '2025-03-17 10:30:00', '2025-03-17 12:05:00', NULL, 14, 'yulay Peña', 'lotus@gmail.com', '3177116527', 73000.00, 0, 36500.00, 36500.00, 73000.00),
(603, 'manicure semipermanente  + Dipping', '2025-03-17 11:30:00', '2025-03-17 13:00:00', NULL, 19, 'Doris Muñoz', 'lotus@gmail.com', '3224070652', 83000.00, 0, 41500.00, 41500.00, 83000.00),
(604, 'Manicura tradicional', '2025-03-17 14:00:00', '2025-03-17 15:00:00', NULL, 19, 'sebastian ortiz', 'lotus@gmail.com', '3147512521', 26000.00, 0, 13000.00, 13000.00, 26000.00),
(605, 'manicure semipermanente  ', '2025-03-17 14:30:00', '2025-03-17 15:40:00', NULL, 17, 'elicenia', 'lotus@gmail.com', '0', 52000.00, 10, 0.00, 46800.00, 46800.00),
(606, 'Manicure y Pedicure Tradicional ', '2025-03-21 17:30:00', '2025-03-21 19:00:00', NULL, 13, 'alejandraa Trujillo', 'lotus@gmail.com', '3112249407', 59000.00, 0, 35400.00, 23600.00, 59000.00),
(607, 'manicure semipermanente  ', '2025-03-18 10:00:00', '2025-03-18 11:00:00', NULL, 19, 'Nancy Pantoja', 'lotus@gmail.com', '0', 52000.00, 0, 26000.00, 26000.00, 52000.00),
(608, 'Manicura tradicional', '2025-03-18 14:20:00', '2025-03-18 15:30:00', NULL, 17, 'Magnolia', 'lotus@gmail.com', '0', 26000.00, 5, 0.00, 24700.00, 24700.00),
(609, 'Manicure y Pedicure Tradicional ', '2025-03-18 16:00:00', '2025-03-18 18:00:00', NULL, 19, 'Elizabeth', 'lotus@gmail.com', '0', 64000.00, 5, 32000.00, 28800.00, 60800.00),
(610, 'Pedicure Tradicional', '2025-03-19 18:00:00', '2025-03-19 19:00:00', NULL, 19, 'maria Jose', 'lotus@gmail.com', '3107686721', 33000.00, 0, 16500.00, 16500.00, 33000.00),
(611, 'Manicura tradicional', '2025-03-19 14:30:00', '2025-03-19 15:30:00', NULL, 19, 'Ivon Subieira', 'lotus@gmail.com', '3112265819', 26000.00, 0, 13000.00, 13000.00, 26000.00),
(612, 'manicure semipermanente  ', '2025-03-19 17:00:00', '2025-03-19 18:00:00', NULL, 17, 'Alejandra zorro', 'lotus@gmail.com', '3209457826', 52000.00, 10, 0.00, 46800.00, 46800.00),
(613, 'masaje relajante', '2025-04-11 10:30:00', '2025-04-11 11:30:00', NULL, 17, 'angela Geraldine Rodriguez', 'maclo9012@gmail.com', '3112086467', 60000.00, 0, 0.00, 60000.00, 60000.00),
(614, 'Manicura tradicional', '2025-03-20 12:05:00', '2025-03-20 13:05:00', NULL, 13, 'Piedad', 'lotus@gmail.com', '3212027837', 26000.00, 0, 15600.00, 10400.00, 26000.00),
(615, 'Manicure Semipermanente ', '2025-03-20 16:00:00', '2025-03-20 17:00:00', NULL, 13, 'Angie Lopez', 'angieklopez94@gmail.com', '3175334444', 52000.00, 0, 31200.00, 20800.00, 52000.00),
(616, 'Limpieza Pedicura', '2025-03-19 16:00:00', '2025-03-19 17:00:00', NULL, 19, 'Alejandra zorro', 'lotus@gmail.com', '3209457826', 23000.00, 0, 11500.00, 11500.00, 23000.00),
(617, 'limpieza manicure', '2025-03-19 17:30:00', '2025-03-19 18:00:00', NULL, 19, 'puerta', 'lotus@gmail.com', '0', 16000.00, 0, 8000.00, 8000.00, 16000.00),
(618, 'Manicura tradicional secado rapido', '2025-03-19 18:00:00', '2025-03-19 19:00:00', NULL, 17, 'puerta', 'lotus@gmail.com', '0', 31000.00, 0, 0.00, 31000.00, 31000.00),
(619, 'manicure semipermanente  ', '2025-03-20 14:00:00', '2025-03-20 15:00:00', NULL, 13, 'carolina Bernal', 'lotus@gmail.com', '313 2385124', 52000.00, 0, 31200.00, 20800.00, 52000.00),
(620, 'retiro semi y Manicure tradicional', '2025-03-20 18:00:00', '2025-03-20 19:00:00', NULL, 17, 'Naomi Taub', 'lotus@gmail.com', '3157616723', 39000.00, 0, 0.00, 39000.00, 39000.00),
(622, 'Manicura tradicional secado rapido', '2025-03-20 18:00:00', '2025-03-20 18:45:00', NULL, 13, 'monica gonzalez', 'lotus@gmail.com', '3168786205', 31000.00, 0, 18600.00, 12400.00, 31000.00),
(624, 'Manicure y Pedicure Tradicional ', '2025-03-27 10:00:00', '2025-03-27 12:05:00', NULL, 13, 'luisa vanegas', 'lotus@gmail.com', '3026303503', 59000.00, 5, 35400.00, 20650.00, 56050.00),
(625, 'Manicure y Pedicure Tradicional ', '2025-03-25 10:30:00', '2025-03-25 12:30:00', NULL, 19, 'maria Elena Caceres', 'lotus@gmail.com', '3163377534', 59000.00, 5, 29500.00, 26550.00, 56050.00),
(626, 'manicure semipermanente  ', '2025-03-27 15:30:00', '2025-03-27 16:30:00', NULL, 13, 'Maria juliana Ortiz', 'lotus@gmail.com', '3208652567', 52000.00, 0, 31200.00, 20800.00, 52000.00),
(627, 'Manicura tradicional', '2025-03-25 16:30:00', '2025-03-25 17:30:00', NULL, 19, 'angelica martinez', 'lotus@gmail.com', '0', 26000.00, 0, 13000.00, 13000.00, 26000.00),
(628, 'Manicura tradicional', '2025-03-26 13:00:00', '2025-03-26 13:45:00', NULL, 19, 'lucia Monsalve', 'lotus@gmail.com', '0', 26000.00, 0, 13000.00, 13000.00, 26000.00),
(630, 'Manicure y Pedicure Tradicional ', '2025-03-27 12:05:00', '2025-03-27 14:10:00', NULL, 17, 'Juan Manuel Hernandez', 'lotus@gmail.com', '+18493545642', 59000.00, 0, 0.00, 59000.00, 59000.00),
(631, 'Manicura tradicional', '2025-03-27 17:00:00', '2025-03-27 18:00:00', NULL, 17, 'Elizabeth', 'lotus@gmail.com', '3104073052', 26000.00, 0, 0.00, 26000.00, 26000.00),
(632, 'Manicura tradicional', '2025-03-28 12:05:00', '2025-03-28 13:00:00', NULL, 13, 'natalia vargas', 'lotus@gmail.com', '3192261261', 26000.00, 5, 15600.00, 9100.00, 24700.00),
(633, 'limpieza microdermoabrasion', '2025-03-31 16:00:00', '2025-03-31 17:00:00', NULL, 17, 'gloria ramirez', 'lotus@gmail.com', '3008585606', 120000.00, 0, 0.00, 120000.00, 120000.00),
(634, 'manicure semipermanente  ', '2025-03-28 14:15:00', '2025-03-28 15:15:00', NULL, 13, 'Marcela  Parra', 'lotus@gmail.com', '3214745551', 52000.00, 0, 31200.00, 20800.00, 52000.00),
(635, 'Manicure y Pedicure Tradicional ', '2025-03-28 13:30:00', '2025-03-28 15:30:00', NULL, 14, 'lina', 'lotus@gmail.com', '0', 59000.00, 0, 29500.00, 29500.00, 59000.00),
(636, 'Manicure tradicional secado rapido', '2025-03-28 15:20:00', '2025-03-28 16:20:00', NULL, 13, 'Paula', 'lotus@gmail.com', '0', 31000.00, 0, 18600.00, 12400.00, 31000.00),
(637, 'Pedicure Tradicional secado rapido', '2025-03-28 14:45:00', '2025-03-28 15:45:00', NULL, 17, 'Maria Paula', 'lotus@gmail.com', '0', 38000.00, 0, 0.00, 38000.00, 38000.00),
(638, 'Pedicure Tradicional', '2025-03-29 11:00:00', '2025-03-29 12:05:00', NULL, 13, 'valeria Ortiz', 'Valeri0313@hotmail.com', '3134870274', 33000.00, 0, 19800.00, 13200.00, 33000.00),
(639, 'Manicure retoque de Polygel ', '2025-03-29 15:00:00', '2025-03-29 17:00:00', NULL, 13, 'Jinna Aponte', 'lotus@gmail.com', '3015172035', 93000.00, 0, 55800.00, 37200.00, 93000.00),
(640, 'Pedicure Tradicional', '2025-03-29 15:00:00', '2025-03-29 16:00:00', NULL, 17, 'Jinna Aponte', 'lotus@gmail.com', '3015172035', 23000.00, 0, 0.00, 23000.00, 23000.00),
(641, 'Depilacion cejas', '2025-03-29 17:00:00', '2025-03-29 17:15:00', NULL, 11, 'Jinna Aponte', 'lotus@gmail.com', '3015172035', 15000.00, 0, 7500.00, 7500.00, 15000.00),
(642, 'manicure semipermanente  ', '2025-03-29 17:00:00', '2025-03-29 18:00:00', NULL, 13, 'samy', 'lotus@gmail.com', '3153723729', 52000.00, 0, 31200.00, 20800.00, 52000.00),
(643, 'manicure semipermanente  ', '2025-03-31 16:30:00', '2025-03-31 16:30:00', NULL, 19, 'Angelica Hernandez', 'lotus@gmail.com', '3212395175', 52000.00, 10, 26000.00, 20800.00, 46800.00),
(644, 'Retiro de Semi en manos y pedicure semi y  arreglo dos uñas', '2025-04-01 11:00:00', '2025-04-01 12:15:00', NULL, 19, 'luisa Soto', 'lotus@gmail.com', '3123434690', 93000.00, 0, 46500.00, 46500.00, 93000.00),
(645, 'Manicure Semipermanente + Pedicure tradicional', '2025-04-01 14:00:00', '2025-04-01 16:00:00', NULL, 19, 'Angie Lopez', 'angieklopez94@gmail.com', '3175334444', 85000.00, 0, 42500.00, 42500.00, 85000.00),
(646, 'manicure semipermanente  ', '2025-04-02 12:05:00', '2025-04-02 13:30:00', NULL, 19, 'bibiana', 'lotus@gmail.com', '3007413331', 52000.00, 0, 26000.00, 26000.00, 52000.00),
(647, 'manicure semipermanente  ', '2025-04-03 17:00:00', '2025-04-03 18:30:00', NULL, 13, 'Laura Romero', 'lotus@gmail.com', '3006958893', 52000.00, 0, 31200.00, 20800.00, 52000.00),
(648, 'manicure semipermanente  ', '2025-04-03 10:45:00', '2025-04-03 12:30:00', NULL, 17, 'erika ', 'lotus@gmail.com', '3228501235', 52000.00, 0, 0.00, 52000.00, 52000.00),
(649, 'Manicura tradicional', '2025-04-03 12:05:00', '2025-04-03 13:00:00', NULL, 19, 'carolina cardozo', 'lotus@gmail.com', '3105662492', 26000.00, 0, 13000.00, 13000.00, 26000.00),
(650, 'retiro de acrilico', '2025-04-03 13:05:00', '2025-04-03 13:30:00', NULL, 13, 'sofia Rios', 'lotus@gmail.com', '3105819529', 25000.00, 0, 15000.00, 10000.00, 25000.00),
(651, 'manicure semipermanente  + retiro', '2025-04-04 10:30:00', '2025-04-04 11:45:00', NULL, 17, 'luz Helena Reyes', 'lotus@gmail.com', '3134274039', 67000.00, 0, 0.00, 67000.00, 67000.00),
(652, 'pedicure semi + Retiro', '2025-04-04 10:30:00', '2025-04-04 11:45:00', NULL, 13, 'luz Helena Reyes', 'lotus@gmail.com', '3134274039', 70000.00, 0, 42000.00, 28000.00, 70000.00),
(654, 'Manicure Semipermanente ', '2025-04-05 16:30:00', '2025-04-05 17:30:00', NULL, 14, 'Lola Castro', 'lotus@gmail.com', '3204492667', 52000.00, 0, 26000.00, 26000.00, 52000.00),
(655, 'depilacion de Cejas, bigote y menton', '2025-04-05 17:30:00', '2025-04-05 18:00:00', NULL, 14, 'Lola Castro', 'lotus@gmail.com', '3204492667', 35000.00, 0, 17500.00, 17500.00, 35000.00),
(656, 'Pestañas efecto Natural', '2025-04-12 08:00:00', '2025-04-12 10:00:00', NULL, 11, 'Sandra Suarez', 'lotus@gmail.com', '3028630513', 90000.00, 0, 45000.00, 45000.00, 90000.00),
(657, 'Manicure capa ruber', '2025-04-04 12:15:00', '2025-04-04 13:30:00', NULL, 14, 'Sandra Suarez', 'lotus@gmail.com', '3028630513', 94000.00, 0, 47000.00, 47000.00, 94000.00),
(658, 'Manicura tradicional', '2025-04-04 13:30:00', '2025-04-04 14:20:00', NULL, 13, 'Rodolfo', 'lotus@gmail.com', '0', 26000.00, 0, 15600.00, 10400.00, 26000.00),
(665, 'Manicure Semipermanente ', '2025-04-05 16:30:00', '2025-04-05 17:30:00', NULL, 13, 'luz gonzalez', 'lotus@gmail.com', '0', 52000.00, 0, 31200.00, 20800.00, 52000.00),
(667, 'masaje relajante', '2025-04-11 12:05:00', '2025-04-11 13:05:00', NULL, 17, 'Geraldine Rodriguez', 'lotus@gmail.com', '3012141199', 60000.00, 0, 0.00, 60000.00, 60000.00),
(668, 'Pedicure Tradicional', '2025-04-07 15:00:00', '2025-04-07 16:00:00', NULL, 19, 'maria suescum', 'lotus@gmail.com', '3108708440', 33000.00, 0, 16500.00, 16500.00, 33000.00),
(669, 'Manicure Press On + retiro de Semi', '2025-04-08 10:00:00', '2025-04-08 12:00:00', NULL, 19, 'Maria Fernanda Gomez', 'mfgomez2412@gmail.com', '3503996543', 108000.00, 0, 54000.00, 54000.00, 108000.00),
(670, 'Manicure tradicional + retiro + reconstrucción 2 uñas', '2025-04-08 10:00:00', '2025-04-08 11:30:00', NULL, 17, 'sergio andres barrero', 'chechobill@gmail.com', '3503996543', 49000.00, 0, 0.00, 49000.00, 49000.00),
(671, 'Manicura tradicional', '2025-04-07 14:10:00', '2025-04-07 15:10:00', NULL, 17, 'lucia Monsalve', 'lotus@gmail.com', '0', 26000.00, 0, 0.00, 26000.00, 26000.00),
(672, 'limpieza de manos y pies', '2025-04-09 12:05:00', '2025-04-09 13:30:00', NULL, 17, 'Piedad', 'lotus@gmail.com', '3212027837', 39000.00, 0, 0.00, 39000.00, 39000.00),
(673, 'Manicure y Pedicure Tradicional ', '2025-04-09 11:00:00', '2025-04-09 13:00:00', NULL, 19, 'maría cristina Valderrama', 'lotus@gmail.com', '3134199888', 59000.00, 0, 29500.00, 29500.00, 59000.00),
(675, 'Manicure Semipermanente + Pedicure tradicional', '2025-04-09 15:00:00', '2025-04-09 17:00:00', NULL, 19, 'Adriana de Gomez', 'lotus@gmail.com', '3164742943', 85000.00, 0, 42500.00, 42500.00, 85000.00),
(677, 'Manicura tradicional secado rapido', '2025-04-10 16:30:00', '2025-04-10 17:30:00', NULL, 17, 'Alejandra Botero', 'lotus@gmail.com', '3118300718', 31000.00, 0, 0.00, 31000.00, 31000.00),
(678, 'Manicura tradicional secado rapido', '2025-04-10 16:30:00', '2025-04-10 17:30:00', NULL, 13, 'Valeria Romero', 'lotus@gmail.com', '3118300718', 31000.00, 0, 18600.00, 12400.00, 31000.00),
(679, 'Manicure y Pedicure Tradicional ', '2025-04-10 14:30:00', '2025-04-10 16:00:00', NULL, 13, 'Lida Sanchez', 'lotus@gmail.com', '3136519397', 54000.00, 0, 32400.00, 21600.00, 54000.00),
(680, 'Manicura tradicional', '2025-04-10 14:00:00', '2025-04-10 15:00:00', NULL, 17, 'puerta', 'lotus@gmail.com', '0', 26000.00, 0, 0.00, 26000.00, 26000.00),
(682, 'Manicure Semipermanente + Pedicure tradicional', '2025-04-14 11:00:00', '2025-04-14 13:00:00', NULL, 19, 'Andrea Santiago', 'lotus@gmail.com', '3176591090', 82000.00, 0, 41000.00, 41000.00, 82000.00),
(683, 'pedicure Tradicional', '2025-04-14 14:00:00', '2025-04-14 15:00:00', NULL, 19, 'Alexandra Albino', 'lotus@gmail.com', '3154727078', 33000.00, 0, 16500.00, 16500.00, 33000.00),
(684, 'manicure semipermanente  ', '2025-04-15 10:00:00', '2025-04-15 11:30:00', NULL, 19, 'Nancy Pantoja', 'lotus@gmail.com', '3103059763', 52000.00, 0, 26000.00, 26000.00, 52000.00),
(685, 'Manicure Semipermanente + Pedicure tradicional', '2025-04-15 16:00:00', '2025-04-15 18:30:00', NULL, 19, 'carolina guzman', 'lotus@gmail.com', '3003011440', 85000.00, 0, 42500.00, 42500.00, 85000.00),
(686, 'DRENAJE LINFATICO', '2025-04-21 10:00:00', '2025-04-21 11:00:00', NULL, 17, 'maria Isabella Grenier', 'lotus@gmail.com', '3157555355', 110000.00, 0, 0.00, 110000.00, 110000.00),
(687, 'cambio de esmalte', '2025-04-15 11:00:00', '2025-04-15 11:20:00', NULL, 17, 'Magnolia', 'lotus@gmail.com', '0', 20000.00, 0, 0.00, 20000.00, 20000.00),
(688, 'limpieza facial sencilla', '2025-04-21 11:30:00', '2025-04-21 12:30:00', NULL, 17, 'maria Isabella Grenier', 'lotus@gmail.com', '3157555355', 35000.00, 0, 0.00, 35000.00, 35000.00),
(689, 'manicure semipermanente  + Dipping', '2025-04-21 15:00:00', '2025-04-21 18:30:00', NULL, 17, 'Mary Castro', 'lotus@gmail.com', '3134374505', 83000.00, 0, 0.00, 83000.00, 83000.00),
(690, 'Manicure y Pedicure Tradicional secado rapido', '2025-04-21 10:00:00', '2025-04-21 12:15:00', NULL, 19, 'Tina', 'lotus@gmail.com', '3202053728', 69000.00, 0, 34500.00, 34500.00, 69000.00),
(691, 'Manicure y pedicure Semi', '2025-04-22 12:05:00', '2025-04-22 15:00:00', NULL, 19, 'Carolina Carvajal', 'lotus@gmail.com', '3164999033', 110000.00, 0, 55000.00, 55000.00, 110000.00),
(692, 'Manicure y Pedicure Tradicional ', '2025-04-22 14:00:00', '2025-04-22 16:00:00', NULL, 17, 'Angie Lopez', 'lotus@gmail.com', '3175334444', 59000.00, 0, 0.00, 59000.00, 59000.00),
(693, 'Manicure Semipermanente + Pedicure tradicional', '2025-04-24 13:00:00', '2025-02-24 15:30:00', NULL, 13, 'Cata Hernandez', 'lotus@gmail.com', '3057539618', 85000.00, 0, 51000.00, 34000.00, 85000.00),
(694, 'manicure semipermanente  ', '2025-04-22 17:30:00', '2025-04-22 18:30:00', NULL, 19, 'Angelica Hernandez', 'lotus@gmail.com', '3212395175', 52000.00, 0, 26000.00, 26000.00, 52000.00),
(695, 'manicure semipermanente  ', '2025-04-24 16:00:00', '2025-04-24 17:30:00', NULL, 13, 'natalia ', 'lotus@gmail.com', '3208378072', 52000.00, 0, 31200.00, 20800.00, 52000.00),
(696, 'Recubrimiento acrilico', '2025-04-24 10:30:00', '2025-04-24 12:05:00', NULL, 13, 'Tatiana Plazas', 'lotus@gmail.com', '0', 93000.00, 0, 55800.00, 37200.00, 93000.00),
(697, 'limpieza manicure', '2025-04-23 10:00:00', '2025-04-23 10:45:00', NULL, 19, 'dana taub', 'lotus@gmail.com', '3505817749', 16000.00, 0, 8000.00, 8000.00, 16000.00),
(698, 'Manicure Semipermanente + Pedicure tradicional', '2025-04-23 11:00:00', '2025-04-23 13:00:00', NULL, 17, 'elicenia', 'lotus@gmail.com', '0', 85000.00, 0, 0.00, 85000.00, 85000.00),
(699, 'Manicure y Pedicure Tradicional ', '2025-04-24 14:00:00', '2025-04-24 16:00:00', NULL, 17, 'juanita Pirazan', 'lotus@gmail.com', '3102931264', 59000.00, 0, 0.00, 59000.00, 59000.00),
(700, 'limpieza de Pies', '2025-04-25 10:00:00', '2025-04-25 11:00:00', NULL, 17, 'Maria Mercedes Ortega ', 'lotus@gmail.com', '3112003441', 23000.00, 0, 0.00, 23000.00, 23000.00),
(701, 'Manicure Semipermanente + Pedicure tradicional', '2025-04-26 10:00:00', '2025-04-26 13:00:00', NULL, 13, 'daniela suarez', 'lotus@gmail.com', '3103440049', 85000.00, 0, 51000.00, 34000.00, 85000.00),
(702, 'manicure semipermanente  + Dipping', '2025-04-26 12:00:00', '2025-04-26 13:30:00', NULL, 14, 'carolina Ballesteros', 'lotus@gmail.com', '3213472315', 83000.00, 0, 41500.00, 41500.00, 83000.00),
(703, 'Pedicure Tradicional', '2025-04-24 10:30:00', '2025-04-24 11:30:00', NULL, 17, 'Tatiana Plazas', 'lotus@gmail.com', '0', 33000.00, 0, 0.00, 33000.00, 33000.00),
(704, 'Limpieza Pedicura', '2025-04-24 16:30:00', '2025-04-24 17:30:00', NULL, 17, 'Mary Castro', 'lotus@gmail.com', '0', 23000.00, 0, 0.00, 23000.00, 23000.00),
(705, 'manicure semipermanente  ', '2025-04-24 12:00:00', '2025-04-24 13:30:00', NULL, 19, 'maria  juliana', 'lotus@gmail.com', '0', 52000.00, 0, 26000.00, 26000.00, 52000.00),
(706, 'manicure semipermanente  ', '2025-04-26 10:00:00', '2025-04-26 11:30:00', NULL, 14, 'Marcela  Parra', 'lotus@gmail.com', '3214745551', 52000.00, 0, 26000.00, 26000.00, 52000.00),
(707, 'Manicura tradicional', '2025-04-29 10:00:00', '2025-04-29 11:00:00', NULL, 19, 'Gresan', 'lotus@gmail.com', '0', 16000.00, 0, 8000.00, 8000.00, 16000.00),
(708, 'Limpieza Pedicura', '2025-04-28 16:00:00', '2025-04-28 16:45:00', NULL, 19, 'Gresan', 'lotus@gmail.com', '0', 23000.00, 0, 11500.00, 11500.00, 23000.00),
(709, 'Manicura tradicional', '2025-04-28 17:00:00', '2025-04-28 18:00:00', NULL, 19, 'maria Alejandra', 'lotus@gmail.com', '3152154359', 26000.00, 0, 13000.00, 13000.00, 26000.00),
(710, 'manicure semipermanente  ', '2025-04-29 17:30:00', '2025-04-29 19:00:00', NULL, 19, 'luisa fernanda ortega', 'lotus@gmail.com', '3196904463', 52000.00, 0, 26000.00, 26000.00, 52000.00),
(711, 'Manicura tradicional', '2025-05-02 11:00:00', '2025-05-02 12:00:00', NULL, 13, 'Piedad', 'lotus@gmail.com', '3212027837', 26000.00, 0, 15600.00, 10400.00, 26000.00),
(712, 'Pedicure Tradicional', '2025-05-02 17:15:00', '2025-05-02 18:15:00', NULL, 13, 'valeria Ortiz', 'lotus@gmail.com', '3134870274', 33000.00, 0, 19800.00, 13200.00, 33000.00),
(713, 'Manicura tradicional', '2025-05-01 12:00:00', '2025-05-01 13:00:00', NULL, 13, 'paulina Espitia', 'lotus@gmail.com', '3102461954', 26000.00, 0, 15600.00, 10400.00, 26000.00),
(714, 'Manicure y pedicure Semi', '2025-05-05 09:00:00', '2025-05-05 12:00:00', NULL, 19, 'Jinna Aponte', 'lotus@gmail.com', '3015172035', 110000.00, 0, 55000.00, 55000.00, 110000.00),
(715, 'limpieza facial sencilla', '2025-05-02 15:00:00', '2025-05-02 16:00:00', NULL, 17, 'Isabella Perez', 'lotus@gmail.com', '0', 35000.00, 0, 0.00, 35000.00, 35000.00),
(718, 'masaje relajante', '2025-05-06 10:00:00', '2025-05-06 11:00:00', NULL, 17, 'rita ', 'lotus@gmail.com', '0', 60000.00, 0, 0.00, 60000.00, 60000.00),
(719, 'depilacion bikini, piernas', '2025-05-10 09:00:00', '2025-05-10 10:00:00', NULL, 11, 'Jinna Aponte', 'lotus@gmail.com', '3015172035', 65000.00, 0, 32500.00, 32500.00, 65000.00),
(720, 'limpieza facial sencilla', '2025-05-10 11:00:00', '2025-05-10 12:00:00', NULL, 17, 'Jinna Aponte', 'lotus@gmail.com', '3015172035', 95000.00, 0, 0.00, 95000.00, 95000.00),
(721, 'lifting pestañas', '2025-05-10 12:00:00', '2025-05-10 13:00:00', NULL, 11, 'Jinna Aponte', 'lotus@gmail.com', '3015172035', 73000.00, 0, 36500.00, 36500.00, 73000.00),
(722, 'lifting pestañas', '2025-05-17 11:00:00', '2025-05-17 12:00:00', NULL, 11, 'natalia onofre', 'lotus@gmail.com', '3213711350', 73000.00, 0, 36500.00, 36500.00, 73000.00),
(723, 'lifting pestañas', '2025-05-17 11:00:00', '2025-05-17 12:00:00', NULL, 17, 'juan barreto', 'lotus@gmail.com', '3152493888', 73000.00, 0, 0.00, 73000.00, 73000.00),
(724, 'manicure semipermanente  ', '2025-05-08 17:00:00', '2025-05-08 18:30:00', NULL, 13, 'carolina Bernal', 'lotus@gmail.com', '0', 52000.00, 0, 31200.00, 20800.00, 52000.00),
(725, 'Manicura tradicional', '2025-05-08 12:15:00', '2025-05-08 13:30:00', NULL, 17, 'Alejandra Moreno', 'lotus@gmail.com', '0', 26000.00, 0, 0.00, 26000.00, 26000.00),
(726, 'Manicura tradicional', '2025-05-08 12:15:00', '2025-05-08 13:30:00', NULL, 13, 'valeria Moreno', 'lotus@gmail.com', '0', 26000.00, 0, 15600.00, 10400.00, 26000.00),
(727, 'Manicure y Pedicure Tradicional ', '2025-05-07 10:30:00', '2025-05-07 13:30:00', NULL, 17, 'aura de rodriguez', 'lotus@gmail.com', '0', 57000.00, 30, 0.00, 39900.00, 39900.00),
(728, 'manicure soffgel', '2025-05-07 12:05:00', '2025-05-07 14:30:00', NULL, 19, 'sofia Rios', 'lotus@gmail.com', '3105819529', 93000.00, 0, 46500.00, 46500.00, 93000.00),
(729, 'Manicura tradicional', '2025-05-07 16:30:00', '2025-05-07 18:30:00', NULL, 17, 'luciana', 'lotus@gmail.com', '0', 34000.00, 0, 0.00, 34000.00, 34000.00),
(730, 'Manicura tradicional', '2025-05-07 16:30:00', '2025-05-07 18:00:00', NULL, 19, 'mara cifuentes', 'lotus@gmail.com', '3505613412', 26000.00, 0, 13000.00, 13000.00, 26000.00),
(731, 'Manicure y Pedicure Tradicional ', '2025-05-09 12:05:00', '2025-05-09 14:05:00', NULL, 17, 'sandra zapata', 'lotus@gmail.com', '3202424474', 59000.00, 0, 0.00, 59000.00, 59000.00),
(732, 'Manicure y Pedicure Tradicional ', '2025-05-09 12:00:00', '2025-05-09 14:00:00', NULL, 13, 'clara', 'lotus@gmail.com', '3202424474', 59000.00, 0, 35400.00, 23600.00, 59000.00),
(733, 'manicure base rubber + semipermante', '2025-05-10 13:00:00', '2025-05-10 15:00:00', NULL, 13, 'Erika Piraquive', 'lotus@gmail.com', '3228501235', 93000.00, 0, 55800.00, 37200.00, 93000.00),
(734, 'limpieza microdermoabrasion', '2025-05-12 10:00:00', '2025-05-12 11:00:00', NULL, 17, 'claudia Riaño', 'lotus@gmail.com', '3114884316', 50000.00, 0, 0.00, 50000.00, 50000.00),
(735, 'masaje relajante', '2025-05-12 16:30:00', '2025-05-12 17:30:00', NULL, 17, 'maria Alejandra', 'lotus@gmail.com', '3152154359', 60000.00, 0, 0.00, 60000.00, 60000.00),
(736, 'manicure semipermanente  +  pedicure', '2025-05-14 16:00:00', '2025-05-14 19:00:00', NULL, 13, 'Mary Castro', 'lotus@gmail.com', '3134374505', 116000.00, 0, 69600.00, 46400.00, 116000.00),
(737, 'manicure semipermanente  ', '2025-05-13 17:00:00', '2025-05-13 18:00:00', NULL, 13, 'elicenia', 'lotus@gmail.com', '0', 52000.00, 0, 31200.00, 20800.00, 52000.00),
(738, 'manicure semipermanente  ', '2025-05-15 10:00:00', '2025-05-15 11:00:00', NULL, 19, 'Nancy Pantoja', 'lotus@gmail.com', '0', 52000.00, 0, 26000.00, 26000.00, 52000.00),
(739, 'Manicura tradicional', '2025-05-14 13:20:00', '2025-05-14 14:00:00', NULL, 13, 'natalia vargas', 'lotus@gmail.com', '0', 26000.00, 0, 15600.00, 10400.00, 26000.00),
(740, 'manicure soffgel', '2025-05-15 08:00:00', '2025-05-15 10:00:00', NULL, 19, 'Maria Fernanda Gomez', 'lotus@gmail.com', '3503996543', 93000.00, 0, 46500.00, 46500.00, 93000.00),
(741, 'Manicure y Pedicure Tradicional ', '2025-05-15 10:00:00', '2025-05-15 12:30:00', NULL, 17, 'maria helena caceres', 'lotus@gmail.com', '3163377534', 59000.00, 0, 0.00, 59000.00, 59000.00),
(742, 'manicure semipermanente  ', '2025-05-15 15:30:00', '2025-05-15 17:00:00', NULL, 19, 'Juliana Valentina Quiazua', 'lotus@gmail.com', '3123610285', 52000.00, 0, 26000.00, 26000.00, 52000.00),
(743, 'manicure semipermanente  ', '2025-05-16 11:30:00', '2025-05-16 12:30:00', NULL, 19, 'Maria juliana Ortiz', 'lotus@gmail.com', '3208652567', 52000.00, 0, 26000.00, 26000.00, 52000.00),
(744, 'manicure semipermanente  ', '2025-05-15 16:00:00', '2025-05-15 17:30:00', NULL, 17, 'Natalia Moreno', 'lotus@gmail.com', '3208378072', 52000.00, 0, 0.00, 52000.00, 52000.00),
(745, 'Manicure y Pedicure Tradicional  spa', '2025-05-17 15:00:00', '2025-05-07 17:00:00', NULL, 11, 'carmenza Ortegon', 'lotus@gmail.com', '3107539853', 64000.00, 0, 32000.00, 32000.00, 64000.00),
(746, 'Manicure Press On + retiro de Semi', '2025-05-20 10:00:00', '2025-05-20 12:00:00', NULL, 19, 'elsa arrieta', 'vdovale477@gmail.com', '3028168730', 93000.00, 0, 46500.00, 46500.00, 93000.00),
(747, 'Manicura tradicional', '2025-05-20 17:00:00', '2025-05-20 18:00:00', NULL, 17, 'Vanessa Lopez', 'lotus@gmail.com', '3125044878', 26000.00, 0, 0.00, 26000.00, 26000.00),
(748, 'Pedicure Tradicional', '2025-05-20 17:00:00', '2025-05-20 18:00:00', NULL, 19, 'Vanessa Lopez', 'lotus@gmail.com', '3125044878', 33000.00, 0, 16500.00, 16500.00, 33000.00),
(749, 'manicure semipermanente  ', '2025-05-21 17:30:00', '2025-05-21 19:00:00', NULL, 19, 'luisa fernanda ortega', 'lotus@gmail.com', '3196904463', 52000.00, 0, 26000.00, 26000.00, 52000.00),
(750, 'manicure semipermanente  ', '2025-05-23 11:00:00', '2025-05-23 12:30:00', NULL, 19, 'catalina Hernandez', 'lotus@gmail.com', '3057539618', 52000.00, 0, 26000.00, 26000.00, 52000.00),
(751, 'manicure recubrimiento en acrilico', '2025-05-24 10:00:00', '2025-05-24 12:00:00', NULL, 13, 'Samanta Hernandez', 'lotus@gmail.com', '3012372692', 93000.00, 0, 55800.00, 37200.00, 93000.00),
(752, 'manicure recubrimiento en acrilico', '2025-05-24 10:00:00', '2025-05-24 12:00:00', NULL, 11, 'Hilda Diaz', 'lotus@gmail.com', '3012372692', 93000.00, 0, 46500.00, 46500.00, 93000.00),
(753, 'postura pestañas efecto natural', '2025-05-24 12:00:00', '2025-05-24 13:00:00', NULL, 11, 'Samanta', 'lotus@gmail.com', '3012372692', 90000.00, 0, 45000.00, 45000.00, 90000.00),
(755, 'Pedicure Tradicional', '2025-05-23 17:30:00', '2025-05-23 18:30:00', NULL, 19, 'Estefania Meluk', 'lotus@gmail.com', '3105699212', 33000.00, 0, 16500.00, 16500.00, 33000.00),
(756, 'Manicure y Pedicure Tradicional ', '2025-05-23 11:00:00', '2025-05-23 12:00:00', NULL, 17, 'rosmery ortegon', 'lotus@gmail.com', '0', 64000.00, 0, 0.00, 64000.00, 64000.00),
(757, 'Manicure Semipermanente + Pedicure tradicional', '2025-05-24 11:30:00', '2025-05-24 14:30:00', NULL, 17, 'nahima', 'lotus@gmail.com', '3152736940', 85000.00, 0, 0.00, 85000.00, 85000.00),
(758, 'manicure semipermanente  ', '2025-05-24 16:00:00', '2025-05-24 17:00:00', NULL, 13, 'Laura Romero', 'lotus@gmail.com', '3006958893', 52000.00, 0, 31200.00, 20800.00, 52000.00),
(759, 'Manicure Semi + limpieza de pies', '2025-05-24 17:30:00', '2025-05-24 19:00:00', NULL, 13, 'daniela suarez', 'lotus@gmail.com', '0', 75000.00, 0, 45000.00, 30000.00, 75000.00),
(760, 'Manicura tradicional', '2025-05-24 17:00:00', '2025-05-24 18:00:00', NULL, 14, 'maria camila', 'lotus@gmail.com', '3042196693', 26000.00, 0, 13000.00, 13000.00, 26000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `GastosID` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Categorias` varchar(1000) NOT NULL,
  `Descripcion` varchar(1000) NOT NULL,
  `Valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `gastos`
--

INSERT INTO `gastos` (`GastosID`, `Fecha`, `Categorias`, `Descripcion`, `Valor`) VALUES
(1, '2024-09-28', 'Insumos', 'DATAFONO NEO', -60000),
(2, '2024-09-28', 'Gastos de Representacion', 'ALMUERZO SANDUCHES', -38000),
(3, '2024-09-28', 'Empleados Fijos', 'TURNOS JULIETA', -165000),
(4, '2024-09-28', 'Varios', 'PICAP VOLANTES', -12000),
(5, '2024-09-28', 'Varios', 'CABLES DE TOMAS', -30000),
(6, '2024-09-28', 'Varios', 'VASOS, VINIPEL', -20000),
(7, '2024-09-28', 'Empleados Fijos', 'TURNOS JULIETA 9/09/2024', -55000),
(8, '2024-09-28', 'Empleados Fijos', 'TURNOS JULIETA 10/09/2024', -55000),
(9, '2024-09-28', 'Empleados Fijos', 'TURNOS JULIETA 12/09/2024', -55000),
(10, '2024-09-28', 'Varios', 'PAPEL Y GUANTES', -20000),
(11, '2024-09-28', 'Varios', 'Copia Llaves', -11600),
(12, '2024-09-28', 'Varios', 'Afilado De Corta Cuticulas', -36000),
(13, '2024-09-28', 'Varios', 'Compra Recibos Caja Menor', -3800),
(14, '2024-09-28', 'Varios', 'Compra De Uñas Para Mostrario Organic', -11900),
(15, '2024-09-28', 'Varios', 'Compra De Agua Garrafa', -8400),
(16, '2024-09-28', 'Varios', 'Compra De Azucar Y Vasos', -7200),
(17, '2024-09-28', 'Gastos de Representacion', 'Entrego A July ', -10000),
(18, '2024-09-28', 'Insumos', 'Compra De Pantuflas', -30000),
(19, '2024-09-30', 'Empleados Fijos', 'PAGO 2DA QUINCENA ADRIANA', -680000),
(20, '2024-09-30', 'Empleados Fijos', 'Pago Nikol para completar 2da quincena', -50500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nomina`
--

CREATE TABLE `nomina` (
  `NominaID` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Medio_Pagos` varchar(30) NOT NULL,
  `Descripcion` varchar(1000) NOT NULL,
  `Empleado` varchar(100) NOT NULL,
  `Valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `nomina`
--

INSERT INTO `nomina` (`NominaID`, `Fecha`, `Medio_Pagos`, `Descripcion`, `Empleado`, `Valor`) VALUES
(11, '2024-11-05', 'Efectivo', 'Pago de Turno', 'Laura Jaime', 65000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precio_productos_venta`
--

CREATE TABLE `precio_productos_venta` (
  `ProductID` int(11) NOT NULL,
  `Marca` varchar(1000) NOT NULL,
  `Tamano` varchar(1000) NOT NULL,
  `Descripcion` varchar(1000) NOT NULL,
  `Valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `precio_productos_venta`
--

INSERT INTO `precio_productos_venta` (`ProductID`, `Marca`, `Tamano`, `Descripcion`, `Valor`) VALUES
(2, 'BUKI PRO', '600 ML', 'Tono Perla Beige 600 ML', 156000),
(3, 'BUKI PRO', '600 ML', 'Coctel De Aminoacidos 600 ML', 156000),
(4, 'BUKI PRO', '250 ML', 'Tono Perla Beige 250 ML', 79000),
(5, 'BUKI PRO', '250 ML', 'Tono Sobre Gris Plata 250 ML', 79000),
(6, 'BUKI PRO', '250 ML', 'Tono Rojo Cobre 250 ML', 79000),
(7, 'BUKI PRO', '250 ML', 'Tono Rojo Marron 250 ML', 79000),
(8, 'BUKI PRO', '250 ML', 'Tono Rojo Vino 250 ML', 79000),
(9, 'BUKI PRO', '250 ML', 'Coctel De Aminoacidos 250 ML', 79000),
(10, 'BUKI PRO', '300 ML', 'Shampoo Sin Sal 300 ML', 68000),
(11, 'BUKI PRO', '600 ML', 'Tratamiento De Frutas 600 ML', 156000),
(12, 'BUKI PRO', '250 ML', 'Tratamiento De Frutas 250 ML', 79000),
(13, 'BUKI PRO', '30 ML', 'Serum Para Puntas 30 ML', 65000),
(14, 'LOTUS DREAM SPA', '235 GR', 'Mantequilla Maracuya 235 GR', 40000),
(15, 'LOTUS DREAM SPA', '235 GR', 'Mantequillas Frutos Rojos 235 GR', 40000),
(16, 'LOTUS DREAM SPA', '235 GR', 'Mantequillas Sandia Victoria Secret 235 GR', 40000),
(17, 'LOTUS DREAM SPA', '235 GR', 'Mantequillas Coco 235 GR', 40000),
(18, 'LOTUS DREAM SPA', '235 GR', 'Mantequillas Vainilla 235 GR', 40000),
(19, 'ASBELL', 'UNID', 'KIT DESECHABLES', 15000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` int(11) NOT NULL,
  `nombre_servicio` varchar(100) NOT NULL,
  `valor` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `nombre_servicio`, `valor`) VALUES
(72, 'Manicura Tradicional', 25000.00),
(73, 'Manicura Semipermanente', 50000.00),
(74, 'Manicura Tradicional Niña', 25000.00),
(75, 'Manicura Tradicional Hombre', 25000.00),
(76, 'Manicura Base Ruber Tradicional', 70000.00),
(77, 'Manicura Base Ruber Semipermanente', 90000.00),
(78, 'Manicura Uñas Acrilicas Esculpidas', 130000.00),
(79, 'Manicura Uñas Acrilicas con Tips', 110000.00),
(80, 'Manicura Uñas PolyGel', 130000.00),
(81, 'Manicura Uñas PolyGel con Tips', 110000.00),
(82, 'Manicura Uñas Press On', 90000.00),
(83, 'Manicura con Baño de Acrilico', 90000.00),
(84, 'Manicura con Baño de Poly Gel', 90000.00),
(85, 'Retoque PolyGel, Acrilico y Prees On', 90000.00),
(86, 'Retiro Esmalte Semipermanente', 15000.00),
(87, 'Retiro Acrilico, Poly gel o Prees On', 25000.00),
(88, 'Decoracion Elaborada por Uña', 1000.00),
(89, 'Largo adicional apartir de 4 cm', 15000.00),
(90, 'Pedicure Tradicional', 30000.00),
(91, 'Pedicure Semipermanente', 55000.00),
(92, 'Depilación Pierna Completa', 35000.00),
(93, 'Depilación Media Pierna', 25000.00),
(94, 'Depilación Axilas', 15000.00),
(95, 'Depilación Nariz', 10000.00),
(96, 'Depilación Bikini Completo', 40000.00),
(97, 'Depilación Medio Bikini', 30000.00),
(98, 'Depilación Brazos', 30000.00),
(99, 'Depilación Medio Brazo', 25000.00),
(100, 'Depilación cejas', 15000.00),
(101, 'Depilación bigote', 10000.00),
(102, 'Depilación Cara', 40000.00),
(103, 'Depilación con Hilo Bigote', 15000.00),
(104, 'Depilación con Hilo Barbilla', 10000.00),
(105, 'Depilación con Hilo Facial: (No Incluye Cejas)', 30000.00),
(106, 'Depilación con Hilo Cejas ', 30000.00),
(107, 'sombreado de cejas con henna', 30000.00),
(108, 'Limpieza facial sencilla', 90000.00),
(109, 'Limpieza facial profunda', 120000.00),
(110, 'Rejuvenecimiento Facial  Fototerapia', 110000.00),
(111, 'Limpieza facial profunda mas peeling químico o físico ', 120000.00),
(112, 'Pestañas Efecto Natural', 80000.00),
(113, 'Pestañas Efecto Pestañina', 80000.00),
(114, 'Pestañas Efecto Volumen', 110000.00),
(115, 'Pestañas Hibridas', 120000.00),
(116, 'Retoque de Pestañas', 60000.00),
(117, 'Masaje Relajante', 100000.00),
(118, 'Masaje Descontracturante', 90000.00),
(119, 'Drenaje Linfático', 100000.00),
(120, 'Masaje Anticelulítico', 100000.00),
(121, 'Masaje Reductor', 110000.00),
(122, 'Manicura Tradicional Secado Rápido', 30000.00),
(123, 'Pedicure Tradicional Spa', 35000.00),
(124, 'Cambio de Esmalte', 20000.00),
(125, 'Limpieza Manicura', 15000.00),
(126, 'Lifting de Pestañas', 70000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_productos`
--

CREATE TABLE `ventas_productos` (
  `VentaID` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Unidades` int(11) NOT NULL,
  `Descripcion` varchar(1000) NOT NULL,
  `Porcentaje` int(11) NOT NULL,
  `Valor_Producto` int(11) NOT NULL,
  `Valor_Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`GastosID`);

--
-- Indices de la tabla `nomina`
--
ALTER TABLE `nomina`
  ADD PRIMARY KEY (`NominaID`);

--
-- Indices de la tabla `precio_productos_venta`
--
ALTER TABLE `precio_productos_venta`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas_productos`
--
ALTER TABLE `ventas_productos`
  ADD PRIMARY KEY (`VentaID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=761;

--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `GastosID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `nomina`
--
ALTER TABLE `nomina`
  MODIFY `NominaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `precio_productos_venta`
--
ALTER TABLE `precio_productos_venta`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT de la tabla `ventas_productos`
--
ALTER TABLE `ventas_productos`
  MODIFY `VentaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
