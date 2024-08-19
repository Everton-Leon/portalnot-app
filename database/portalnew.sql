-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/08/2024 às 13:44
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `portalnew`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_06_24_133803_create_noticias_table', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `descricao`, `url`, `created_at`, `updated_at`) VALUES
(3, 'Novo presidente eleito promete reformas econômicas', 'Após uma eleição acirrada, o novo presidente promete mudanças significativas na economia do país.', '/storage/arquivos/lSSSUrhYsUNJwCVhy5Pz74looa5Qu7PO66RY06Bb.jpg', NULL, '2024-08-05 17:29:02'),
(4, 'Descoberta científica revoluciona tratamento de doenças', 'Pesquisadores anunciaram uma descoberta que promete revolucionar o tratamento de várias doenças graves.', '/storage/arquivos/yfknifi8xcUzrtkQNYuorUew5V4Dy25Sa2YimF6l.jpg', NULL, '2024-08-05 17:32:04'),
(5, 'Empresa líder em tecnologia lança novo dispositivo inovador', 'A gigante da tecnologia revelou seu mais recente dispositivo que promete mudar a forma como interagimos com a tecnologia cotidiana.', '/storage/arquivos/heqQUI98lLtYQNtoFl3g0Oug94OBkw2VeUfzuKLo.jpg', NULL, '2024-08-05 17:34:14'),
(6, 'Equipe de futebol conquista campeonato após décadas de espera', 'Os torcedores celebram a vitória da equipe que finalmente conquistou o título depois de 30 anos de espera.', '/storage/arquivos/2HlrlwtQTHmr989xRVzD67J9zYPn2Vr19JM7zOSA.jpg', NULL, '2024-08-05 17:36:17'),
(7, 'Novo estudo revela impacto das mudanças climáticas na biodiversidade', 'Pesquisadores alertam para os efeitos preocupantes das mudanças climáticas na diversidade de espécies em todo o mundo.', '/storage/arquivos/EypzkQ8k6mmIrw97mlfJ17C4jW9BA6Fx2ZFQno2b.jpg', NULL, '2024-08-05 17:37:06'),
(8, 'Artista famoso lança exposição inovadora em galeria de renome', 'A nova coleção do artista apresenta obras que desafiam as convenções e recebem aclamação crítica em sua estreia.', '/storage/arquivos/8ZZObrIplSa3KCv3QrYEw2W3WgzKdrwU3KGpGYrH.jpg', NULL, '2024-08-05 17:37:59'),
(9, 'Descoberta arqueológica revela civilização perdida', 'Arqueólogos descobrem vestígios de uma antiga civilização que muda nossa compreensão da história humana.', '/storage/arquivos/Y6vEzjc1fhyx7Pefk3whzb6oQGt9bD12QN6r8DZh.jpg', NULL, '2024-08-05 17:38:36'),
(10, 'Novo aplicativo de saúde promete revolucionar monitoramento médico', 'Um novo aplicativo oferece aos usuários ferramentas avançadas para monitorar sua saúde de forma mais eficaz e conveniente.', '/storage/arquivos/oYwKkepV9ITKMUbN28FGq3jYZ5IjlhmAZfrbAadT.png', NULL, '2024-08-05 17:39:24'),
(11, 'Cientistas desenvolvem método inovador para produção de energia limpa', 'Pesquisadores revelam um novo método que pode transformar a maneira como obtemos energia limpa no futuro próximo.', '/storage/arquivos/6SDs2DKQqIbPT3LQwwbeXlZlmWBSyFD6Hs7vr8ZQ.jpg', NULL, '2024-08-05 17:40:14'),
(12, 'Nova legislação proposta visa melhorar a segurança nas estradas', 'Autoridades apresentam um projeto de lei que visa reduzir acidentes e aumentar a segurança viária em todo o país.', '/storage/arquivos/9y7IIordptQdbPWleHpq0a5ru7HRR5CvvLOVBoXL.jpg', NULL, '2024-08-05 17:40:51'),
(13, 'Pesquisa revela aumento na adoção de tecnologias digitais', 'Um estudo recente indica que mais empresas estão adotando tecnologias digitais para impulsionar a produtividade e a inovação.', '/storage/arquivos/ce42YOHhyIKmAgP8pwSMngNvdZo9kLisMMwahnKo.jpg', NULL, '2024-08-12 13:57:05'),
(14, 'Inovação no setor alimentício promete transformar hábitos de consumo', 'Uma nova tecnologia está prestes a mudar como as pessoas consomem alimentos, prometendo maior sustentabilidade e nutrição.', '/storage/arquivos/vHL8tGhop4TNU5aIe0i4dhNcGzLsunrpNSQm8OvB.jpg', NULL, '2024-08-12 13:58:11'),
(15, 'Descoberta de novas espécies na Amazônia intriga cientistas', 'Biólogos encontram várias novas espécies de plantas e animais na Amazônia, revelando a riqueza de biodiversidade ainda desconhecida.', '/storage/arquivos/er93NUknGPECMAcsDRKf7Ckh41mcAWa646Fl3UPh.jpg', NULL, '2024-08-12 13:59:16'),
(16, 'Startup de inteligência artificial recebe investimento recorde', 'Uma startup de IA arrecadou uma quantia recorde em investimentos, sinalizando confiança no potencial da tecnologia para transformar diversos setores.', '/storage/arquivos/oREezMHkAfXIkCJbsjDrfDxvgQAKPPl1lTSUpQVI.jpg', NULL, '2024-08-12 14:01:01'),
(17, 'Estudo aponta melhoria na qualidade de vida em áreas urbanas', 'Pesquisadores observam uma melhoria significativa na qualidade de vida em grandes cidades, atribuída a políticas públicas e novas infraestruturas.', '/storage/arquivos/xvds6DTAxy2gcIOQIY0ZheTDpM0O4QK4jWKqahhF.jpg', NULL, '2024-08-12 14:01:37'),
(18, 'Lançamento de novo filme promete quebrar recordes de bilheteria', 'O próximo lançamento cinematográfico está gerando grande expectativa entre os fãs e analistas devido ao seu potencial para quebrar recordes de bilheteria.', '/storage/arquivos/GuWH6gvAedFYslzNd0gWlS1KvnYcCr37R0mStDkE.jpg', NULL, '2024-08-12 14:02:11'),
(19, 'Avanços na pesquisa espacial abrem novas possibilidades científicas', 'Missões recentes revelam descobertas que podem transformar nosso entendimento do universo e abrir novas fronteiras para a exploração espacial.', '/storage/arquivos/nVXu9JW3lWQ3iZk6PKetZnSMRTYuJ9k3szlZ63pw.jpg', NULL, '2024-08-12 14:02:43'),
(20, 'Novas políticas educacionais buscam melhorar o ensino público', 'Governo anuncia iniciativas para reformar o sistema educacional, visando melhorar a qualidade da educação pública em todo o país.', '/storage/arquivos/yxVAA0eIpWzVp1bGVojhxd6Wp34PTibsM68GeOqO.jpg', NULL, '2024-08-12 14:03:29'),
(21, 'Especialistas alertam sobre os impactos do uso excessivo de redes sociais', 'Estudos indicam que o uso prolongado de redes sociais pode ter efeitos negativos na saúde mental e no bem-estar dos usuários.', '/storage/arquivos/CtwRh6R8sQ4J4ce6FDqp4rFuBK5LVtcCpNYKSXCx.jpg', NULL, '2024-08-12 14:04:00'),
(22, 'Tecnologia blockchain ganha popularidade em setores financeiros', 'Empresas estão cada vez mais adotando tecnologias baseadas em blockchain para melhorar a segurança e a eficiência em transações financeiras.', '/storage/arquivos/NDHczRTyd40eJQBn98iVgjchKJlNjovlvtCEvlLj.png', NULL, '2024-08-12 14:04:32'),
(23, 'Escultura monumental é inaugurada em praça histórica', 'Uma nova escultura monumental se torna o destaque de uma praça histórica, atraindo visitantes de todo o mundo para admirar sua grandiosidade.', '/storage/arquivos/MB4xJsoqehIH4YS3w2hjmxesbFVEqGq6idmwiIwL.jpg', NULL, '2024-08-12 13:55:08'),
(24, 'Aumento na demanda por energia solar impulsiona mercado renovável', 'A crescente demanda por energia solar está impulsionando um boom no mercado de energias renováveis, com investimentos significativos em novas infraestruturas.', '/storage/arquivos/PTi2yRx834D0e53IjehLLe7b3Ia9sRlyW1LG9rIv.jpg', NULL, '2024-08-12 14:05:13'),
(25, 'Novo método de cultivo promete revolucionar agricultura sustentável', 'Agricultores estão adotando um novo método de cultivo que promete aumentar a produção de alimentos de forma sustentável e ecologicamente correta.', '/storage/arquivos/zirb69EOemsmqyR6yeDOcotmyGzWwvKVcZFf0qJ4.jpg', NULL, '2024-08-12 14:07:19'),
(26, 'Descoberta de pinturas rupestres revela arte pré-histórica única', 'Arqueólogos descobrem pinturas rupestres que oferecem novos insights sobre a arte e a vida de nossos antepassados pré-históricos.', '/storage/arquivos/1X9lrm0d2OR6NquSwckT02he21ZrybACMVMRSpzw.jpg', NULL, '2024-08-12 14:12:09'),
(27, 'Pesquisadores desenvolvem vacina promissora contra doença emergente', 'Cientistas anunciam avanços promissores no desenvolvimento de uma vacina eficaz contra uma doença recentemente emergente.', '/storage/arquivos/LZICbfrUulNBw9ldAwQKZNOg682JME4o3j8kBojD.jpg', NULL, '2024-08-12 14:12:57'),
(28, 'Nova tecnologia de transporte urbano promete reduzir congestionamentos', 'Um sistema inovador de transporte urbano está sendo implementado para reduzir os congestionamentos e melhorar a mobilidade nas grandes cidades.', '/storage/arquivos/AABbQk1epbRS1IzRZmirLRJEqWDL1dcV2QTCy1C9.jpg', NULL, '2024-08-12 14:13:38'),
(29, 'Pesquisa revela tendências de consumo entre jovens millennials', 'Um estudo revela como os jovens millennials estão moldando o mercado de consumo com suas preferências e comportamentos únicos.', '/storage/arquivos/3Iebp5anGFsMg8VXroHcsvpKNmfGAOO1o7WQCGBc.png', NULL, '2024-08-12 14:15:35'),
(30, 'Novo método de reciclagem promete reduzir o impacto ambiental', 'Um método inovador de reciclagem está sendo adotado para reduzir significativamente o impacto ambiental de resíduos plásticos e outros materiais.', '/storage/arquivos/7G0TwnH2sY0kTCUxPsPnv0ppHytvX2vgpHRxmQ7O.jpg', NULL, '2024-08-12 14:16:19'),
(31, 'Pesquisadores descobrem nova espécie de mamífero na África', 'Biologistas encontram uma nova espécie de mamífero que desafia as expectativas e amplia nosso conhecimento sobre a diversidade da vida selvagem na África.', '/storage/arquivos/2MeGfpSVpyZz2sLWxFQKGPJBafFeRhEygQ7fWYrw.jpg', NULL, '2024-08-12 14:17:20'),
(32, 'Novo tratamento médico oferece esperança para pacientes terminais', 'Um avanço médico recente oferece novas esperanças para pacientes terminais, melhorando a qualidade de vida e prolongando a sobrevida em casos críticos.', '/storage/arquivos/jgYMCFCOrc3BCz2TeZmuQj4LqtrrXNxFRRgq1zKj.jpg', NULL, '2024-08-12 14:18:23'),
(33, 'Crescimento econômico impulsiona mercado imobiliário em metrópoles', 'O crescimento econômico está impulsionando um boom no mercado imobiliário das principais metrópoles, com novos projetos e investimentos em infraestrutura urbana.', '/storage/arquivos/4Cm1ch5em19LQsJZYEs9FS95vOVAFwflb28wOIvA.jpg', NULL, '2024-08-12 14:19:00'),
(34, 'Avanços na inteligência artificial transformam o setor de serviços', 'Empresas estão adotando soluções baseadas em IA para melhorar a eficiência e a personalização dos serviços oferecidos aos consumidores.', '/storage/arquivos/G1NfUpKHXY4rQdjLdLn9aSluNmSNdDyxhZffDeJH.png', NULL, '2024-08-12 14:20:24'),
(35, 'Inovações em dispositivos móveis redefinem o conceito de conectividade', 'Novas tecnologias em dispositivos móveis estão permitindo uma conectividade sem precedentes, transformando como as pessoas interagem e se comunicam globalmente.', '/storage/arquivos/vKH8kiJDWpQn2vfdVOtJ1WwtathFp9KWyBNWdoGK.jpg', NULL, '2024-08-12 14:21:23');

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('EHVEUoHw4LYgZyD0qryNhX2oXBQbP0nZCoxf9qku', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQXdnZ2lHWGhLR1J5YTY2TExaY3FuSlcwMlBzVHdrc1ZrVWxzTWpIOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1723462428),
('YNxhigYoxCKO5y9JJ3ygpIZOFQ8jJZaGPWZ0XlTO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieUhEamZSVGxlRWdod2lVcTE2RTZHQ2prcFptWVJJY3FReXRXbFhNRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1724067760);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Everton Leon', 'everton@gmail.com', NULL, '$2y$12$Wb52tVtUZQUV1QLEr6wyvOl8qfFjbTtKqYG5wOHHfyhA/uBoR9Vei', NULL, '2024-07-01 17:38:53', '2024-07-01 17:38:53');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Índices de tabela `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices de tabela `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Índices de tabela `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices de tabela `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
