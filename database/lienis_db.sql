-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-08-2019 a las 22:46:40
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lienis_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Collares', NULL, NULL),
(2, 'Minibags', NULL, NULL),
(3, 'Para ellos', NULL, NULL),
(4, 'Pulseras', NULL, NULL),
(5, 'Zarcillos', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_07_000801_creating_tables', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('anys.br@gmail.com', '$2y$10$ZluD2f4O9uqGID6I2nM8fuvW/PwhuIQnnIY0.2eYCoxBw0Ky8UG2u', '2019-08-29 08:22:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` decimal(4,2) NOT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `rating`, `description`, `price`, `stock`, `category_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Collar Pétalos', '4.00', 'Este hermoso collar tiene un dije grande en forma de flor, con muchas formas de flor internamente. Si eres de las amantes de las flores o la naturaleza, este es el collar ideal para ti.', '140.00', 12, 1, 'img_5d6739f9c37b0.jpeg', '2019-08-29 01:37:05', '2019-08-29 05:35:38'),
(2, 'Collar Pequeña Muelita', '7.50', 'Diseñado para todas aquellas odontólogas coquetas. ¿Tienes otra profesión? ¡Escríbeme por las redes sociales y te diseño un dije que se adapte a ti!', '180.00', 13, 1, 'img_5d673a4b187f2.jpeg', '2019-08-29 01:38:49', '2019-08-29 05:36:59'),
(3, 'Collar Verde que te quiero verde', '6.00', 'Si eres amante de los accesorios delicados, esta es una excelente opción para ti. Te ayuda a estar coqueta y a la moda.', '110.00', 16, 1, 'img_5d673a72b3d5d.jpeg', '2019-08-29 01:41:08', '2019-08-29 05:37:38'),
(4, 'Para ellos - Lealtad', '6.00', 'El ancla se asocia directamente con el mundo marítimo y su función de dar estabilidad al barco. Esta sencilla pulsera representa un vínculo fuerte, leal y profundo contigo mismo y con las personas que te rodean.', '180.00', 14, 3, 'img_5d673affe4319.jpeg', '2019-08-29 01:44:34', '2019-08-29 05:39:59'),
(5, 'Para Ellos - Viajeros', '4.00', 'Si te consideras un hombre que le gusta conocer nuevas culturas, esta pulsera te representa.', '150.00', 15, 3, 'img_5d673af522af0.jpeg', '2019-08-29 01:51:31', '2019-08-29 05:39:49'),
(6, 'Para Ellos - El origen', '3.50', 'Si eres de esos caballeros que le gusta tener un toque diferente, sutil y chic, esta pulsera es perfecta para ti porque reúne las tres características. ¡Atrévete a usarla!', '99.99', 18, 3, 'img_5d673ae6f2fb7.jpeg', '2019-08-29 01:55:40', '2019-08-29 05:39:35'),
(7, 'Minibags - Puntitos', '8.00', 'Crear diseños versátiles y útiles es nuestra especialidad. Este minibag es ejemplo de ello. Puedes usarlo para guardar lo que desees y así encontrarlo más rápidamente.', '200.00', 15, 2, 'img_5d673b5f8fd60.png', '2019-08-29 01:59:28', '2019-08-29 05:41:35'),
(8, 'Minibags - Animal Print', '5.00', '¿Tienes una fiesta o una cita especial y quieres sentirte glamorosa? Este diseño es el ideal para ti. Es un bolso donde puedes guardar todo lo imprescindible para tu salida.', '130.59', 14, 2, 'img_5d673b7d867d2.jpeg', '2019-08-29 02:02:34', '2019-08-29 05:42:05'),
(9, 'Minibags - Bolsito', '4.00', 'Este pequeño bolso es versátil y puedes usarlo para lo que desees. Diseñado en tonos pasteles con un toque llamativo en su cierre.', '95.00', 13, 2, 'img_5d673b8c4bdb6.jpeg', '2019-08-29 02:05:06', '2019-08-29 05:42:20'),
(10, 'Zarcillos - Largos', '4.00', 'Estos zarcillos fueron diseñados para las chicas que les encantan los zarcillos largos. ¡Hay en múltiples colores! Así puedes tener uno para cada ocasión.', '120.00', 14, 5, 'img_5d673c9072a56.jpeg', '2019-08-29 02:09:08', '2019-08-29 05:46:40'),
(11, 'Zarcillos - Amor dulce amor', '7.00', 'Estos zarcillos en forma de corazón fueron creados a mano con alambre bañado en oro. Son la combinación perfecta para cualquier ocasión.', '125.00', 14, 5, 'img_5d673be14402a.jpeg', '2019-08-29 02:13:31', '2019-08-29 05:43:45'),
(12, 'Zarcillos - Pureza', '8.00', 'Estos zarcillos diseñados con perlas y unas hojas nacaradas, representan la pureza que caracteriza al color blanco. ¿Lo mejor? Puedes combinarlos con todo.', '109.00', 10, 5, 'img_5d673bee39eff.jpeg', '2019-08-29 02:15:20', '2019-08-29 05:43:58'),
(13, 'Pulsera - Linda mascota', '8.00', 'Esta pulsera fue realizada en homenaje a mi amada perrita Molly. Adicionalmente, para consentirme aún más, utilicé colores brillantes para representar el amor que les tengo. ¿Tienes una mascota? ¡Contáctame y te realizo el accesorio que desees en su honor!', '210.00', 13, 4, 'img_5d673c33d2c3e.jpeg', '2019-08-29 02:17:22', '2019-08-29 05:45:07'),
(14, 'Pulsera -  Amor sutil', '5.00', '¿Deseas dar un detalle femenino y sutil a tu pareja? Esta linda pulsera es una perfecta opción para ti, te permitirá expresarle lo que sientes ayudándola a verse coqueta.', '148.00', 16, 4, 'img_5d673c4a960c3.jpeg', '2019-08-29 02:19:20', '2019-08-29 05:45:30'),
(15, 'Pulsera - Arcoiris', '5.00', 'Esta hermosa pulsera multicolor fue diseñada para alegrar a quien la lleve puesta. Además de ser versátil, ya que te permite realizar múltiples combinaciones.', '115.00', 18, 4, 'img_5d673c66a3de0.jpeg', '2019-08-29 02:23:08', '2019-08-29 05:45:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_shopping_cart`
--

CREATE TABLE `product_shopping_cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shopping_cart_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_purchase` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shopping_carts`
--

CREATE TABLE `shopping_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` smallint(6) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `product_shopping_cart`
--
ALTER TABLE `product_shopping_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_shopping_cart_shopping_cart_id_foreign` (`shopping_cart_id`),
  ADD KEY `product_shopping_cart_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shopping_carts_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `product_shopping_cart`
--
ALTER TABLE `product_shopping_cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `shopping_carts`
--
ALTER TABLE `shopping_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Filtros para la tabla `product_shopping_cart`
--
ALTER TABLE `product_shopping_cart`
  ADD CONSTRAINT `product_shopping_cart_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_shopping_cart_shopping_cart_id_foreign` FOREIGN KEY (`shopping_cart_id`) REFERENCES `shopping_carts` (`id`);

--
-- Filtros para la tabla `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD CONSTRAINT `shopping_carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
