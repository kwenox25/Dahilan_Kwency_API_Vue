-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 29, 2024 at 01:50 AM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aic`
--

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
CREATE TABLE IF NOT EXISTS `artists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Irving Petlin', '2024-03-29 00:47:10', '2024-03-29 00:47:10'),
(2, 'Pablo Picasso', '2024-03-29 01:23:08', '2024-03-29 01:23:08'),
(3, 'Mark Tobey', '2024-03-29 01:29:48', '2024-03-29 01:29:48'),
(4, 'Luc Tuymans', '2024-03-29 01:29:48', '2024-03-29 01:29:48'),
(5, 'Alice Neel', '2024-03-29 01:29:48', '2024-03-29 01:29:48'),
(6, 'Zao Wou-ki', '2024-03-29 01:29:48', '2024-03-29 01:29:48'),
(7, 'Stanley Dean Edwards', '2024-03-29 01:29:48', '2024-03-29 01:29:48'),
(8, 'Julia Fish', '2024-03-29 01:29:48', '2024-03-29 01:29:48'),
(9, 'Ray Yoshida', '2024-03-29 01:29:48', '2024-03-29 01:29:48'),
(10, 'Sabelo Mlangeni', '2024-03-29 01:29:48', '2024-03-29 01:29:48'),
(11, 'India Northern India or Deccan', '2024-03-29 01:29:48', '2024-03-29 01:29:48');

-- --------------------------------------------------------

--
-- Table structure for table `artworks`
--

DROP TABLE IF EXISTS `artworks`;
CREATE TABLE IF NOT EXISTS `artworks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `artist_id` int NOT NULL,
  `artwork_thumbnail` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `published_date` text NOT NULL,
  `medium` varchar(255) NOT NULL,
  `dimensions` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `artworks`
--

INSERT INTO `artworks` (`id`, `title`, `artist_id`, `artwork_thumbnail`, `place`, `published_date`, `medium`, `dimensions`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Clay Lake, Morning Sundown', 1, 'clay_lake_morning_sundown.jpg', 'United States', '1975', 'Oil on canvas, diptych', 'Each: 91.4 × 91.4 cm (36 × 36 in.); 91.5 × 91.5 cm (36 × 36 in.)', '', '2024-03-29 01:16:36', '2024-03-29 01:16:36'),
(2, 'Fragment of \"Mother and Child\"', 2, 'fragment_of_mother_and_child.jpg', 'Spain', '1921', 'Oil on canvas', '143.4 × 44.3 cm (56 7/16 × 17 1/16 in.)', '', '2024-03-29 01:27:34', '2024-03-29 01:27:34'),
(3, 'Above the Earth', 3, 'above_the_earth.jpg', 'United States', '1953', 'Gouache on board', '100.3 × 75.6 cm (39 1/4 × 29 3/4 in.)', '', '2024-03-29 01:34:52', '2024-03-29 01:34:52'),
(4, 'Niks', 4, 'niks.jpg', 'Belgium', '2002', 'Oil on canvas', '109.2 × 113 cm (43 × 44 1/2 in.)', 'Luc Tuymans’s quiet, elegiac paintings, copied from images of old photographs or newspaper illustrations, draw upon the act of remembrance and the function of collective memory. The artist once said, “I usually finish [a painting] in a single day, partly in order not to lose my concentration and partly in order to have the chance not to come too close to the image I am using as my model.” His palette—composed usually of flat, muted greens, browns, grays, and white—likewise evokes forgotten, lost events and people. <em>Niks</em>, which in Flemish means “nothing,” conveys little of the poignancy and delicate sentiment of a traditional floral still life; instead, this pot of geraniums acridly suggests a faded sense of middle-class banality in lieu of the elegant, sumptuous arrangements celebrated by the Northern European painters of the past.', '2024-03-29 01:34:52', '2024-03-29 01:34:52'),
(5, 'Ginny with the Yellow Hat', 5, 'ginny_with_the_yellow_hat.jpg', 'United States', '1971', 'Oil on canvas', '101.6 × 73.7 cm (40 × 29 in.)', 'Alice Neel’s evocative, subversive, and psychologically driven portraits have gained increasing recognition after her death. She brought a loquacious expressionism to each of her subjects—a diverse group of artists, intellectuals, and political leaders of the national Communist Party, as well as family and neighbors in Spanish Harlem. This portrait’s subject is the artist’s daughter-in-law, Ginny Neel, who was painted here at the age of twenty-seven. She sits nervously for the artist, her long, bony fingers and hunched shoulders embody a tense nervousness, and her cloche and winter coat imply that she was stopped on her way in. Neel had spent the previous winter in California with her son Hartley and Ginny, who were gifted the portrait upon its completion.', '2024-03-29 01:47:07', '2024-03-29 01:47:07'),
(6, 'Pink Composition (Composition en rose)', 6, 'pink_composition.jpg', 'France', '1951', 'Oil on canvas', 'Without frame: 87 × 114.3 cm (34 5/16 × 45 in.); 87.7 × 114.3 cm (34 1/2 × 45 in.)', '', '2024-03-29 01:47:07', '2024-03-29 01:47:07'),
(7, 'Baby in a Shooting Gallery', 7, 'baby_in_a_shooting_gallery.jpg', '', '1966', 'Oil and acrylic on canvas', '1117 × 86.3 cm (44 × 34 in.)', '', '2024-03-29 01:47:07', '2024-03-29 01:47:07'),
(8, 'Thaw', 8, 'thaw.jpg', 'United States', '1989', 'Oil on canvas', '43.2 × 177.8 cm (17 × 70 in.)', '', '2024-03-29 01:47:07', '2024-03-29 01:47:07'),
(9, 'Extraordinary Values', 9, 'extraordinary_values.jpg', 'United States', 'c. 1970', 'Acrylic on canvas, in hand-painted frame', '91.5 × 91.5 cm (36 × 36 in.)', '', '2024-03-29 01:47:07', '2024-03-29 01:47:07'),
(10, 'Madoda Thabethe Mabunda Zahkele Mkhize Zakhele Maseko no Mfundisi uNdlela from Swaziland, Esiwasheni, from the series \"Umlindelo wamaKholwa\"', 10, 'madoda_thabethe.jpg', '', '2003', 'Gelatin silver print', 'Image: 24 × 36 cm (9 1/2 × 14 3/16 in.); Paper: 30 × 40 cm (11 13/16 × 15 3/4 in.)', '', '2024-03-29 01:47:07', '2024-03-29 01:47:07'),
(11, 'Room Visit, from the series \"Men Only\"', 10, 'room_visit.jpg', 'Africa', '2009', 'Gelatin silver print', 'Image: 26.5 × 26.3 cm (10 7/16 × 10 3/8 in.); Paper: 40.3 × 30.4 cm (15 7/8 × 12 in.)', '', '2024-03-29 01:47:07', '2024-03-29 01:47:07'),
(12, 'Dagger with Tiger-Head Pommel', 11, 'dagger_with_tiger_head_pommel.jpg', 'Northern India', '\"18th/19th century', 'Steel blade; hilt of quartz (?) underlaid with red resin and inset in the kundan technique, with gold leaf and polychrome enamel (minakari)', '29.9 × 6.4 × 2.9 cm (11 3/4 × 2 1/2 × 1 1/8 in.)', 'This dagger has a plain, double-edged steel blade and an exquisitely decorated hilt. The cross guard is inlaid with quartz gemstones and displays the heads of two blue, tusked elephants. A cerise-colored enameled handle separates the cross guard from the golden tiger’s head pommel, which is adorned with additional jewels arranged in floral and foliate patterns. The process for creating this haft, known as <em>kundan</em>, entails using soft gold for setting and polychrome enameling. Richly embellished daggers like this one would have been worn tucked into the waist sash of a prominent individual.', '2024-03-29 01:47:07', '2024-03-29 01:47:07');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
