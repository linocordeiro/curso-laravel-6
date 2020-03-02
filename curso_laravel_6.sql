-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 01/03/2020 às 21:58
-- Versão do servidor: 5.7.29-0ubuntu0.18.04.1
-- Versão do PHP: 7.2.24-0ubuntu0.18.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `curso_laravel_6`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_03_01_194704_create_products_table', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(10,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'uti-am', 'Et excepturi aut vel aut.', 12.23, NULL, '2020-03-01 22:57:39', '2020-03-02 00:52:25'),
(2, 'est', 'Laudantium nemo eveniet est voluptates.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(3, 'sequi', 'Soluta cum amet exercitationem eum perspiciatis.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(4, 'dolor', 'Sunt eaque in aliquam ex eius eveniet cum.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(5, 'corporis', 'Saepe fugiat delectus inventore nobis.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(6, 'necessitatibus', 'Et nihil voluptatem itaque atque at officiis.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(7, 'consequatur', 'Non ex in rem debitis consequatur officia.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(8, 'et', 'Rerum culpa quaerat ut corporis exercitationem.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(9, 'culpa', 'Qui id cum ut magnam exercitationem.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(10, 'aspernatur', 'Pariatur officiis repudiandae autem praesentium ea velit.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(11, 'laborum', 'Natus tempora praesentium praesentium ut qui quae asperiores.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(12, 'molestias', 'Sed debitis consequatur qui voluptas velit temporibus sed.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(13, 'voluptate', 'Adipisci fugiat aliquam magnam sint aut dolore fugiat.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(14, 'esse', 'Neque aliquid reiciendis exercitationem aut.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(15, 'fuga', 'Consequatur nostrum aut quis eos quia.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(16, 'aut', 'Reprehenderit sed nisi et ea.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(17, 'quia', 'Sunt consectetur voluptatem voluptate.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(18, 'provident', 'Dolore minima officia unde sit.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(19, 'similique', 'Fugiat dolor omnis enim.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(20, 'explicabo', 'Aperiam quia ratione incidunt repellendus sunt molestiae.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(21, 'quos', 'Voluptatem et doloremque ab voluptatem nam.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(22, 'dolore', 'Tempore est et aut labore nesciunt nisi.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(23, 'ipsam', 'Unde debitis quia soluta recusandae.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(24, 'officiis', 'Nostrum et non officiis sit illo accusantium est aut.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(25, 'quis', 'Enim voluptatem provident aliquam.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(26, 'distinctio', 'Aperiam perspiciatis modi recusandae illum voluptatum incidunt voluptatem.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(27, 'corrupti', 'Non non omnis vero et assumenda.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(28, 'ad', 'Eos ut libero consequatur qui.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(29, 'voluptas', 'Minima culpa aliquam ex nulla accusantium fugiat beatae.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(30, 'at', 'Facilis dicta nihil voluptas incidunt consequuntur quia quo.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(31, 'qui', 'Rem architecto eos eos voluptatem odio tempore quo.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(32, 'praesentium', 'Ut quibusdam vel totam quia quia.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(33, 'rerum', 'Sit et quia et tenetur modi.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(34, 'eveniet', 'Et consequatur dolorem omnis totam magnam.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(35, 'cupiditate', 'Odio odio rerum consectetur facilis quia.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(36, 'omnis', 'Qui vel in quae quidem voluptatum.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(37, 'tempore', 'Dicta est quasi et perferendis sapiente distinctio sapiente occaecati.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(38, 'nobis', 'Magni nihil dolor praesentium nihil quas sed.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(39, 'nam', 'Aut maxime explicabo sed error.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(40, 'illo', 'Nulla aut ut et eos omnis voluptas voluptatem excepturi.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(41, 'excepturi', 'Fugiat iure nihil ut est quas esse vel ea.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(42, 'alias', 'Reiciendis quibusdam corrupti aut et.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(43, 'quidem', 'Est esse provident repellat non rerum.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(44, 'deleniti', 'Ut non omnis qui et ad qui.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(45, 'consectetur', 'Nihil tempora dolorum temporibus cupiditate reiciendis labore repellat.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(46, 'sed', 'Beatae tempora vero voluptatem.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(47, 'adipisci', 'Impedit molestiae vel tempora ex.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(48, 'numquam', 'Rerum illo dolores itaque aut ipsa sit non.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(49, 'expedita', 'Amet reprehenderit ducimus natus est reprehenderit.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(50, 'molestiae', 'Consequatur quasi quia quis in reprehenderit.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(51, 'nihil', 'Consectetur nobis beatae voluptates dolore facilis porro.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(52, 'animi', 'Eius labore odit corrupti accusantium error.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(53, 'sit', 'Quibusdam non dolorem voluptate id qui fugiat laboriosam.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(54, 'libero', 'Inventore maiores aut dolore quam voluptas quis qui aut.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(55, 'aliquid', 'Qui possimus et nesciunt.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(56, 'eos', 'Nesciunt modi adipisci consequatur tenetur asperiores deleniti.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(57, 'ea', 'Quo voluptatem aut quisquam assumenda non a voluptas est.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(58, 'repudiandae', 'Quisquam perferendis ut aut perspiciatis debitis.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(59, 'doloremque', 'Eius deleniti voluptas nisi incidunt cumque veritatis et.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(60, 'vel', 'At consectetur sed qui sint commodi voluptatem.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(61, 'minima', 'Vel harum pariatur ut reprehenderit ullam debitis dolores.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(62, 'ipsa', 'In ut exercitationem aut illo.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(63, 'eligendi', 'Exercitationem aliquid omnis nostrum perspiciatis corporis reprehenderit occaecati praesentium.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(64, 'officia', 'Sunt rerum adipisci blanditiis rerum cupiditate harum.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(65, 'autem', 'Delectus ratione enim explicabo qui distinctio ipsum.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(66, 'non', 'Enim amet rerum et perspiciatis.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(67, 'dicta', 'Sunt perspiciatis molestias modi.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(68, 'quisquam', 'Error omnis aperiam omnis nihil aut.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(69, 'atque', 'Explicabo voluptas reiciendis aut ut id modi numquam.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(70, 'magnam', 'Et non similique et sint qui ipsa iure voluptatem.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(71, 'tenetur', 'Sed doloremque ipsa odit atque.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(72, 'iure', 'Qui facilis ut unde mollitia est.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(73, 'ex', 'Molestiae eum eos repellat culpa et.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(74, 'quo', 'Qui quisquam ut distinctio corrupti delectus qui fugiat asperiores.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(75, 'perspiciatis', 'Ducimus sed amet omnis dicta accusantium et quasi.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(76, 'voluptatem', 'Temporibus necessitatibus asperiores eligendi tempore iste qui illo vel.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(77, 'harum', 'Sit distinctio saepe blanditiis rerum.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(78, 'quod', 'In labore aut animi dolor dolorem.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(79, 'recusandae', 'Temporibus ut voluptates nesciunt mollitia.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(80, 'id', 'Voluptas voluptatum reprehenderit consequatur nisi non voluptatem ex.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(81, 'impedit', 'Eum cum similique velit nesciunt ut rem culpa.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(82, 'maxime', 'Dolor omnis aliquid quis eveniet quia optio aut quisquam.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(83, 'suscipit', 'Fugit qui quia et porro et.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(84, 'iste', 'Excepturi accusamus in nobis.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(85, 'laboriosam', 'Quia velit asperiores pariatur voluptas voluptatum illum.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(86, 'architecto', 'Pariatur hic necessitatibus reiciendis.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(87, 'a', 'Tenetur laudantium voluptas dolorem nobis.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(88, 'enim', 'Excepturi ea facere dignissimos animi dolorem aut repudiandae.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(89, 'nostrum', 'Molestiae nobis iure aliquid.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(90, 'deserunt', 'Debitis expedita eius explicabo non eius mollitia.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(91, 'totam', 'Consequatur voluptate illo culpa dolores nobis sunt corporis.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(92, 'dolorem', 'Commodi asperiores nobis aut.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(93, 'facilis', 'Est saepe sint eos.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(94, 'voluptatum', 'Et accusantium ea est velit sapiente assumenda.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(95, 'quae', 'Modi aut et quis deleniti.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(96, 'aperiam', 'Consequatur vel sed atque autem.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(97, 'occaecati', 'Aut ea cupiditate nesciunt quidem.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(98, 'blanditiis', 'Quae laborum molestias aut doloremque rerum quo.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(99, 'fugiat', 'Necessitatibus aliquam quos voluptas ipsum consectetur culpa ratione.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(100, 'error', 'Ex soluta dolores facere omnis autem laborum ratione.', 12.20, NULL, '2020-03-01 22:57:39', '2020-03-01 22:57:39'),
(102, 'Televisao', 'TV mega power', 100000.00, NULL, '2020-03-02 00:40:53', '2020-03-02 00:40:53');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Juscelino Cordeiro', 'jfilhodev@gmail.com', NULL, '$2y$10$dk41q1eQLc5KmjJ/t4j/h.O.m9d4/9ym2acDra/xBJqz2vVZ7YeeS', NULL, '2020-03-01 22:33:11', '2020-03-01 22:33:11'),
(4, 'Ms. Tianna Schoen', 'udaugherty@example.com', '2020-03-01 22:40:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vnP1FzAhtB', '2020-03-01 22:40:51', '2020-03-01 22:40:51'),
(5, 'Clara Wehner', 'zackery.brakus@example.org', '2020-03-01 22:40:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7khhu7DLr9', '2020-03-01 22:40:51', '2020-03-01 22:40:51'),
(6, 'Wilmer Herzog III', 'schultz.emerson@example.net', '2020-03-01 22:40:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dgP4gpDe8J', '2020-03-01 22:40:51', '2020-03-01 22:40:51'),
(7, 'Henriette Jacobs', 'reynolds.lyla@example.com', '2020-03-01 22:40:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ORM9RXHyvx', '2020-03-01 22:40:51', '2020-03-01 22:40:51'),
(8, 'Isaac Borer PhD', 'fdeckow@example.com', '2020-03-01 22:40:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L8Os23pQ34', '2020-03-01 22:40:51', '2020-03-01 22:40:51'),
(9, 'Cordie Koch', 'loy73@example.com', '2020-03-01 22:40:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NKj9Mu7IAk', '2020-03-01 22:40:51', '2020-03-01 22:40:51'),
(10, 'Novella Koch', 'cielo80@example.org', '2020-03-01 22:40:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mt8gMxYe8X', '2020-03-01 22:40:51', '2020-03-01 22:40:51'),
(11, 'Kyla Harvey', 'major.conroy@example.org', '2020-03-01 22:40:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ot2fpf2LVU', '2020-03-01 22:40:51', '2020-03-01 22:40:51'),
(12, 'Mr. Kris Wisozk DVM', 'betsy90@example.org', '2020-03-01 22:40:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'egxk9ehF2E', '2020-03-01 22:40:51', '2020-03-01 22:40:51'),
(13, 'Cathy Botsford', 'miles.effertz@example.org', '2020-03-01 22:40:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1D5U6YDNXR', '2020-03-01 22:40:51', '2020-03-01 22:40:51');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices de tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
