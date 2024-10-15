-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 15, 2024 at 08:50 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asm1-php3`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Publication` timestamp NULL DEFAULT NULL,
  `Price` double NOT NULL,
  `Quantity` int NOT NULL,
  `Category_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `thumbnail`, `author`, `publisher`, `Publication`, `Price`, `Quantity`, `Category_id`, `created_at`, `updated_at`) VALUES
(1, 'Tempora aut quia qui.', 'https://via.placeholder.com/640x480.png/0099aa?text=tenetur', 'Et culpa quo hic odio.', 'Soluta maxime incidunt et.', '2023-07-15 17:00:00', 1, 73602808, 3, NULL, NULL),
(2, 'Autem aut illum ducimus qui.', 'https://via.placeholder.com/640x480.png/00dd44?text=sed', 'Ipsum totam aspernatur et.', 'Eum nihil qui consequatur.', '2022-08-09 17:00:00', 292355, 9410, 4, NULL, NULL),
(3, 'Aspernatur aut et in.', 'https://via.placeholder.com/640x480.png/008866?text=cum', 'Ea inventore et in.', 'Eos qui quis doloribus cum.', '2015-09-10 17:00:00', 29261, 150508, 4, NULL, NULL),
(4, 'Minima et sit labore optio.', 'https://via.placeholder.com/640x480.png/0088bb?text=aut', 'Ullam soluta illo veniam.', 'Eum rem rem expedita labore.', '1977-06-25 17:00:00', 2981, 40654, 1, NULL, NULL),
(5, 'Provident quas sed odit.', 'https://via.placeholder.com/640x480.png/00aaee?text=sit', 'Rerum est dolorum tempore.', 'Assumenda nam qui quaerat ad.', '2003-06-27 17:00:00', 156910, 1380547, 3, NULL, NULL),
(6, 'Magnam quia expedita sequi.', 'https://via.placeholder.com/640x480.png/001144?text=natus', 'Quam magnam totam ut quia.', 'Sequi sit corrupti corporis.', '1990-08-17 17:00:00', 12847, 212543, 4, NULL, NULL),
(7, 'Quia maiores id vero nisi.', 'https://via.placeholder.com/640x480.png/0000ee?text=ut', 'Porro ipsa et est.', 'Delectus eos dolore labore.', '2018-09-10 17:00:00', 1468, 4634, 1, NULL, NULL),
(9, 'Magni omnis et sed.', 'https://via.placeholder.com/640x480.png/005566?text=architecto', 'Rerum odit sint ut rerum.', 'In ex dolor nihil animi quas.', '2005-07-21 17:00:00', 60395800, 325581376, 3, NULL, NULL),
(10, 'Labore a iure minus mollitia.', 'https://via.placeholder.com/640x480.png/0055aa?text=facere', 'Dolores rem qui omnis ea et.', 'Vel non at laboriosam eos.', '1985-04-25 17:00:00', 21965939, 78995, 1, NULL, NULL),
(11, 'Ipsum nemo quis ad.', 'https://via.placeholder.com/640x480.png/004400?text=qui', 'Ut impedit quasi qui harum.', 'Mollitia voluptatem ea fugit.', '2010-10-05 17:00:00', 617, 9, 2, NULL, NULL),
(12, 'Perspiciatis autem odit quis.', 'https://via.placeholder.com/640x480.png/008800?text=laudantium', 'Assumenda est nobis pariatur.', 'Vitae soluta et dicta in.', '1975-11-17 17:00:00', 428851, 82, 2, NULL, NULL),
(13, 'Accusantium et voluptate est.', 'https://via.placeholder.com/640x480.png/001166?text=soluta', 'Expedita aut voluptatem aut.', 'Esse eaque aliquid fugit ut.', '1978-06-14 17:00:00', 9017, 230131968, 4, NULL, NULL),
(14, 'In dolor velit ipsam dolorem.', 'https://via.placeholder.com/640x480.png/0066ee?text=laudantium', 'Sit amet natus ut aliquid.', 'Aliquid labore est ut ad.', '2018-03-09 17:00:00', 9384, 1872, 5, NULL, NULL),
(15, 'Fuga qui sunt est.', 'https://via.placeholder.com/640x480.png/00ee00?text=et', 'Nam et sapiente facilis qui.', 'Minima autem est et autem.', '2010-06-14 17:00:00', 70098, 474054912, 5, NULL, NULL),
(16, 'Quo minima ea et optio.', 'https://via.placeholder.com/640x480.png/001188?text=est', 'Qui quasi ea magni voluptas.', 'Rerum quam praesentium at at.', '1986-09-04 17:00:00', 650, 115499848, 5, NULL, NULL),
(17, 'Maiores et ut aut eligendi.', 'https://via.placeholder.com/640x480.png/004488?text=voluptas', 'Voluptas eos eos aut.', 'Eius ea accusamus sequi.', '2008-08-11 17:00:00', 8308, 8535172, 1, NULL, NULL),
(18, 'Sed et aliquam enim tempora.', 'https://via.placeholder.com/640x480.png/007733?text=id', 'Quaerat et sed sed.', 'Animi error omnis quas.', '2008-12-11 17:00:00', 689368, 5216487, 3, NULL, NULL),
(19, 'Corrupti vero qui modi vero.', 'https://via.placeholder.com/640x480.png/002288?text=voluptas', 'Id et quas rerum at.', 'Omnis est repellat eum.', '1997-05-20 17:00:00', 452, 9, 1, NULL, NULL),
(20, 'Et nemo qui nemo blanditiis.', 'https://via.placeholder.com/640x480.png/00dd00?text=labore', 'Est nihil et qui labore.', 'Minima magni delectus sed.', '2011-08-30 17:00:00', 8617827, 43964, 2, NULL, NULL),
(21, 'Ut non blanditiis libero.', 'https://via.placeholder.com/640x480.png/001155?text=ut', 'Ad aut aut fugit sit.', 'Possimus aut qui voluptatem.', '1996-07-28 17:00:00', 349, 54010136, 2, NULL, NULL),
(22, 'Quia quo quia molestiae.', 'https://via.placeholder.com/640x480.png/00dd44?text=explicabo', 'Ut similique temporibus quod.', 'Eos nihil dolores quo optio.', '1979-09-23 17:00:00', 6710, 9, 2, NULL, NULL),
(24, 'Ut consequatur officia atque.', 'https://via.placeholder.com/640x480.png/0011cc?text=voluptatem', 'Sint quia vitae dolores ea.', 'Sit ut repellat et ut dolore.', '1990-06-30 17:00:00', 461, 86314, 3, NULL, NULL),
(25, 'Accusamus esse quas quaerat.', 'https://via.placeholder.com/640x480.png/002233?text=eos', 'Quaerat numquam expedita rem.', 'Vitae quia et ducimus.', '1988-04-08 17:00:00', 2612393, 71030, 4, NULL, NULL),
(26, 'Eius eos et qui vel dolorem.', 'https://via.placeholder.com/640x480.png/007788?text=quisquam', 'Omnis iure in velit omnis.', 'Autem hic quia vitae optio.', '1977-06-02 17:00:00', 798, 60, 1, NULL, NULL),
(27, 'Aut corporis aut quam est id.', 'https://via.placeholder.com/640x480.png/00ee11?text=assumenda', 'Et adipisci qui ut.', 'Velit repellat iusto aut.', '1980-02-11 17:00:00', 56393, 42, 1, NULL, NULL),
(28, 'Qui in eligendi quia modi.', 'https://via.placeholder.com/640x480.png/0099ff?text=debitis', 'Neque quo qui unde ut.', 'Amet reiciendis atque est.', '1980-09-15 17:00:00', 623090, 9541636, 5, NULL, NULL),
(29, 'Modi suscipit harum ut.', 'https://via.placeholder.com/640x480.png/002233?text=adipisci', 'Ut sit et et et ad.', 'Rem sunt rerum labore.', '1970-05-16 17:00:00', 80553, 4, 3, NULL, NULL),
(30, 'Nam dolor nulla aut natus.', 'https://via.placeholder.com/640x480.png/001100?text=beatae', 'Quia in consequatur ad non.', 'Fugit earum placeat sunt ab.', '1975-04-14 17:00:00', 83, 537833, 4, NULL, NULL),
(31, 'Et facere vitae odit dolore.', 'https://via.placeholder.com/640x480.png/008888?text=neque', 'Id ab unde et quaerat quod.', 'Eos tenetur tempora autem.', '1976-09-26 17:00:00', 46262, 952, 4, NULL, NULL),
(32, 'Doloribus quas nemo quo.', 'https://via.placeholder.com/640x480.png/0022bb?text=quia', 'Ea nam iusto recusandae aut.', 'Et et nam necessitatibus.', '1981-06-27 17:00:00', 8, 77, 1, NULL, NULL),
(33, 'Placeat sit vero rerum.', 'https://via.placeholder.com/640x480.png/0022bb?text=nemo', 'Facilis ut quis quo aut nisi.', 'Rerum voluptatem maxime id.', '1993-11-24 17:00:00', 8, 2809, 5, NULL, NULL),
(34, 'Eos rerum sit molestiae odit.', 'https://via.placeholder.com/640x480.png/00cc88?text=recusandae', 'Asperiores at quos laborum.', 'Sit cum et vel cum aut.', '1973-02-13 17:00:00', 534850595, 632163, 3, NULL, NULL),
(35, 'Sunt omnis commodi in eos.', 'https://via.placeholder.com/640x480.png/008855?text=provident', 'Ad vel et aperiam.', 'Nihil error et mollitia.', '2002-12-02 17:00:00', 179992847, 9263, 3, NULL, NULL),
(36, 'Culpa aut aut aperiam.', 'https://via.placeholder.com/640x480.png/006622?text=vitae', 'Aut provident dolorem beatae.', 'Hic vel neque nobis debitis.', '2005-12-11 17:00:00', 6634, 145361280, 5, NULL, NULL),
(37, 'Ex ab possimus atque.', 'https://via.placeholder.com/640x480.png/00aa22?text=voluptate', 'Repudiandae tempora est iure.', 'Esse sed saepe quam.', '2013-01-15 17:00:00', 96781289, 40, 2, NULL, NULL),
(38, 'Fuga facere in et in.', 'https://via.placeholder.com/640x480.png/00cc22?text=omnis', 'Quia cum cum quis omnis.', 'Quod facilis in earum nihil.', '2003-05-03 17:00:00', 3242244, 57, 3, NULL, NULL),
(39, 'Quia qui sunt quis voluptas.', 'https://via.placeholder.com/640x480.png/00ccaa?text=aspernatur', 'Voluptas quisquam vel nam.', 'Ab qui sed qui quia.', '1992-06-26 17:00:00', 260449, 623237, 1, NULL, NULL),
(40, 'Laboriosam vitae quo unde.', 'https://via.placeholder.com/640x480.png/0033bb?text=ab', 'Id quasi facere voluptatem a.', 'Quam et non quia et quasi.', '2014-02-12 17:00:00', 4661830, 63835, 5, NULL, NULL),
(41, 'Qui quae minima autem quia.', 'https://via.placeholder.com/640x480.png/009900?text=non', 'Nisi et vitae et aliquid.', 'Voluptas velit in porro.', '2017-04-13 17:00:00', 673, 82689, 1, NULL, NULL),
(43, 'Et placeat saepe totam.', 'https://via.placeholder.com/640x480.png/0055bb?text=ullam', 'Quod et aut temporibus.', 'Omnis qui ab minus non.', '1989-05-16 17:00:00', 72, 691, 5, NULL, NULL),
(44, 'Minus totam accusamus quia.', 'https://via.placeholder.com/640x480.png/004477?text=blanditiis', 'Ab nobis aut dicta.', 'Animi optio qui et et.', '1998-04-29 17:00:00', 330, 401, 5, NULL, NULL),
(45, 'Est consectetur ad qui aut.', 'https://via.placeholder.com/640x480.png/0099bb?text=qui', 'Dolorem dicta omnis officiis.', 'Autem hic et ut magni quo.', '2001-11-05 17:00:00', 711, 969101, 1, NULL, NULL),
(46, 'Distinctio dolor iure ut.', 'https://via.placeholder.com/640x480.png/007788?text=qui', 'Eum aut repudiandae rerum.', 'Culpa et excepturi sit dolor.', '2016-02-20 17:00:00', 67636, 1994646, 2, NULL, NULL),
(47, 'Repellat est dicta non sit.', 'https://via.placeholder.com/640x480.png/0066ff?text=alias', 'Labore fugit et non hic a.', 'Odit enim consequatur quia.', '2003-10-31 17:00:00', 91822060, 7844, 3, NULL, NULL),
(48, 'Consectetur quia iure et.', 'https://via.placeholder.com/640x480.png/00ccaa?text=optio', 'Consequatur molestias et ea.', 'Incidunt esse ullam repellat.', '2022-11-15 17:00:00', 437782895, 415, 2, NULL, NULL),
(49, 'Autem quo sed aperiam earum.', 'https://via.placeholder.com/640x480.png/003322?text=debitis', 'Sit qui quia sit.', 'Totam autem nulla sed qui.', '1998-07-28 17:00:00', 53140930, 7211802, 3, NULL, NULL),
(50, 'Et corporis vel veniam nihil.', 'https://via.placeholder.com/640x480.png/0055cc?text=esse', 'Sit ut quod sit incidunt.', 'Autem voluptas et nisi qui.', '1985-04-14 17:00:00', 51046728, 25397534, 5, NULL, NULL),
(51, 'Dolorum quasi ullam ex et.', 'https://via.placeholder.com/640x480.png/00cc22?text=distinctio', 'Aut quis nihil et.', 'Consequatur at rerum ea.', '2007-10-18 17:00:00', 5457859, 16550691, 5, NULL, NULL),
(52, 'Eum et suscipit odio autem.', 'https://via.placeholder.com/640x480.png/001166?text=deleniti', 'Enim et ut quis consectetur.', 'Id ea ut dolor.', '1988-02-22 17:00:00', 81998, 54, 2, NULL, NULL),
(53, 'Id sequi corporis tenetur.', 'https://via.placeholder.com/640x480.png/0022dd?text=reiciendis', 'Alias distinctio ut ut.', 'Ipsa et asperiores et sit.', '1973-06-03 17:00:00', 69582, 13710453, 5, NULL, NULL),
(54, 'Nulla earum iure est.', 'https://via.placeholder.com/640x480.png/009933?text=voluptates', 'Ullam quas quos porro quia.', 'Ea vel placeat a quis.', '1994-11-22 17:00:00', 5749428, 459262, 5, NULL, NULL),
(55, 'Totam sequi odio aut tenetur.', 'https://via.placeholder.com/640x480.png/004455?text=nihil', 'Ex at et dolores quae.', 'Sint ad quas quod neque.', '2017-07-13 17:00:00', 8263812, 62256232, 4, NULL, NULL),
(56, 'Autem esse libero harum at.', 'https://via.placeholder.com/640x480.png/004477?text=officiis', 'A sequi eaque enim atque.', 'Sit in et sed labore.', '1975-07-31 17:00:00', 86, 314100, 5, NULL, NULL),
(57, 'Ea sit accusamus eius.', 'https://via.placeholder.com/640x480.png/00aa55?text=aut', 'Sit ratione neque est.', 'Cumque aut hic doloremque.', '1987-08-29 17:00:00', 36, 89, 1, NULL, NULL),
(58, 'Hic ea nostrum id sint omnis.', 'https://via.placeholder.com/640x480.png/008833?text=ut', 'Nihil voluptas odit non.', 'Minus harum eius ab.', '2010-12-02 17:00:00', 2986, 1670651, 5, NULL, NULL),
(59, 'Minus ut rerum quam.', 'https://via.placeholder.com/640x480.png/00eebb?text=nesciunt', 'Aut in quo occaecati.', 'Quis totam quibusdam ut qui.', '2003-09-24 17:00:00', 200, 11, 1, NULL, NULL),
(60, 'Est sunt est fugiat illo.', 'https://via.placeholder.com/640x480.png/0077ff?text=repudiandae', 'Aut aut suscipit aut dolor.', 'Quos suscipit et qui.', '1988-02-15 17:00:00', 5431973, 9852360, 1, NULL, NULL),
(61, 'Et et sint tempora non.', 'https://via.placeholder.com/640x480.png/000022?text=itaque', 'Eaque omnis non vel ut.', 'Quasi sint veniam totam iste.', '1980-03-12 17:00:00', 67366729, 7550520, 5, NULL, NULL),
(62, 'Culpa nihil rerum error.', 'https://via.placeholder.com/640x480.png/00aa00?text=quisquam', 'Ex non quo est suscipit aut.', 'Ad tempora aut corporis sunt.', '1994-11-21 17:00:00', 320814, 3, 5, NULL, NULL),
(63, 'Qui ut ex et fugit quo.', 'https://via.placeholder.com/640x480.png/00ffff?text=quam', 'Eum a ea et id.', 'Sequi aut eius explicabo.', '2011-07-27 17:00:00', 9195, 18871304, 2, NULL, NULL),
(64, 'Ut iusto eum facere.', 'https://via.placeholder.com/640x480.png/00ddee?text=est', 'Quia aut tempore dignissimos.', 'Sed cum eveniet quidem a.', '2013-05-02 17:00:00', 2704, 8076510, 4, NULL, NULL),
(65, 'Ut fuga cum ratione.', 'https://via.placeholder.com/640x480.png/00ff33?text=est', 'Et tenetur numquam iusto.', 'Unde qui non dicta fuga.', '2019-01-04 17:00:00', 152807, 6, 2, NULL, NULL),
(66, 'Qui rem quae a odit.', 'https://via.placeholder.com/640x480.png/00aa88?text=provident', 'Sit consequatur qui et.', 'Ut ut quia quae delectus.', '1972-03-04 17:00:00', 1118212, 21832144, 1, NULL, NULL),
(67, 'Quos fugit eum sed nesciunt.', 'https://via.placeholder.com/640x480.png/007744?text=consequatur', 'Quas maiores aut aut dolorem.', 'Non vero dolor et harum.', '1995-12-22 17:00:00', 5, 222, 4, NULL, NULL),
(68, 'Qui veritatis aut ut alias.', 'https://via.placeholder.com/640x480.png/0011cc?text=earum', 'Aut animi sit porro.', 'Quas omnis eos eos sed.', '2017-11-20 17:00:00', 67, 16, 3, NULL, NULL),
(69, 'Ratione ut qui iste ducimus.', 'https://via.placeholder.com/640x480.png/0011bb?text=est', 'Suscipit sint soluta sunt.', 'Vel facilis ad commodi.', '2016-12-12 17:00:00', 12903, 33765, 2, NULL, NULL),
(70, 'Et enim harum perspiciatis.', 'https://via.placeholder.com/640x480.png/00ddaa?text=est', 'Doloribus quo hic quisquam.', 'Nihil non nulla amet sunt.', '1999-01-16 17:00:00', 279, 974036, 4, NULL, NULL),
(71, 'Qui est sequi quia eveniet.', 'https://via.placeholder.com/640x480.png/00ff66?text=delectus', 'Et est non corrupti.', 'Quis sunt quo deleniti.', '2000-09-10 17:00:00', 958534, 967008, 1, NULL, NULL),
(72, 'Et voluptate rerum est esse.', 'https://via.placeholder.com/640x480.png/003311?text=voluptatem', 'Est nihil voluptatibus ut at.', 'Sit molestias sint facilis.', '2003-10-28 17:00:00', 606187, 281393216, 5, NULL, NULL),
(73, 'Voluptate totam quia odit.', 'https://via.placeholder.com/640x480.png/000055?text=corrupti', 'Incidunt tenetur est nam et.', 'Est quasi dolorum unde quia.', '1975-10-05 17:00:00', 6, 542664832, 3, NULL, NULL),
(74, 'Sit veritatis dolor fugiat.', 'https://via.placeholder.com/640x480.png/0088ff?text=omnis', 'Voluptas ut error cum modi.', 'Eaque qui debitis amet.', '1971-07-01 17:00:00', 95109380, 14, 4, NULL, NULL),
(75, 'Id repellat aut est maxime.', 'https://via.placeholder.com/640x480.png/00ee33?text=ratione', 'Nam quae quos vero voluptas.', 'Et vero ipsa magnam quidem.', '2006-02-11 17:00:00', 33985, 605996, 3, NULL, NULL),
(76, 'Itaque est autem rerum aut.', 'https://via.placeholder.com/640x480.png/008877?text=quos', 'A officia dolor sit.', 'Omnis quia rerum placeat.', '2003-02-20 17:00:00', 76508813, 960644224, 4, NULL, NULL),
(77, 'Quia et sed ea incidunt esse.', 'https://via.placeholder.com/640x480.png/003311?text=amet', 'Et at quidem vel fugit.', 'Ut soluta nostrum vel aut.', '2018-03-02 17:00:00', 258103837, 750513, 4, NULL, NULL),
(78, 'Harum sit optio aut velit.', 'https://via.placeholder.com/640x480.png/0077aa?text=voluptas', 'Et modi sed sed enim aperiam.', 'Nostrum et quis quae.', '2008-10-21 17:00:00', 64, 76547776, 5, NULL, NULL),
(79, 'Sint est perferendis et eum.', 'https://via.placeholder.com/640x480.png/00ccdd?text=qui', 'Sapiente magnam ab velit ab.', 'Veniam itaque dolor officia.', '1991-12-14 17:00:00', 690146, 221, 2, NULL, NULL),
(81, 'Alias earum ipsam quos illum.', 'https://via.placeholder.com/640x480.png/001177?text=quod', 'Numquam autem et at.', 'Et ipsam earum a esse illo.', '1989-12-20 17:00:00', 6, 83, 5, NULL, NULL),
(82, 'Et ea amet vel nulla.', 'https://via.placeholder.com/640x480.png/00ff44?text=alias', 'Officia quam eaque officia.', 'Et ad explicabo placeat.', '1979-07-11 17:00:00', 1136504, 0, 5, NULL, NULL),
(83, 'Tempora illo facere et.', 'https://via.placeholder.com/640x480.png/00aa99?text=est', 'Voluptatem et error sequi.', 'Rerum veniam quo modi.', '1989-09-09 17:00:00', 1805, 2920007, 4, NULL, NULL),
(84, 'Rerum illo velit sunt ea.', 'https://via.placeholder.com/640x480.png/0088ff?text=totam', 'Dolor et omnis deserunt id.', 'Rerum et sit provident.', '1988-07-08 17:00:00', 22989, 62783252, 5, NULL, NULL),
(85, 'Incidunt mollitia quas est.', 'https://via.placeholder.com/640x480.png/00ff77?text=et', 'Qui eum aut rerum libero.', 'Dolor corrupti autem cum.', '1998-05-07 17:00:00', 85300749, 8170229, 5, NULL, NULL),
(86, 'Maiores est et iure sit.', 'https://via.placeholder.com/640x480.png/00cc66?text=repudiandae', 'Id incidunt placeat omnis.', 'Ut vitae sit quas tenetur.', '1981-12-13 17:00:00', 47, 12718899, 4, NULL, NULL),
(87, 'Omnis sint ipsa occaecati.', 'https://via.placeholder.com/640x480.png/00ffff?text=ut', 'Sequi qui consectetur fuga.', 'Nisi hic suscipit debitis et.', '1987-06-16 17:00:00', 6972203, 29128, 2, NULL, NULL),
(88, 'Ratione quia et nisi soluta.', 'https://via.placeholder.com/640x480.png/00eecc?text=in', 'Odit pariatur est et.', 'Rerum repellat porro ex unde.', '2020-06-14 17:00:00', 66, 7, 1, NULL, NULL),
(89, 'Sit et autem laborum et.', 'https://via.placeholder.com/640x480.png/000099?text=harum', 'Eum nemo perferendis ipsa et.', 'Minus et tempore natus.', '1982-02-14 17:00:00', 485921646, 61487424, 3, NULL, NULL),
(90, 'Qui esse itaque qui omnis.', 'https://via.placeholder.com/640x480.png/009999?text=aliquam', 'In saepe commodi et esse.', 'Sit recusandae et in.', '1974-01-20 17:00:00', 63470023, 0, 3, NULL, NULL),
(91, 'Maxime et aut placeat et.', 'https://via.placeholder.com/640x480.png/00aa99?text=ipsum', 'Velit nesciunt ea minus nam.', 'Eaque qui dolores eos est.', '2023-01-30 17:00:00', 463028529, 58, 5, NULL, NULL),
(92, 'Expedita ut quos aut vel.', 'https://via.placeholder.com/640x480.png/0022dd?text=molestiae', 'Et sed totam doloribus.', 'Id sed nemo et est quis.', '1989-03-14 17:00:00', 59, 40, 1, NULL, NULL),
(93, 'Id enim et quia omnis.', 'https://via.placeholder.com/640x480.png/00bbcc?text=odio', 'Qui omnis qui magnam.', 'Veniam veniam et magni.', '2021-02-16 17:00:00', 678790, 8, 1, NULL, NULL),
(94, 'Officia non aut molestiae.', 'https://via.placeholder.com/640x480.png/0044aa?text=officiis', 'Sunt odio sed inventore qui.', 'Sed corrupti minima voluptas.', '2024-06-27 17:00:00', 2250, 2189, 3, NULL, NULL),
(95, 'Sed sunt ut quo tempore.', 'https://via.placeholder.com/640x480.png/00ffff?text=quos', 'Sint fugit in distinctio.', 'Ut ea sapiente dolorum.', '2017-12-07 17:00:00', 715, 6558329, 5, NULL, NULL),
(96, 'Omnis eaque id velit.', 'https://via.placeholder.com/640x480.png/00bbcc?text=dolore', 'Voluptatem et aut quos quis.', 'Nam qui et accusamus est et.', '1995-02-11 17:00:00', 45607, 926, 1, NULL, NULL),
(97, 'Qui saepe iste magnam iure.', 'https://via.placeholder.com/640x480.png/00bbaa?text=doloremque', 'Et fugiat qui officia qui.', 'Eum impedit aut quis aut id.', '2001-03-25 17:00:00', 60, 4690708, 1, NULL, NULL),
(98, 'Ab hic molestiae doloremque.', 'https://via.placeholder.com/640x480.png/0044aa?text=aliquam', 'Et et dolorem vel est.', 'Ea quasi vero aut sed.', '2003-02-04 17:00:00', 3396269, 970085, 3, NULL, NULL),
(99, 'Atque in ut quia.', 'https://via.placeholder.com/640x480.png/005522?text=culpa', 'Nam est dolor itaque placeat.', 'Recusandae sed ex vero.', '1982-06-23 17:00:00', 64, 703, 4, NULL, NULL),
(103, 'tghj', 'images/lziKVzNM46UwQqUZaYniuBtPZdq56KZJDr9fn37U.png', 'dfgcbvn', 'yhvb', NULL, 12, 11, 3, '2024-10-15 01:21:38', '2024-10-15 01:21:38'),
(104, 'da update', 'thumbnails/E9TWb7kTR5da8PuVNLPHM5NwAHN2jjQcUEbBVLTR.png', 'sdxcv', 'edfvb', NULL, 12, 11, 1, '2024-10-15 01:22:37', '2024-10-15 01:47:15');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Giao Khoa', NULL, NULL),
(2, 'Sinh', NULL, NULL),
(3, 'Ly', NULL, NULL),
(4, 'Hoa', NULL, NULL),
(5, 'Anh', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2024_09_26_150323_create_posts_table', 1),
(6, '2024_09_26_150345_create_categories_table', 1),
(7, '2014_10_12_000000_create_users_table', 2),
(8, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(9, '2019_08_19_000000_create_failed_jobs_table', 2),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `email`, `address`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Quân', 'qan', 'quannmph45405@fpt.edu.vn', NULL, 'admin', NULL, '$2y$12$y1VWLZXZL9c20573b2HKou5H73UBxT8jfEb1DSvldo0P6/y9nG2dm', NULL, '2024-10-13 20:30:55', '2024-10-13 20:30:55'),
(2, 'Nguyễn Quân', 'quanxinhtrai04@gmail.com', 'quanxinhtrai04@gmail.com', NULL, 'user', NULL, '$2y$12$F/9Y2Xk7klDmK9ur2pLcjOcAll5TSLd9.ZFGoBOOvj2xnmgRfvpq6', NULL, '2024-10-14 09:06:56', '2024-10-14 09:06:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
