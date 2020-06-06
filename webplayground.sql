-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2020 a las 07:24:18
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `webplayground`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add profile', 1, 'add_profile'),
(2, 'Can change profile', 1, 'change_profile'),
(3, 'Can delete profile', 1, 'delete_profile'),
(4, 'Can view profile', 1, 'view_profile'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add message', 8, 'add_message'),
(30, 'Can change message', 8, 'change_message'),
(31, 'Can delete message', 8, 'delete_message'),
(32, 'Can view message', 8, 'view_message'),
(33, 'Can add thread', 9, 'add_thread'),
(34, 'Can change thread', 9, 'change_thread'),
(35, 'Can delete thread', 9, 'delete_thread'),
(36, 'Can view thread', 9, 'view_thread'),
(37, 'Can add página', 10, 'add_page'),
(38, 'Can change página', 10, 'change_page'),
(39, 'Can delete página', 10, 'delete_page'),
(40, 'Can view página', 10, 'view_page');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_spanish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$M2FmIORMXKRn$pRDABItpWXh7hBNvyKzH9X7F8YmMY8dT0vEYtmidjrE=', '2020-06-06 05:12:27.467502', 1, 'yesenia', '', '', 'yes@gmail.com', 1, 1, '2020-06-06 04:36:51.824695'),
(2, 'pbkdf2_sha256$120000$996jXRhPBNqE$J2vN8M4anMWqaf/kq1XCWIglhc6bN/pic33Rg+eBm0M=', NULL, 0, 'pepito', '', '', 'pepito@pepito.com', 0, 1, '2020-06-06 04:37:48.518850'),
(3, 'pbkdf2_sha256$120000$1l49QGlsemVF$l4dCWBjK+CWfpjF37IkpMk/m0T0Pu3aP7ZfaZAlzZQw=', NULL, 0, 'pepito2', '', '', 'pepito2@pepito.com', 0, 1, '2020-06-06 04:38:00.122311'),
(4, 'pbkdf2_sha256$120000$Y2nsiSPbqMQO$8I/XrjDNd4/pvoUrD4ZQSfYpYP2tUqQ/RSAWGiTDmkQ=', '2020-06-06 05:10:45.105549', 0, 'pepito3', '', '', 'pepito3@pepito.com', 0, 1, '2020-06-06 04:38:09.319115'),
(5, 'pbkdf2_sha256$120000$r9RDbryLTmIl$N6faH1U1GVGWJNNscX8Oufa5vA44uNBeUQF8XK3KFeQ=', NULL, 0, 'pepito4', '', '', 'pepito4@pepito.com', 0, 1, '2020-06-06 04:38:20.066847'),
(6, 'pbkdf2_sha256$120000$nzLKmHu0JR1F$f1bj/TyRCEqb98X5yxuceC4MLF0BPPtQi7ExnarMfCI=', NULL, 0, 'pepito5', '', '', 'pepito5@pepito.com', 0, 1, '2020-06-06 04:38:31.347884'),
(7, 'pbkdf2_sha256$120000$svUlUJEazTqn$lf6/kGVZf1B5+JHgKpLSQ0NUj4z8Y/1XcYq1G9N0SlA=', NULL, 0, 'pepito6', '', '', 'pepito6@pepito.com', 0, 1, '2020-06-06 04:38:42.550130');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_spanish_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_spanish_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'admin', 'logentry'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(8, 'messenger', 'message'),
(9, 'messenger', 'thread'),
(10, 'pages', 'page'),
(1, 'registration', 'profile'),
(7, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-06-06 04:21:18.714829'),
(2, 'auth', '0001_initial', '2020-06-06 04:21:19.964836'),
(3, 'admin', '0001_initial', '2020-06-06 04:21:20.281000'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-06-06 04:21:20.303556'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-06-06 04:21:20.324084'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-06-06 04:21:20.445026'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-06-06 04:21:20.546793'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-06-06 04:21:20.819544'),
(9, 'auth', '0004_alter_user_username_opts', '2020-06-06 04:21:20.843894'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-06-06 04:21:20.944890'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-06-06 04:21:20.952217'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-06-06 04:21:20.977206'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-06-06 04:21:21.029080'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-06-06 04:21:21.071900'),
(15, 'messenger', '0001_initial', '2020-06-06 04:21:22.095055'),
(16, 'pages', '0001_initial', '2020-06-06 04:21:22.168119'),
(17, 'registration', '0001_initial', '2020-06-06 04:21:22.340937'),
(18, 'sessions', '0001_initial', '2020-06-06 04:21:22.448116'),
(19, 'messenger', '0002_auto_20200606_0009', '2020-06-06 05:09:15.355931');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `session_data` longtext COLLATE utf8_spanish_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5g00gyzgtsrhfgwwqt9yj8ip2i9sr39f', 'MjNlMWVjOGM5OWNiYjFkOTRlNzk0N2VhMjVjYTBkNWQ5ZDkzMjBjMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZDM1Njk4YTY4ZjA3YmQxOWUzNDY4MTNiNWVlODkxYmIxN2U0ZjlkIn0=', '2020-06-20 05:12:27.475499');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messenger_message`
--

CREATE TABLE `messenger_message` (
  `id` int(11) NOT NULL,
  `content` longtext COLLATE utf8_spanish_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `messenger_message`
--

INSERT INTO `messenger_message` (`id`, `content`, `created`, `user_id`) VALUES
(1, 'Buenos días Juanito', '2020-06-06 04:39:48.540423', 1),
(2, 'Hola Hector', '2020-06-06 04:39:57.115595', 2),
(3, 'Me voy', '2020-06-06 04:40:04.693409', 1),
(4, 'Pues adíos!', '2020-06-06 04:40:10.410170', 2),
(5, 'holo', '2020-06-06 04:55:50.075517', 1),
(6, 'Hola pepito2', '2020-06-06 05:01:26.139817', 1),
(7, 'Hola pepito3', '2020-06-06 05:09:55.314769', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messenger_thread`
--

CREATE TABLE `messenger_thread` (
  `id` int(11) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `messenger_thread`
--

INSERT INTO `messenger_thread` (`id`, `updated`) VALUES
(1, '2020-06-06 05:09:15.322870'),
(2, '2020-06-06 05:09:15.322870'),
(3, '2020-06-06 05:09:55.339661');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messenger_thread_messages`
--

CREATE TABLE `messenger_thread_messages` (
  `id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `messenger_thread_messages`
--

INSERT INTO `messenger_thread_messages` (`id`, `thread_id`, `message_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 6),
(7, 3, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messenger_thread_users`
--

CREATE TABLE `messenger_thread_users` (
  `id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `messenger_thread_users`
--

INSERT INTO `messenger_thread_users` (`id`, `thread_id`, `user_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 3),
(5, 3, 1),
(6, 3, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages_page`
--

CREATE TABLE `pages_page` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `content` longtext COLLATE utf8_spanish_ci NOT NULL,
  `order` smallint(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registration_profile`
--

CREATE TABLE `registration_profile` (
  `id` int(11) NOT NULL,
  `avatar` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `bio` longtext COLLATE utf8_spanish_ci DEFAULT NULL,
  `link` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `registration_profile`
--

INSERT INTO `registration_profile` (`id`, `avatar`, `bio`, `link`, `user_id`) VALUES
(1, '', NULL, NULL, 1),
(2, '', NULL, NULL, 2),
(3, '', NULL, NULL, 3),
(4, '', NULL, NULL, 4),
(5, '', NULL, NULL, 5),
(6, '', NULL, NULL, 6),
(7, '', NULL, NULL, 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `messenger_message`
--
ALTER TABLE `messenger_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messenger_message_user_id_44204cf3_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `messenger_thread`
--
ALTER TABLE `messenger_thread`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `messenger_thread_messages`
--
ALTER TABLE `messenger_thread_messages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `messenger_thread_messages_thread_id_message_id_bb58b3ca_uniq` (`thread_id`,`message_id`),
  ADD KEY `messenger_thread_mes_message_id_e4d4b7af_fk_messenger` (`message_id`);

--
-- Indices de la tabla `messenger_thread_users`
--
ALTER TABLE `messenger_thread_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `messenger_thread_users_thread_id_user_id_d8023aff_uniq` (`thread_id`,`user_id`),
  ADD KEY `messenger_thread_users_user_id_008b18f6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `pages_page`
--
ALTER TABLE `pages_page`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registration_profile`
--
ALTER TABLE `registration_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `messenger_message`
--
ALTER TABLE `messenger_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `messenger_thread`
--
ALTER TABLE `messenger_thread`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `messenger_thread_messages`
--
ALTER TABLE `messenger_thread_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `messenger_thread_users`
--
ALTER TABLE `messenger_thread_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `pages_page`
--
ALTER TABLE `pages_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registration_profile`
--
ALTER TABLE `registration_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `messenger_message`
--
ALTER TABLE `messenger_message`
  ADD CONSTRAINT `messenger_message_user_id_44204cf3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `messenger_thread_messages`
--
ALTER TABLE `messenger_thread_messages`
  ADD CONSTRAINT `messenger_thread_mes_message_id_e4d4b7af_fk_messenger` FOREIGN KEY (`message_id`) REFERENCES `messenger_message` (`id`),
  ADD CONSTRAINT `messenger_thread_mes_thread_id_a70e3887_fk_messenger` FOREIGN KEY (`thread_id`) REFERENCES `messenger_thread` (`id`);

--
-- Filtros para la tabla `messenger_thread_users`
--
ALTER TABLE `messenger_thread_users`
  ADD CONSTRAINT `messenger_thread_users_thread_id_8c4fd4f2_fk_messenger_thread_id` FOREIGN KEY (`thread_id`) REFERENCES `messenger_thread` (`id`),
  ADD CONSTRAINT `messenger_thread_users_user_id_008b18f6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `registration_profile`
--
ALTER TABLE `registration_profile`
  ADD CONSTRAINT `registration_profile_user_id_e133ce43_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
