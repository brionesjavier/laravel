-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-07-2024 a las 17:17:36
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
-- Base de datos: `helpdeskapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `is_active` bit(1) DEFAULT b'1',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_removed` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `is_active`, `date_created`, `date_modified`, `date_removed`) VALUES
(1, 'Hardware', b'1', '2024-07-21 00:55:17', '2024-07-21 00:55:17', NULL),
(2, 'Software', b'1', '2024-07-21 00:55:17', '2024-07-21 00:55:17', NULL),
(3, 'Networking', b'1', '2024-07-21 00:55:17', '2024-07-21 00:55:17', NULL),
(4, 'Security', b'1', '2024-07-21 00:55:17', '2024-07-21 00:55:17', NULL),
(5, 'Database', b'1', '2024-07-21 00:55:17', '2024-07-21 00:55:17', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`) VALUES
(1, 'test', 'test@hotmail.com', 'tes'),
(2, 'hola', 'test@hotmail.com', '123'),
(3, 'John Doe', 'john.doe@example.com', '555-1234'),
(4, 'Jane Smith', 'jane.smith@example.com', '555-5678'),
(5, 'Alice Johnson', 'alice.johnson@example.com', '555-8765'),
(6, 'Bob Brown', 'bob.brown@example.com', '555-4321'),
(7, 'Charlie Davis', 'charlie.davis@example.com', '555-6789'),
(8, 'Diana Evans', 'diana.evans@example.com', '555-3456'),
(9, 'Edward Harris', 'edward.harris@example.com', '555-7890'),
(10, 'Fiona Green', 'fiona.green@example.com', '555-2345'),
(11, 'George King', 'george.king@example.com', '555-6789'),
(12, 'Hannah Lee', 'hannah.lee@example.com', '555-9876'),
(13, 'Ian Martin', 'ian.martin@example.com', '555-5432'),
(14, 'Jack Nelson', 'jack.nelson@example.com', '555-3210'),
(15, 'Karen Ortiz', 'karen.ortiz@example.com', '555-6543'),
(16, 'Leo Parker', 'leo.parker@example.com', '555-4320'),
(17, 'Mia Quinn', 'mia.quinn@example.com', '555-8760'),
(18, 'Nina Roberts', 'nina.roberts@example.com', '555-2109'),
(19, 'Oscar Smith', 'oscar.smith@example.com', '555-0987'),
(20, 'Paula Thompson', 'paula.thompson@example.com', '555-3450'),
(21, 'Quincy Underwood', 'quincy.underwood@example.com', '555-7891'),
(22, 'Rachel Vance', 'rachel.vance@example.com', '555-6540'),
(23, 'Steve Wilson', 'steve.wilson@example.com', '555-9870'),
(24, 'Tracy Young', 'tracy.young@example.com', '555-3219'),
(25, 'Ursula Zamora', 'ursula.zamora@example.com', '555-4329'),
(26, 'Victor Adams', 'victor.adams@example.com', '555-5679'),
(27, 'Wendy Brooks', 'wendy.brooks@example.com', '555-6780'),
(28, 'Xander Carter', 'xander.carter@example.com', '555-7892'),
(29, 'Yvonne Diaz', 'yvonne.diaz@example.com', '555-2108'),
(30, 'Zachary Evans', 'zachary.evans@example.com', '555-3451'),
(31, 'Ava Fisher', 'ava.fisher@example.com', '555-4328'),
(32, 'Benjamin Gomez', 'benjamin.gomez@example.com', '555-5677'),
(33, 'Catherine Hall', 'catherine.hall@example.com', '555-6788'),
(34, 'Daniel Ingram', 'daniel.ingram@example.com', '555-7893');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role`
--

CREATE TABLE `role` (
  `role_id` int(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `date_removed` datetime(6) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `is_active` bit(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `role`
--

INSERT INTO `role` (`role_id`, `name`, `date_removed`, `date_created`, `date_modified`, `is_active`) VALUES
(1, 'basico', NULL, '2024-07-20 22:11:57.000000', NULL, b'00001'),
(2, 'administrativo', NULL, '2024-07-20 22:11:57.000000', NULL, b'00001'),
(3, 'jefatura', NULL, '2024-07-20 22:14:30.000000', NULL, b'00001'),
(4, 'soporte', NULL, '2024-07-20 22:14:30.000000', NULL, b'00001'),
(5, 'admin soporte', NULL, '2024-07-20 22:16:25.000000', NULL, b'00001'),
(6, 'admin sistema', NULL, '2024-07-20 22:16:25.000000', NULL, b'00001');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `state_tickets`
--

CREATE TABLE `state_tickets` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(50) NOT NULL,
  `state_description` varchar(255) DEFAULT NULL,
  `is_active` bit(1) DEFAULT b'1',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_removed` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `state_tickets`
--

INSERT INTO `state_tickets` (`state_id`, `state_name`, `state_description`, `is_active`, `date_created`, `date_modified`, `date_removed`) VALUES
(1, 'Nuevo', 'Requerimiento recién creado', b'1', '2024-07-21 01:03:15', '2024-07-21 01:03:15', NULL),
(2, 'Asignado', 'Requerimiento asignado a un agente o técnico', b'1', '2024-07-21 01:03:15', '2024-07-21 01:03:15', NULL),
(3, 'En Progreso', 'Requerimiento en proceso de resolución', b'1', '2024-07-21 01:03:15', '2024-07-21 01:03:15', NULL),
(4, 'En Espera', 'Requerimiento en espera de información adicional', b'1', '2024-07-21 01:03:15', '2024-07-21 01:03:15', NULL),
(5, 'Resuelto', 'Requerimiento resuelto', b'1', '2024-07-21 01:03:15', '2024-07-21 01:03:15', NULL),
(6, 'Cerrado', 'Requerimiento cerrado', b'1', '2024-07-21 01:03:15', '2024-07-21 01:03:15', NULL),
(7, 'Anulado', 'Requerimiento cancelado o invalidado', b'1', '2024-07-21 01:03:15', '2024-07-21 01:03:15', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategories`
--

CREATE TABLE `subcategories` (
  `subcategory_id` int(11) NOT NULL,
  `subcategory_name` varchar(50) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `is_active` bit(1) DEFAULT b'1',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_removed` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `subcategories`
--

INSERT INTO `subcategories` (`subcategory_id`, `subcategory_name`, `category_id`, `is_active`, `date_created`, `date_modified`, `date_removed`) VALUES
(1, 'Printers', 1, b'1', '2024-07-21 00:55:17', '2024-07-21 00:55:17', NULL),
(2, 'Desktops', 1, b'1', '2024-07-21 00:55:17', '2024-07-21 00:55:17', NULL),
(3, 'Laptops', 1, b'1', '2024-07-21 00:55:17', '2024-07-21 00:55:17', NULL),
(4, 'Operating Systems', 2, b'1', '2024-07-21 00:55:17', '2024-07-21 00:55:17', NULL),
(5, 'Applications', 2, b'1', '2024-07-21 00:55:17', '2024-07-21 00:55:17', NULL),
(6, 'Network Setup', 3, b'1', '2024-07-21 00:55:17', '2024-07-21 00:55:17', NULL),
(7, 'WiFi Issues', 3, b'1', '2024-07-21 00:55:17', '2024-07-21 00:55:17', NULL),
(8, 'Firewall', 4, b'1', '2024-07-21 00:55:17', '2024-07-21 00:55:17', NULL),
(9, 'Antivirus', 4, b'1', '2024-07-21 00:55:17', '2024-07-21 00:55:17', NULL),
(10, 'Backup', 5, b'1', '2024-07-21 00:55:17', '2024-07-21 00:55:17', NULL),
(11, 'Performance Tuning', 5, b'1', '2024-07-21 00:55:17', '2024-07-21 00:55:17', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_assignments`
--

CREATE TABLE `ticket_assignments` (
  `assignment_id` int(11) NOT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `assigned_user_id` int(11) DEFAULT NULL,
  `assigned_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_attachments`
--

CREATE TABLE `ticket_attachments` (
  `attachment_id` int(11) NOT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_comments`
--

CREATE TABLE `ticket_comments` (
  `comment_id` int(11) NOT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment_text` varchar(255) DEFAULT NULL,
  `comment_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_history`
--

CREATE TABLE `ticket_history` (
  `history_id` int(11) NOT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `change_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by_user_id` int(11) DEFAULT NULL,
  `previous_state_id` int(11) DEFAULT NULL,
  `new_state_id` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_ticket`
--

CREATE TABLE `tm_ticket` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `subcategories` int(11) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `date_removed` datetime DEFAULT NULL,
  `state_id` int(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tm_ticket`
--

INSERT INTO `tm_ticket` (`id`, `title`, `description`, `user_id`, `categories_id`, `subcategories`, `date_created`, `date_modified`, `date_removed`, `state_id`, `is_active`) VALUES
(76, 'Consulta sobre políticas de privacidad', 'Cliente necesita información sobre las políticas de privacidad de la empresa', 2, NULL, NULL, '2024-05-09 08:30:00', '2024-05-09 10:15:00', NULL, 1, 1),
(85, 'test', 'test', NULL, 1, NULL, '2024-07-21 18:15:11', NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_user`
--

CREATE TABLE `tm_user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `rut` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `date_removed` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tm_user`
--

INSERT INTO `tm_user` (`user_id`, `name`, `last_name`, `rut`, `email`, `phone`, `address`, `role_id`, `date_created`, `date_modified`, `date_removed`, `is_active`) VALUES
(2, 'jose', 'martinez', '123081042', 'jose@ksad.com', '12345678966', 'nose donde   donde', NULL, '2024-07-19 16:16:53', '2024-07-21 12:51:39', '2024-07-21 12:51:45', 0),
(3, 'javier', 'briones', '17853960-1', 'javier.brms@gmail.com', '972603038', 'cerro santa lucia 33 ', NULL, '2024-07-19 16:06:24', '2024-07-19 18:11:29', '2024-07-19 18:20:09', 0),
(4, 'maria', 'martinez', 'asas', 'jose@ksad.com', '123456789', 'nose donde', NULL, '2024-07-19 16:17:52', NULL, NULL, 1),
(45, 'Juan', 'Pérez', '123145678-9', 'juanperez@email.com', '+56912345678', 'Calle 123', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(46, 'María', 'Gómez', '234156789-0', 'mariagomez@email.com', '+56998765432', 'Avenida Principal 456', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(47, 'Carlos', 'Rodríguez', '134567890-1', 'carlosrodriguez@email.com', '+56212348765', 'Calle Secundaria 789', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(48, 'Laura', 'Martínez', '456178901-2', 'lauramartinez@email.com', '+56298765432', 'Pasaje Peatonal 10', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(49, 'Andrés', 'López', '567890112-3', 'andreslopez@email.com', '+56987654321', 'Camino Rural 23', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(50, 'Ana', 'Silva', '678901213-4', 'anasilva@email.com', '+56234567890', 'Plaza Central 45', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(51, 'Pablo', 'Soto', '789012314-5', 'pablosoto@email.com', '+56923456789', 'Ruta Costera 67', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(52, 'Claudia', 'Flores', '890112345-6', 'claudiaflores@email.com', '+56267894561', 'Avenida Norte 89', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(53, 'Javier', 'González', '901213456-7', 'javiergonzalez@email.com', '+56945678901', 'Calle Poniente 12', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(54, 'Valentina', 'Morales', '012134567-8', 'valentinamorales@email.com', '+56278901234', 'Avenida Sur 34', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(55, 'Patricia', 'Ramírez', '123481765-9', 'patriciaramirez@email.com', '+56234567890', 'Calle Peatonal 56', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(56, 'Martín', 'Fernández', '234876154-0', 'martinfernandez@email.com', '+56956789012', 'Avenida Central 78', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(57, 'Valeria', 'Medina', '345678901-1', 'valeriamedina@email.com', '+56267890123', 'Pasaje Norte 90', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(58, 'Felipe', 'Castro', '456781901-2', 'felipecastro@email.com', '+56989012345', 'Ruta Sur 34', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', '2024-07-19 23:06:45', 0),
(59, 'Carmen', 'Morales', '567891012-3', 'carmenmorales@email.com', '+56278901234', 'Avenida Este 12', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(60, 'Rodrigo', 'Pérez', '678901123-4', 'rodrigoperez@email.com', '+56990123456', 'Calle Oeste 56', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', '2024-07-19 23:07:30', 0),
(61, 'Lucía', 'González', '789011234-5', 'luciagonzalez@email.com', '+56234567890', 'Camino Rural 78', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(62, 'Andrés', 'Martínez', '891012345-6', 'andrsmartinez@email.com', '+56956789012', 'Calle Principal 90', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(63, 'Sofía', 'López', '901234156-7', 'sofialopez@email.com', '+56267890123', 'Pasaje Peatonal 34', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(64, 'Diego', 'Silva', '012345617-8', 'diegosilva@email.com', '+56989012345', 'Avenida Secundaria 12', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(85, 'Gabriela', 'Hernández', '23456789-0', 'gabrielahernandez@email.com', '+56912345678', 'Calle 123', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(86, 'Manuel', 'Díaz', '34567890-1', 'manueldiaz@email.com', '+56998765432', 'Avenida Principal 456', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(87, 'Valentina', 'Sánchez', '45678901-2', 'valentinasanchez@email.com', '+56212348765', 'Calle Secundaria 789', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(88, 'Matías', 'Rojas', '56789012-3', 'matiasrojas@email.com', '+56298765432', 'Pasaje Peatonal 10', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(89, 'Isabella', 'Molina', '67890123-4', 'isabellamolina@email.com', '+56987654321', 'Camino Rural 23', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(90, 'Joaquín', 'Ortega', '78901234-5', 'joaquinortega@email.com', '+56234567890', 'Plaza Central 45', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(91, 'Daniela', 'Castro', '89012345-6', 'danielacastro@email.com', '+56923456789', 'Ruta Costera 67', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(92, 'Felipe', 'Gutiérrez', '90123456-7', 'felipegutierrez@email.com', '+56267894561', 'Avenida Norte 89', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(93, 'Martina', 'López', '01234567-8', 'martinalopez@email.com', '+56945678901', 'Calle Poniente 12', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(94, 'Lucas', 'Gómez', '98765432-1', 'lucasgomez@email.com', '+56912345678', 'Calle 123', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(95, 'Valeria', 'Martínez', '87654321-0', 'valeriamartinez@email.com', '+56998765432', 'Avenida Principal 456', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(96, 'Matías', 'Rodríguez', '76543210-9', 'matiasrodriguez@email.com', '+56212348765', 'Calle Secundaria 789', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(97, 'Antonella', 'Flores', '65432109-8', 'antonellaflores@email.com', '+56298765432', 'Pasaje Peatonal 10', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(98, 'Diego', 'Pérez', '54321098-7', 'diegoperez@email.com', '+56987654321', 'Camino Rural 23', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(99, 'Mía', 'Silva', '43210987-6', 'miasilva@email.com', '+56234567890', 'Plaza Central 45', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(100, 'Benjamín', 'Soto', '32109876-5', 'benjaminsoto@email.com', '+56923456789', 'Ruta Costera 67', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(101, 'Isidora', 'Flores', '21098765-4', 'isidoraflores@email.com', '+56267894561', 'Avenida Norte 89', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(102, 'Catalina', 'González', '09876543-2', 'catalinagonzalez@email.com', '+56945678901', 'Calle Poniente 12', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(103, 'Sebastián', 'Morales', '11223344-5', 'sebastianmorales@email.com', '+56998765432', 'Avenida Sur 56', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(104, 'Camila', 'Herrera', '22334455-6', 'camilaherrera@email.com', '+56234567890', 'Ruta Este 78', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(185, 'Emilia', 'Lagos', '33445566-7', 'emilialagos@email.com', '+56912345678', 'Calle 123', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(186, 'Sebastián', 'Muñoz', '44556677-8', 'sebastianmunoz@email.com', '+56998765432', 'Avenida Principal 456', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(187, 'Antonella', 'Suárez', '55667788-9', 'antonellasuarez@email.com', '+56212348765', 'Calle Secundaria 789', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(188, 'Matías', 'Ortega', '66778899-0', 'matiasortega@email.com', '+56298765432', 'Pasaje Peatonal 10', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(189, 'Valentina', 'Vega', '77889900-1', 'valentinavega@email.com', '+56987654321', 'Camino Rural 23', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(190, 'Luciano', 'Herrera', '88990011-2', 'lucianoherrera@email.com', '+56234567890', 'Plaza Central 45', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(191, 'Isabella', 'Castillo', '99001122-3', 'isabellacastillo@email.com', '+56923456789', 'Ruta Costera 67', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(192, 'Benjamín', 'Fuentes', '001129233-4', 'benjaminfuentes@email.com', '+56267894561', 'Avenida Norte 89', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(193, 'Valeria', 'Soto', '112233484-5', 'valeriasoto@email.com', '+56945678901', 'Calle Poniente 12', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(194, 'Tomás', 'Hernández', '2233745455-6', 'tomashernandez@email.com', '+56912345678', 'Calle 123', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(195, 'Martina', 'Salazar', '334465566-7', 'martinasalazar@email.com', '+56998765432', 'Avenida Principal 456', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(196, 'Lucas', 'Molina', '445566277-8', 'lucasmolina@email.com', '+56212348765', 'Calle Secundaria 789', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(197, 'Antonia', 'Ramírez', '556657788-9', 'antoniamirez@email.com', '+56298765432', 'Pasaje Peatonal 10', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(198, 'Emilio', 'López', '667788499-0', 'emiliolopez@email.com', '+56987654321', 'Camino Rural 23', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(199, 'Constanza', 'García', '777889900-1', 'constanzagarcia@email.com', '+56234567890', 'Plaza Central 45', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(200, 'Lucía', 'Fuentes', '889906011-2', 'luciafuentes@email.com', '+56923456789', 'Ruta Costera 67', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(201, 'Agustín', 'Soto', '990011522-3', 'agustinsoto@email.com', '+56267894561', 'Avenida Norte 89', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(202, 'Mía', 'Herrera', '001122333-4', 'miaherrera@email.com', '+56945678901', 'Calle Poniente 12', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(203, 'Simón', 'González', '112233444-5', 'simongonzalez@email.com', '+56912345678', 'Calle 123', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(204, 'Valentina', 'Muñoz', '22334f455-6', 'valentinamunoz@email.com', '+56998765432', 'Avenida Principal 456', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(205, 'Emilio', 'Mora', '99887766-5', 'emiliomora@email.com', '+56911223344', 'Calle 123', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(206, 'Antonella', 'Silva', '88776655-4', 'antonellasilva@email.com', '+56922334455', 'Avenida Principal 456', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(207, 'Matías', 'González', '77665544-3', 'matiasgonzalez@email.com', '+56933445566', 'Calle Secundaria 789', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(208, 'Valentina', 'Herrera', '66554433-2', 'valentinaherrera@email.com', '+56944556677', 'Pasaje Peatonal 10', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(209, 'Lucas', 'Ramírez', '55443322-1', 'lucasramirez@email.com', '+56955667788', 'Camino Rural 23', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(210, 'Joaquín', 'Castro', '44332211-0', 'joaquincastro@email.com', '+56966778899', 'Plaza Central 45', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(211, 'Isabella', 'Fuentes', '33221100-K', 'isabellafuentes@email.com', '+56977889900', 'Ruta Costera 67', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(212, 'Tomás', 'Ortega', '22110099-9', 'tomasortega@email.com', '+56988990011', 'Avenida Norte 89', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(213, 'Martina', 'López', '11009988-8', 'martinalopez@email.com', '+56999001122', 'Calle Poniente 12', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(214, 'Emilia', 'Gutiérrez', '00998877-7', 'emiliagutierrez@email.com', '+56900112233', 'Calle 123', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(215, 'Sebastián', 'Vargas', '99887766-6', 'sebastianvargas@email.com', '+56911223344', 'Avenida Principal 456', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(216, 'Antonia', 'Martínez', '88776655-5', 'antoniamartinez@email.com', '+56922334455', 'Calle Secundaria 789', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(217, 'Diego', 'López', '77665544-4', 'diegolopez@email.com', '+56933445566', 'Pasaje Peatonal 10', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(218, 'Isidora', 'Sandoval', '66554433-3', 'isidorasandoval@email.com', '+56944556677', 'Camino Rural 23', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(219, 'Agustín', 'Rodríguez', '55443322-2', 'agustinrodriguez@email.com', '+56955667788', 'Plaza Central 45', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(220, 'Mía', 'García', '44332211-1', 'miagarcia@email.com', '+56966778899', 'Ruta Costera 67', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(221, 'Simón', 'Pérez', '33221100-0', 'simonperez@email.com', '+56977889900', 'Avenida Norte 89', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(222, 'Valentina', 'Suárez', '22110099-K', 'valentinasuarez@email.com', '+56988990011', 'Calle Poniente 12', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(223, 'Lucas', 'Molina', '11009988-9', 'lucasmolina@email.com', '+56999001122', 'Calle 123', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(224, 'Emilia', 'Castro', '00998877-8', 'emiliacastro@email.com', '+56900112233', 'Avenida Principal 456', NULL, '2024-07-19 00:00:00', '2024-07-19 00:00:00', NULL, 1),
(226, 'maria', 'Briones', '123081042787', 'test@hotmail.com', '987654321', 'kjnmb', NULL, '2024-07-20 23:11:34', NULL, NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indices de la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indices de la tabla `state_tickets`
--
ALTER TABLE `state_tickets`
  ADD PRIMARY KEY (`state_id`);

--
-- Indices de la tabla `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`subcategory_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indices de la tabla `ticket_assignments`
--
ALTER TABLE `ticket_assignments`
  ADD PRIMARY KEY (`assignment_id`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `assigned_user_id` (`assigned_user_id`);

--
-- Indices de la tabla `ticket_attachments`
--
ALTER TABLE `ticket_attachments`
  ADD PRIMARY KEY (`attachment_id`),
  ADD KEY `ticket_id` (`ticket_id`);

--
-- Indices de la tabla `ticket_comments`
--
ALTER TABLE `ticket_comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `ticket_history`
--
ALTER TABLE `ticket_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `changed_by_user_id` (`changed_by_user_id`),
  ADD KEY `previous_state_id` (`previous_state_id`),
  ADD KEY `new_state_id` (`new_state_id`);

--
-- Indices de la tabla `tm_ticket`
--
ALTER TABLE `tm_ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FOREIGN KEY USER` (`user_id`),
  ADD KEY `FOREIGN KEY STATE` (`state_id`) USING BTREE,
  ADD KEY `FOREIGN KEY CATEGORIES` (`categories_id`),
  ADD KEY `FOREIGN KEY SUBCATEGORIES` (`subcategories`) USING BTREE;

--
-- Indices de la tabla `tm_user`
--
ALTER TABLE `tm_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `unique_rut` (`rut`),
  ADD KEY `FOREIGN KEY` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `state_tickets`
--
ALTER TABLE `state_tickets`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `ticket_assignments`
--
ALTER TABLE `ticket_assignments`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ticket_attachments`
--
ALTER TABLE `ticket_attachments`
  MODIFY `attachment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ticket_comments`
--
ALTER TABLE `ticket_comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ticket_history`
--
ALTER TABLE `ticket_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tm_ticket`
--
ALTER TABLE `tm_ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de la tabla `tm_user`
--
ALTER TABLE `tm_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

--
-- Filtros para la tabla `ticket_assignments`
--
ALTER TABLE `ticket_assignments`
  ADD CONSTRAINT `ticket_assignments_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `tm_ticket` (`id`),
  ADD CONSTRAINT `ticket_assignments_ibfk_2` FOREIGN KEY (`assigned_user_id`) REFERENCES `tm_user` (`user_id`);

--
-- Filtros para la tabla `ticket_attachments`
--
ALTER TABLE `ticket_attachments`
  ADD CONSTRAINT `ticket_attachments_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `tm_ticket` (`id`);

--
-- Filtros para la tabla `ticket_comments`
--
ALTER TABLE `ticket_comments`
  ADD CONSTRAINT `ticket_comments_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `tm_ticket` (`id`),
  ADD CONSTRAINT `ticket_comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tm_user` (`user_id`);

--
-- Filtros para la tabla `ticket_history`
--
ALTER TABLE `ticket_history`
  ADD CONSTRAINT `ticket_history_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `tm_ticket` (`id`),
  ADD CONSTRAINT `ticket_history_ibfk_2` FOREIGN KEY (`changed_by_user_id`) REFERENCES `tm_user` (`user_id`),
  ADD CONSTRAINT `ticket_history_ibfk_3` FOREIGN KEY (`previous_state_id`) REFERENCES `state_tickets` (`state_id`),
  ADD CONSTRAINT `ticket_history_ibfk_4` FOREIGN KEY (`new_state_id`) REFERENCES `state_tickets` (`state_id`);

--
-- Filtros para la tabla `tm_ticket`
--
ALTER TABLE `tm_ticket`
  ADD CONSTRAINT `tm_ticket_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `state_tickets` (`state_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tm_ticket_ibfk_2` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tm_ticket_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `tm_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tm_ticket_ibfk_4` FOREIGN KEY (`subcategories`) REFERENCES `subcategories` (`subcategory_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tm_user`
--
ALTER TABLE `tm_user`
  ADD CONSTRAINT `tm_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
