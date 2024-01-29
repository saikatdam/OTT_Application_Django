-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2024 at 12:07 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comet`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_searches`
--

CREATE TABLE `all_searches` (
  `id` bigint(20) NOT NULL,
  `search` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `all_searches`
--

INSERT INTO `all_searches` (`id`, `search`) VALUES
(1, 'sai'),
(2, 'rock'),
(3, 'rock'),
(4, 'rock'),
(5, 'sai'),
(6, 'rock'),
(7, 'rockky'),
(8, 'rocky'),
(9, 'saalar'),
(10, 's'),
(11, 'saalar'),
(12, 'saalar'),
(13, 'saalar'),
(14, 'saalar'),
(15, 'nun'),
(16, 'sal'),
(17, 'saa'),
(18, 'ava'),
(19, 'a');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add movie_genres', 7, 'add_movie_genres'),
(26, 'Can change movie_genres', 7, 'change_movie_genres'),
(27, 'Can delete movie_genres', 7, 'delete_movie_genres'),
(28, 'Can view movie_genres', 7, 'view_movie_genres'),
(29, 'Can add movie_list', 8, 'add_movie_list'),
(30, 'Can change movie_list', 8, 'change_movie_list'),
(31, 'Can delete movie_list', 8, 'delete_movie_list'),
(32, 'Can view movie_list', 8, 'view_movie_list'),
(33, 'Can add carousel', 9, 'add_carousel'),
(34, 'Can change carousel', 9, 'change_carousel'),
(35, 'Can delete carousel', 9, 'delete_carousel'),
(36, 'Can view carousel', 9, 'view_carousel'),
(37, 'Can add searches', 10, 'add_searches'),
(38, 'Can change searches', 10, 'change_searches'),
(39, 'Can delete searches', 10, 'delete_searches'),
(40, 'Can view searches', 10, 'view_searches');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$DPGH520J078CSOcYpWlFuz$wNXe16bMEmbe63B0RL/mSw6qIpCrB5cz1bqxkQdt0p0=', '2024-01-29 06:14:51.356586', 1, 'primevideo', '', '', 'souravdam99@gmail.com', 1, 1, '2024-01-27 04:58:13.982310'),
(2, 'pbkdf2_sha256$720000$uFCUMHhlXhtg77CFHk5IjY$cauqlLJaslVTmIQCoTXJ2Lci6T8yEo0XQJ7TpIQzBc0=', '2024-01-29 06:16:33.038416', 0, 'sourav', '', '', 'souravdam99@gmail.com', 0, 1, '2024-01-27 06:17:33.807530'),
(12, 'pbkdf2_sha256$720000$fEOT9XbfjuDJBgt1doBDp9$ScBjUVhydY39e2nD2Glczful0qAKr0gbbznv/PxTD3o=', '2024-01-29 04:30:46.126908', 0, 'jeet', '', '', 'jeetpatra987@gmail.com', 0, 1, '2024-01-29 04:30:45.537315');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cometweb_carousel`
--

CREATE TABLE `cometweb_carousel` (
  `id` bigint(20) NOT NULL,
  `carousel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cometweb_carousel`
--

INSERT INTO `cometweb_carousel` (`id`, `carousel_id`) VALUES
(2, 5),
(7, 27),
(3, 29);

-- --------------------------------------------------------

--
-- Table structure for table `cometweb_movie_genres`
--

CREATE TABLE `cometweb_movie_genres` (
  `id` bigint(20) NOT NULL,
  `genres` varchar(50) NOT NULL,
  `background` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cometweb_movie_genres`
--

INSERT INTO `cometweb_movie_genres` (`id`, `genres`, `background`) VALUES
(1, 'Entertainment', 'genrebackground/background3.jpg'),
(3, 'Action', 'genrebackground/background2.jpg'),
(4, 'Suspense', 'genrebackground/background1.jpg'),
(5, 'Thriller', 'genrebackground/background4.jpg'),
(6, 'Drama', 'genrebackground/background5.jpg'),
(7, 'Horror', 'genrebackground/background8.jpg'),
(8, 'Mystery', 'genrebackground/background9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cometweb_movie_list`
--

CREATE TABLE `cometweb_movie_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `poster` varchar(100) NOT NULL,
  `moviefile` varchar(100) NOT NULL,
  `year` int(10) UNSIGNED NOT NULL CHECK (`year` >= 0),
  `genres_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cometweb_movie_list`
--

INSERT INTO `cometweb_movie_list` (`id`, `name`, `description`, `poster`, `moviefile`, `year`, `genres_id`) VALUES
(3, 'Rocky Aur Rani ki Prem Kahani', 'The film is about Rocky and Rani trying to reunite their grandparents, who are long-lost lovers. To convince their families, they decide to live with each other\'s families for three months. However, they soon realize that things aren\'t as easy as they thought', 'movieposter/rocky_aur_rani_jVinsPM.jpg', 'moviefile/Dola_re_Dola___Ranveer_Singh___Kathak_dance_scene___Rocky_Aur_Rani_Ki_Prem_Kah_EDhxI3A.mp4', 2023, 1),
(4, 'Teri Baaton mein aisa uljha jiya', 'Teri Baaton Mein Aisa Uljha Jiya (transl. I got so entangled by your words) is an upcoming Indian Hindi-language science fiction romantic comedy film starring Shahid Kapoor and Kriti Sanon. Produced under Maddock Films and Jio Studios, the film is written and directed by Amit Joshi and Aradhana Sah, in their directorial debuts.', 'movieposter/teri_bato_ne.avif', 'moviefile/teribaaton.mp4', 2024, 1),
(5, 'Avengers Infinity War', 'In the film, the Avengers and the Guardians of the Galaxy attempt to stop Thanos from collecting the six powerful Infinity Stones as part of his quest to kill half of all life in the universe.', 'movieposter/avangers.jpg', 'moviefile/avengers_bC8knUe.mp4', 2018, 1),
(6, 'The Batman', 'Batman\'s origin story features him swearing vengeance against criminals after witnessing the murder of his parents Thomas and Martha as a child, a vendetta tempered with the ideal of justice. He trains himself physically and intellectually, crafts a bat-inspired persona, and monitors the Gotham streets at night.', 'movieposter/images.jpeg', 'moviefile/teribaaton_cvCIgIa.mp4', 2016, 1),
(7, 'Gunday', 'Set in 1971–1988 Calcutta, Gunday is a story about two best friends and outlaws, who fall in love with a cabaret dancer, which causes rivalry and misunderstandings between them while a police officer tries to take advantage of this situation to eliminate them.', 'movieposter/image4.jpeg', 'moviefile/saalar.mp4', 2016, 1),
(8, 'Saalar', 'A term used in Southwestern United States and in the Chilean nitrate fields for a salt flat or for a salt-encrusted depression that may represent the basin of a salt lake. Etymol: Spanish, to salt. Pl: salares; salars.', 'movieposter/saalar.jpg', 'moviefile/saalar_Jw8JT5b.mp4', 2023, 3),
(9, 'Avengers EndGame', 'AVENGERS: ENDGAME is set after Thanos\' catastrophic use of the Infinity Stones randomly wiped out half of Earth\'s population in Avengers: Infinity War. Those left behind are desperate to do something -- anything -- to bring back their lost loved ones.', 'movieposter/endgame.jpeg', 'moviefile/avengers.mp4', 2019, 3),
(10, 'Justice League', 'The Justice League is a group of superheroes from DC Comics who work together to protect Earth from threats that are too big for humanity to face alone. The League\'s members are often depicted as being on a higher level than normal humans, and their original lineup included heroes based on Greek gods.', 'movieposter/justice_league.jpeg', 'moviefile/saalar_3oOg5xd.mp4', 1975, 3),
(11, 'Pathan', 'Pathaan, an exiled RAW agent, works with ISI agent Rubina Mohsin to take down Jim, a former RAW agent, who plans to attack India with a deadly virus. Principal photography commenced in November 2020 in Mumbai. The film was shot in various locations in India, Afghanistan, Spain, UAE, Turkey, Russia, Italy and France.', 'movieposter/movie2.jpeg', 'moviefile/dunki.mp4', 2023, 3),
(12, 'Ami subhash bolchi', 'Ami Shubhash Bolchi is a 2011 Bengali-language Indian film directed by Mahesh Manjrekar, starring Mithun Chakraborty, Saheb Bhattacharya, Laboni Sarkar, Karan Aanand, Barkha Bisht Sengupta and Anindya Banerjee. Mithun said of the film: \"I have done nearly 350 films and this is my boldest film, ever\".[1] This movie is the Bengali version of Manjrekar\'s earlier original Marathi film along the same lines called Me Shivajiraje Bhosale Boltoy.', 'movieposter/Ami_Shubhash_Bolchi.jpg', 'moviefile/ami_subhash_bolchi.mp4', 2018, 4),
(13, 'Pink', 'Pink is a 2016 Indian Hindi-language legal thriller film directed by Aniruddha Roy Chowdhury and written by Shoojit Sircar, Ritesh Shah and Aniruddha Roy Chowdhury. The film is produced by Rising Sun Films on a total budget of ₹30 crore, with screenplay by Shah and music composition by Shantanu Moitra and Anupam Roy.', 'movieposter/Pink-01.jpg', 'moviefile/Dola_re_Dola___Ranveer_Singh___Kathak_dance_scene___Rocky_Aur_Rani_Ki_Prem_Kah_ybrt69z.mp4', 2017, 4),
(14, 'Drishyam 2', 'from the law after they commit a crime. \r\n The film is about a Maharashtrian family living in Goa whose lives are turned upside down when their daughter gets into a fight with a college boy at a nature camp. The film stars Ajay Devgn as Vijay Salgaonkar, a man who runs a cable TV network in a remote village. \r\n The film also stars Tabu as Meera Deshmukh, a high-ranking police inspector whose son goes missing', 'movieposter/dr.jpg', 'moviefile/dhrishyam.mp4', 2023, 4),
(15, 'The Amazing Spiderman', 'After Peter Parker is bitten by a genetically altered spider, he gains newfound, spider-like powers and ventures out to save the city from the machinations of a mysterious reptilian foe.', 'movieposter/poster2.jpeg', 'moviefile/avengers_VY2BgKx.mp4', 2019, 4),
(16, 'Sholay', 'The plot is about a retired police officer Thakur (Sanjeev Kumar) who hires two convicts Veeru and Jai (Dharmendra and Amitabh Bachchan) to capture Gabbar Singh (a Dacoit) who had killed the cop\'s entire family (except the cop and his daughter-in-la', 'movieposter/sholay.jpeg', 'moviefile/ami_subhash_bolchi_6DTbPm1.mp4', 1975, 4),
(17, 'October', 'Written by Juhi Chaturvedi and shot by Avik Mukhopadhyay, the film follows the life of a hotel-management intern who takes care of his comatose fellow intern in an unconditional and unconventional manner.', 'movieposter/october_XDePD0v.jpeg', 'moviefile/teribaaton_VYLcxqu.mp4', 2018, 1),
(18, 'Roy', 'Written by Juhi Chaturvedi and shot by Avik Mukhopadhyay, the film follows the life of a hotel-management intern who takes care of his comatose fellow intern in an unconditional and unconventional manner.', 'movieposter/fandome.jpeg', 'moviefile/Dola_re_Dola___Ranveer_Singh___Kathak_dance_scene___Rocky_Aur_Rani_Ki_Prem_Kah_GOGHedx.mp4', 2021, 4),
(19, 'Roketo', 'In the film, Nick Fury and the spy agency S.H.I.E.L.D. recruit Tony Stark, Steve Rogers, Bruce Banner, Thor, Natasha Romanoff, and Clint Barton to form a team capable of stopping Thor\'s brother Loki from subjugating Earth. Robert Downey Jr.', 'movieposter/rokato.jpeg', 'moviefile/Infinite_2021_-_Explosive_Forest_Fight_Scene___Movieclips.mp4', 2021, 5),
(20, 'John Wick 2', 'In the film, Nick Fury and the spy agency S.H.I.E.L.D. recruit Tony Stark, Steve Rogers, Bruce Banner, Thor, Natasha Romanoff, and Clint Barton to form a team capable of stopping Thor\'s brother Loki from subjugating Earth. Robert Downey Jr.', 'movieposter/action.jpeg', 'moviefile/John_Wick__Chapter_3_-_Parabellum_2019_-_Throwing_Knives_Scene_1_12___Movieclips.mp4', 2016, 5),
(21, 'Leo', 'In the film, Nick Fury and the spy agency S.H.I.E.L.D. recruit Tony Stark, Steve Rogers, Bruce Banner, Thor, Natasha Romanoff, and Clint Barton to form a team capable of stopping Thor\'s brother Loki from subjugating Earth. Robert Downey Jr.', 'movieposter/leo.jpg', 'moviefile/Dola_re_Dola___Ranveer_Singh___Kathak_dance_scene___Rocky_Aur_Rani_Ki_Prem_Kah_uKUnWMa.mp4', 2023, 5),
(22, 'Oppenheimer', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving ..', 'movieposter/oppenherimer.jpeg', 'moviefile/Oppenheimer___Vision.mp4', 2023, 6),
(23, 'Avatar', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving ..', 'movieposter/poster1.jpg', 'moviefile/The_Witcher___Blaviken_Market_Fight_Scene_Geralt_Butchers_Renfris_Gang.mp4', 2022, 6),
(24, 'GrayMan', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving ..', 'movieposter/grayman.avif', 'moviefile/Infinite_2021_-_Explosive_Forest_Fight_Scene___Movieclips_gSMjlEz.mp4', 2023, 6),
(25, 'Scream', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving ..', 'movieposter/scream.jpeg', 'moviefile/The_Witcher___Blaviken_Market_Fight_Scene_Geralt_Butchers_Renfris_Gang_Z1vPQyR.mp4', 2021, 6),
(26, 'Top Gun Maverick', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving ..', 'movieposter/topgun.jpeg', 'moviefile/Top_Gun__Maverick_2022_-_Mavericks_Test_Run_Scene___Movieclips.mp4', 2021, 7),
(27, 'The Nun', 'The 2018 movie The Nun is about a priest and a novice who are sent to investigate the death of a young nun in Romania. The Vatican sends the priest, who has a haunted past, and the novice, who is about to take her final vows, to confront a demonic force', 'movieposter/thenun.webp', 'moviefile/THE_NUN_II___OFFICIAL_TRAILER.mp4', 2018, 7),
(28, 'The Exorcist', 'The 2018 movie The Nun is about a priest and a novice who are sent to investigate the death of a young nun in Romania. The Vatican sends the priest, who has a haunted past, and the novice, who is about to take her final vows, to confront a demonic force', 'movieposter/exorist.jpeg', 'moviefile/THE_POPES_EXORCIST__Official_Trailer_HD.mp4', 2017, 7),
(29, 'Bloody Daddy', 'The 2018 movie The Nun is about a priest and a novice who are sent to investigate the death of a young nun in Romania. The Vatican sends the priest, who has a haunted past, and the novice, who is about to take her final vows, to confront a demonic force', 'movieposter/bloody_daddy.avif', 'moviefile/bloody.mp4', 2023, 8),
(30, 'Antman', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving ..', 'movieposter/antman.jpeg', 'moviefile/Infinite_2021_-_Explosive_Forest_Fight_Scene___Movieclips_4fG8aFg.mp4', 2021, 8),
(31, 'Animal', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving ..', 'movieposter/animal.avif', 'moviefile/Dola_re_Dola___Ranveer_Singh___Kathak_dance_scene___Rocky_Aur_Rani_Ki_Prem_Kah_qkTtolq.mp4', 2023, 8),
(32, 'Mortal Kombat', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving ..', 'movieposter/poster2.jpg', 'moviefile/Top_Gun__Maverick_2022_-_Mavericks_Test_Run_Scene___Movieclips_rscCAP6.mp4', 2021, 8),
(33, 'Rour', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving ..', 'movieposter/img1.jpg', 'moviefile/Top_Gun__Maverick_2022_-_Mavericks_Test_Run_Scene___Movieclips_3s0kVDH.mp4', 2013, 3),
(34, 'Dora', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving ..', 'movieposter/dora.jpeg', 'moviefile/bloody_9euqxOt.mp4', 2021, 6),
(35, 'Kabali', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving ..', 'movieposter/kabali.webp', 'moviefile/The_Witcher___Blaviken_Market_Fight_Scene_Geralt_Butchers_Renfris_Gang_S9Mk8ZA.mp4', 2021, 8),
(36, 'The Dark Knight', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving ..', 'movieposter/poster3.jpg', 'moviefile/Spider-Man_vs_Doctor_Octopus_-_Train_Fight_Scene_-_Spider-Man_2_2004_Movie_CLIP_HD.mp4', 2021, 3),
(37, 'Rowdy', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving ..', 'movieposter/img4.jpg', 'moviefile/Top_Gun__Maverick_2022_-_Mavericks_Test_Run_Scene___Movieclips_T1ECTYw.mp4', 2017, 3);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-01-27 06:08:05.715528', '1', 'Entertainment', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-01-27 06:08:54.474693', '1', 'rocky aur rani', 1, '[{\"added\": {}}]', 8, 1),
(3, '2024-01-27 06:10:59.138209', '1', 'carousel object (1)', 1, '[{\"added\": {}}]', 9, 1),
(4, '2024-01-27 06:13:50.047342', '2', 'Horror', 1, '[{\"added\": {}}]', 7, 1),
(5, '2024-01-27 06:13:51.914444', '2', 'rocky', 1, '[{\"added\": {}}]', 8, 1),
(6, '2024-01-27 10:52:38.972718', '1', 'rocky aur rani', 3, '', 8, 1),
(7, '2024-01-27 11:21:58.616352', '3', 'Rocky Aur Rani ki Prem Kahani', 1, '[{\"added\": {}}]', 8, 1),
(8, '2024-01-27 11:22:09.474524', '2', 'rocky', 3, '', 8, 1),
(9, '2024-01-27 11:26:27.715134', '4', 'Teri Baaton mein aisa uljha jiya', 1, '[{\"added\": {}}]', 8, 1),
(10, '2024-01-27 11:29:33.783093', '5', 'October', 1, '[{\"added\": {}}]', 8, 1),
(11, '2024-01-27 11:33:38.880773', '6', 'All About Eve', 1, '[{\"added\": {}}]', 8, 1),
(12, '2024-01-27 11:34:53.151995', '7', 'Gunday', 1, '[{\"added\": {}}]', 8, 1),
(13, '2024-01-27 11:35:22.030724', '3', 'Action', 1, '[{\"added\": {}}]', 7, 1),
(14, '2024-01-27 11:36:33.079955', '8', 'Saalar', 1, '[{\"added\": {}}]', 8, 1),
(15, '2024-01-27 11:38:00.588994', '9', 'Avengers EndGame', 1, '[{\"added\": {}}]', 8, 1),
(16, '2024-01-27 11:41:40.621037', '10', 'Sholey', 1, '[{\"added\": {}}]', 8, 1),
(17, '2024-01-27 11:43:35.006917', '11', 'Pathan', 1, '[{\"added\": {}}]', 8, 1),
(18, '2024-01-27 11:43:58.608353', '2', 'Horror', 3, '', 7, 1),
(19, '2024-01-27 11:47:03.413576', '4', 'Suspense', 1, '[{\"added\": {}}]', 7, 1),
(20, '2024-01-27 11:47:06.987586', '12', 'Ami subhash bolchi', 1, '[{\"added\": {}}]', 8, 1),
(21, '2024-01-27 11:49:10.008205', '13', 'Pink', 1, '[{\"added\": {}}]', 8, 1),
(22, '2024-01-27 11:56:14.269006', '14', 'Drishyam 2', 1, '[{\"added\": {}}]', 8, 1),
(23, '2024-01-27 11:58:59.497547', '2', 'carousel object (2)', 1, '[{\"added\": {}}]', 9, 1),
(24, '2024-01-27 11:59:07.659954', '3', 'carousel object (3)', 1, '[{\"added\": {}}]', 9, 1),
(25, '2024-01-27 11:59:15.696034', '4', 'carousel object (4)', 1, '[{\"added\": {}}]', 9, 1),
(26, '2024-01-27 12:00:58.257061', '3', 'Rocky Aur Rani ki Prem Kahani', 2, '[{\"changed\": {\"fields\": [\"Poster\"]}}]', 8, 1),
(27, '2024-01-27 12:04:32.162027', '14', 'Drishyam 2', 2, '[{\"changed\": {\"fields\": [\"Poster\"]}}]', 8, 1),
(28, '2024-01-28 14:34:57.718025', '4', 'Suspense', 2, '[{\"changed\": {\"fields\": [\"Background\"]}}]', 7, 1),
(29, '2024-01-28 14:35:21.156513', '3', 'Action', 2, '[{\"changed\": {\"fields\": [\"Background\"]}}]', 7, 1),
(30, '2024-01-28 14:35:27.485184', '1', 'Entertainment', 2, '[{\"changed\": {\"fields\": [\"Background\"]}}]', 7, 1),
(31, '2024-01-28 17:36:58.329546', '10', 'Sholey', 2, '[{\"changed\": {\"fields\": [\"Poster\"]}}]', 8, 1),
(32, '2024-01-28 17:37:39.961527', '5', 'October', 2, '[{\"changed\": {\"fields\": [\"Poster\"]}}]', 8, 1),
(33, '2024-01-28 17:39:17.793704', '5', 'Avengers Infinity War', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Description\"]}}]', 8, 1),
(34, '2024-01-28 17:40:46.619182', '10', 'Justice League', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Description\"]}}]', 8, 1),
(35, '2024-01-28 17:44:30.323740', '6', 'The Batman', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Description\", \"Poster\"]}}]', 8, 1),
(36, '2024-01-28 17:46:20.193893', '15', 'The Amazing Spiderman', 1, '[{\"added\": {}}]', 8, 1),
(37, '2024-01-28 17:49:31.466240', '16', 'Sholay', 1, '[{\"added\": {}}]', 8, 1),
(38, '2024-01-28 17:50:54.951073', '17', 'October', 1, '[{\"added\": {}}]', 8, 1),
(39, '2024-01-28 17:58:39.404219', '18', 'Roy', 1, '[{\"added\": {}}]', 8, 1),
(40, '2024-01-28 18:00:15.417270', '5', 'Thriller', 1, '[{\"added\": {}}]', 7, 1),
(41, '2024-01-28 18:27:51.717584', '19', 'Roketo', 1, '[{\"added\": {}}]', 8, 1),
(42, '2024-01-28 18:28:54.370196', '20', 'John Wick 2', 1, '[{\"added\": {}}]', 8, 1),
(43, '2024-01-28 18:31:00.367964', '21', 'Leo', 1, '[{\"added\": {}}]', 8, 1),
(44, '2024-01-28 18:34:33.951917', '6', 'Drama', 1, '[{\"added\": {}}]', 7, 1),
(45, '2024-01-28 18:35:00.360259', '22', 'Oppenheimer', 1, '[{\"added\": {}}]', 8, 1),
(46, '2024-01-28 18:35:59.297093', '23', 'Avatar', 1, '[{\"added\": {}}]', 8, 1),
(47, '2024-01-28 18:37:04.364188', '24', 'GrayMan', 1, '[{\"added\": {}}]', 8, 1),
(48, '2024-01-28 18:39:09.267769', '25', 'Scream', 1, '[{\"added\": {}}]', 8, 1),
(49, '2024-01-28 18:39:29.663055', '7', 'Horror', 1, '[{\"added\": {}}]', 7, 1),
(50, '2024-01-28 18:43:36.198788', '26', 'Top Gun Maverick', 1, '[{\"added\": {}}]', 8, 1),
(51, '2024-01-28 18:47:20.604171', '27', 'The Nun', 1, '[{\"added\": {}}]', 8, 1),
(52, '2024-01-28 18:49:59.018899', '28', 'The Exorcist', 1, '[{\"added\": {}}]', 8, 1),
(53, '2024-01-28 18:51:42.784636', '8', 'Mystery', 1, '[{\"added\": {}}]', 7, 1),
(54, '2024-01-28 18:53:11.424529', '29', 'Bloody Daddy', 1, '[{\"added\": {}}]', 8, 1),
(55, '2024-01-28 18:56:34.714453', '30', 'Antman', 1, '[{\"added\": {}}]', 8, 1),
(56, '2024-01-28 18:57:58.662169', '31', 'Animal', 1, '[{\"added\": {}}]', 8, 1),
(57, '2024-01-28 18:59:27.941573', '32', 'Mortal Kombat', 1, '[{\"added\": {}}]', 8, 1),
(58, '2024-01-28 19:01:43.070565', '33', 'Rour', 1, '[{\"added\": {}}]', 8, 1),
(59, '2024-01-28 19:02:23.629522', '3', 'carousel object (3)', 2, '[{\"changed\": {\"fields\": [\"Carousel\"]}}]', 9, 1),
(60, '2024-01-28 19:02:28.801007', '3', 'carousel object (3)', 2, '[]', 9, 1),
(61, '2024-01-28 19:02:35.595626', '4', 'carousel object (4)', 2, '[{\"changed\": {\"fields\": [\"Carousel\"]}}]', 9, 1),
(62, '2024-01-28 19:02:41.212729', '4', 'carousel object (4)', 2, '[]', 9, 1),
(63, '2024-01-28 19:02:53.419853', '3', 'carousel object (3)', 2, '[{\"changed\": {\"fields\": [\"Carousel\"]}}]', 9, 1),
(64, '2024-01-28 19:03:12.933394', '5', 'carousel object (5)', 1, '[{\"added\": {}}]', 9, 1),
(65, '2024-01-28 19:04:41.819809', '3', 'carousel object (3)', 2, '[{\"changed\": {\"fields\": [\"Carousel\"]}}]', 9, 1),
(66, '2024-01-28 19:06:13.251949', '3', 'carousel object (3)', 2, '[{\"changed\": {\"fields\": [\"Carousel\"]}}]', 9, 1),
(67, '2024-01-28 19:06:19.611746', '5', 'carousel object (5)', 2, '[{\"changed\": {\"fields\": [\"Carousel\"]}}]', 9, 1),
(68, '2024-01-28 19:07:58.801242', '5', 'carousel object (5)', 2, '[{\"changed\": {\"fields\": [\"Carousel\"]}}]', 9, 1),
(69, '2024-01-28 19:08:26.410613', '5', 'carousel object (5)', 2, '[{\"changed\": {\"fields\": [\"Carousel\"]}}]', 9, 1),
(70, '2024-01-28 19:09:33.517205', '34', 'Dora', 1, '[{\"added\": {}}]', 8, 1),
(71, '2024-01-28 19:10:22.727024', '35', 'Kabali', 1, '[{\"added\": {}}]', 8, 1),
(72, '2024-01-28 19:12:11.694254', '36', 'The Dark Knight', 1, '[{\"added\": {}}]', 8, 1),
(73, '2024-01-28 19:14:05.530767', '37', 'Rowdy', 1, '[{\"added\": {}}]', 8, 1),
(74, '2024-01-28 19:16:26.755902', '2', 'carousel object (2)', 2, '[{\"changed\": {\"fields\": [\"Carousel\"]}}]', 9, 1),
(75, '2024-01-28 19:16:34.749529', '2', 'carousel object (2)', 2, '[{\"changed\": {\"fields\": [\"Carousel\"]}}]', 9, 1),
(76, '2024-01-28 19:16:50.057809', '2', 'carousel object (2)', 2, '[{\"changed\": {\"fields\": [\"Carousel\"]}}]', 9, 1),
(77, '2024-01-28 19:17:11.702886', '4', 'carousel object (4)', 2, '[{\"changed\": {\"fields\": [\"Carousel\"]}}]', 9, 1),
(78, '2024-01-28 19:17:47.677860', '4', 'carousel object (4)', 3, '', 9, 1),
(79, '2024-01-28 19:18:26.581098', '5', 'carousel object (5)', 2, '[]', 9, 1),
(80, '2024-01-28 19:18:31.685977', '5', 'carousel object (5)', 3, '', 9, 1),
(81, '2024-01-28 19:19:16.057017', '6', 'carousel object (6)', 1, '[{\"added\": {}}]', 9, 1),
(82, '2024-01-28 19:19:38.499844', '7', 'carousel object (7)', 1, '[{\"added\": {}}]', 9, 1),
(83, '2024-01-28 19:20:47.739782', '7', 'carousel object (7)', 2, '[{\"changed\": {\"fields\": [\"Carousel\"]}}]', 9, 1),
(84, '2024-01-28 19:21:15.288677', '3', 'carousel object (3)', 2, '[{\"changed\": {\"fields\": [\"Carousel\"]}}]', 9, 1),
(85, '2024-01-28 19:21:27.962332', '6', 'carousel object (6)', 3, '', 9, 1),
(86, '2024-01-28 19:22:00.596129', '7', 'carousel object (7)', 2, '[{\"changed\": {\"fields\": [\"Carousel\"]}}]', 9, 1),
(87, '2024-01-28 19:22:56.842886', '3', 'carousel object (3)', 2, '[{\"changed\": {\"fields\": [\"Carousel\"]}}]', 9, 1),
(88, '2024-01-28 19:23:37.045413', '7', 'carousel object (7)', 2, '[{\"changed\": {\"fields\": [\"Carousel\"]}}]', 9, 1),
(89, '2024-01-28 19:24:19.685633', '3', 'carousel object (3)', 2, '[{\"changed\": {\"fields\": [\"Carousel\"]}}]', 9, 1),
(90, '2024-01-29 02:59:47.968689', '9', 'saikat', 3, '', 4, 1),
(91, '2024-01-29 02:59:47.972698', '4', 'sd', 3, '', 4, 1),
(92, '2024-01-29 02:59:47.975415', '10', 'tirtho', 3, '', 4, 1),
(93, '2024-01-29 03:09:09.837199', '5', 'Avengers Infinity War', 2, '[{\"changed\": {\"fields\": [\"Moviefile\"]}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(9, 'CometWeb', 'carousel'),
(7, 'CometWeb', 'movie_genres'),
(8, 'CometWeb', 'movie_list'),
(10, 'CometWeb', 'searches'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'CometWeb', '0001_initial', '2024-01-27 04:55:22.920802'),
(2, 'CometWeb', '0002_carousel', '2024-01-27 04:55:22.991112'),
(3, 'CometWeb', '0003_searches', '2024-01-27 04:55:23.003796'),
(4, 'contenttypes', '0001_initial', '2024-01-27 04:55:23.033457'),
(5, 'auth', '0001_initial', '2024-01-27 04:55:23.500318'),
(6, 'admin', '0001_initial', '2024-01-27 04:55:23.608634'),
(7, 'admin', '0002_logentry_remove_auto_add', '2024-01-27 04:55:23.614475'),
(8, 'admin', '0003_logentry_add_action_flag_choices', '2024-01-27 04:55:23.619513'),
(9, 'contenttypes', '0002_remove_content_type_name', '2024-01-27 04:55:23.709516'),
(10, 'auth', '0002_alter_permission_name_max_length', '2024-01-27 04:55:23.764430'),
(11, 'auth', '0003_alter_user_email_max_length', '2024-01-27 04:55:23.775438'),
(12, 'auth', '0004_alter_user_username_opts', '2024-01-27 04:55:23.782098'),
(13, 'auth', '0005_alter_user_last_login_null', '2024-01-27 04:55:23.827060'),
(14, 'auth', '0006_require_contenttypes_0002', '2024-01-27 04:55:23.829204'),
(15, 'auth', '0007_alter_validators_add_error_messages', '2024-01-27 04:55:23.834640'),
(16, 'auth', '0008_alter_user_username_max_length', '2024-01-27 04:55:23.846252'),
(17, 'auth', '0009_alter_user_last_name_max_length', '2024-01-27 04:55:23.859563'),
(18, 'auth', '0010_alter_group_name_max_length', '2024-01-27 04:55:23.878710'),
(19, 'auth', '0011_update_proxy_permissions', '2024-01-27 04:55:23.887499'),
(20, 'auth', '0012_alter_user_first_name_max_length', '2024-01-27 04:55:23.901643'),
(21, 'sessions', '0001_initial', '2024-01-27 04:55:23.934990'),
(22, 'CometWeb', '0004_movie_genres_background', '2024-01-28 14:32:16.824147');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0ksypdrey1tyjvcuzvwtcdh80dsgc8cf', '.eJxVjMEOwiAQRP-FsyFAFxCP3v0GsrCsVA1NSnsy_rtt0oNe5jDvzbxFxHWpce1ljiOJizDi9NslzM_SdkAPbPdJ5qkt85jkrsiDdnmbqLyuh_t3ULHXbR0QkBRpq63xijgBeTYetQOymomcAj9QZnAUAhSHGoYtFOKZA3vx-QLmQzf_:1rUHsk:aqQXQsXfPBwaHrNVi4zDHTSDRcDpdJ5ofc3X2TITNpI', '2024-02-12 03:00:22.497474'),
('1cxlbef4ozim1svonvo7sy4kmsy8yl0d', '.eJxVjMEOwiAQRP-FsyFAFxCP3v0GsrCsVA1NSnsy_rtt0oNe5jDvzbxFxHWpce1ljiOJizDi9NslzM_SdkAPbPdJ5qkt85jkrsiDdnmbqLyuh_t3ULHXbR0QkBRpq63xijgBeTYetQOymomcAj9QZnAUAhSHGoYtFOKZA3vx-QLmQzf_:1rTc0U:daWUXvnUj35Glv4p9IWlpGt19TFVlIvIBXeeCAZf3OU', '2024-02-10 06:17:34.123761'),
('2pfyesv8mtxpvukuq6wwq8mu3jk2zzte', '.eJxVjMsOwiAQRf-FtSFAebp07zeQGQakaiAp7cr479qkC93ec859sQjbWuM28hJnYmcm2el3Q0iP3HZAd2i3zlNv6zIj3xV-0MGvnfLzcrh_BxVG_dboEZUvVqJVCVHb4IKTMokyWV9I6SAcEZBFjcoZAy6RAjF5lQWGbNj7A-lNOAA:1rU94Y:zN-ljhzBfOVoTZdr8tV0kV28flL0BAzy9jfjYJmgfx8', '2024-02-11 17:35:58.912604'),
('4dggn7fmg354gksb177l9o2enhsb88bw', '.eJxVjMEOwiAQRP-FsyFAFxCP3v0GsrCsVA1NSnsy_rtt0oNe5jDvzbxFxHWpce1ljiOJizDi9NslzM_SdkAPbPdJ5qkt85jkrsiDdnmbqLyuh_t3ULHXbR0QkBRpq63xijgBeTYetQOymomcAj9QZnAUAhSHGoYtFOKZA3vx-QLmQzf_:1rU7Up:Vx-nxhWQFa4co7OOkSH_4BBFUgjPR-eLVgOJq2sF4Eo', '2024-02-11 15:54:59.088039'),
('593po1kqjtdiekhx9d6lkr9aa71eho9m', '.eJxVjMEOwiAQRP-FsyFAFxCP3v0GsrCsVA1NSnsy_rtt0oNe5jDvzbxFxHWpce1ljiOJizDi9NslzM_SdkAPbPdJ5qkt85jkrsiDdnmbqLyuh_t3ULHXbR0QkBRpq63xijgBeTYetQOymomcAj9QZnAUAhSHGoYtFOKZA3vx-QLmQzf_:1rU6Na:9bdTL5BtsYgy3j9AYTsXAAgQTNzCkpQVx7NI7HHBWSw', '2024-02-11 14:43:26.825777'),
('5x0fdr0i48unosog5dlzhjs0kk26lst0', '.eJxVjMsOwiAQRf-FtSFAebp07zeQGQakaiAp7cr479qkC93ec859sQjbWuM28hJnYmcm2el3Q0iP3HZAd2i3zlNv6zIj3xV-0MGvnfLzcrh_BxVG_dboEZUvVqJVCVHb4IKTMokyWV9I6SAcEZBFjcoZAy6RAjF5lQWGbNj7A-lNOAA:1rUHrM:VEeDsKekbNS4U1xFlmRB3efx9atee_1UcxesQlK4v08', '2024-02-12 02:58:56.568761'),
('6c51wxx9082e2asdbhsjib50i7n83tur', '.eJxVjMEOwiAQRP-FsyFAFxCP3v0GsrCsVA1NSnsy_rtt0oNe5jDvzbxFxHWpce1ljiOJizDi9NslzM_SdkAPbPdJ5qkt85jkrsiDdnmbqLyuh_t3ULHXbR0QkBRpq63xijgBeTYetQOymomcAj9QZnAUAhSHGoYtFOKZA3vx-QLmQzf_:1rTiGf:7nvz1epbErpXj47gxzpma_i_fQs2JDEcBCWiwz2t3dM', '2024-02-10 12:58:41.509989'),
('6urxvroosdmkgna8f6ujmsnsyts85ekz', '.eJxVjMEOwiAQRP-FsyFAFxCP3v0GsrCsVA1NSnsy_rtt0oNe5jDvzbxFxHWpce1ljiOJizDi9NslzM_SdkAPbPdJ5qkt85jkrsiDdnmbqLyuh_t3ULHXbR0QkBRpq63xijgBeTYetQOymomcAj9QZnAUAhSHGoYtFOKZA3vx-QLmQzf_:1rThyT:k626weSoBRgDVIB--91OevIfCk3K7KJPncEPr_pBVKk', '2024-02-10 12:39:53.918506'),
('79l4cfeq81by02hklxno4ve98ty2rjdp', '.eJxVjMEOwiAQRP-FsyFAFxCP3v0GsrCsVA1NSnsy_rtt0oNe5jDvzbxFxHWpce1ljiOJizDi9NslzM_SdkAPbPdJ5qkt85jkrsiDdnmbqLyuh_t3ULHXbR0QkBRpq63xijgBeTYetQOymomcAj9QZnAUAhSHGoYtFOKZA3vx-QLmQzf_:1rU6PW:EHDX1UuoPhCnte86eq8aY0jcoHdEVq2DNPVbTqt9fPQ', '2024-02-11 14:45:26.382806'),
('8a2duhbhtuhffb72ech56qcg1kr9854h', '.eJxVjMsOwiAQRf-FtSFAebp07zeQGQakaiAp7cr479qkC93ec859sQjbWuM28hJnYmcm2el3Q0iP3HZAd2i3zlNv6zIj3xV-0MGvnfLzcrh_BxVG_dboEZUvVqJVCVHb4IKTMokyWV9I6SAcEZBFjcoZAy6RAjF5lQWGbNj7A-lNOAA:1rUHwY:ng1NOwBF2uEs01Pb2j_qMnfZn0kb_4l8a_6kNu66960', '2024-02-12 03:04:18.386562'),
('9gcwatm4gktiz5q5sw1o3f25i6m2iq4h', '.eJxVjMEOwiAQRP-FsyFAFxCP3v0GsrCsVA1NSnsy_rtt0oNe5jDvzbxFxHWpce1ljiOJizDi9NslzM_SdkAPbPdJ5qkt85jkrsiDdnmbqLyuh_t3ULHXbR0QkBRpq63xijgBeTYetQOymomcAj9QZnAUAhSHGoYtFOKZA3vx-QLmQzf_:1rTkQw:CERVBfyYN30UnD1kKeVTWp9gZ1ZKSwn-vPUMQggOlog', '2024-02-10 15:17:26.925924'),
('a4qzntk1q59wzgkyor6d6ne92xbaywm8', '.eJxVjMEOwiAQRP-FsyFAFxCP3v0GsrCsVA1NSnsy_rtt0oNe5jDvzbxFxHWpce1ljiOJizDi9NslzM_SdkAPbPdJ5qkt85jkrsiDdnmbqLyuh_t3ULHXbR0QkBRpq63xijgBeTYetQOymomcAj9QZnAUAhSHGoYtFOKZA3vx-QLmQzf_:1rU7UA:G6VLFKyqnlDSSg5P5gLFV5ye6vvbCoG00-YfiNTTsJU', '2024-02-11 15:54:18.613524'),
('b6r6iocrqfxbogd9drlnvpikx4vsgs4m', '.eJxVjMsOwiAQRf-FtSFAebp07zeQGQakaiAp7cr479qkC93ec859sQjbWuM28hJnYmcm2el3Q0iP3HZAd2i3zlNv6zIj3xV-0MGvnfLzcrh_BxVG_dboEZUvVqJVCVHb4IKTMokyWV9I6SAcEZBFjcoZAy6RAjF5lQWGbNj7A-lNOAA:1rTgEC:grYGSQP7EsORrLAnC3EaGF6UWN0DqD4_xiKD9UihvcM', '2024-02-10 10:48:00.581043'),
('bnmu23wnbcxalb7yt2ukyucnu2kejw99', '.eJxVjEEOwiAURO_C2hDk0xZduu8ZyAemUjWQlHZlvLs06UKX8-bNvIXjbU1uq1jcHMVVnJU4_ULP4Ym8N_HB-V5kKHldZi93RR5tlWOJeN0O9-8gcU1tPcQw6F73plPsLRSDJkRlWwbsBArQHgiWSZE1ZBC6i-GGFRttSHy-GsE4gw:1rU7OC:UfcVIlwQgE7bi6JeCLPxlhumZmAslR67HOR9LrvefKs', '2024-02-11 15:48:08.891933'),
('cr6mdo12qe5g4tk4svbhvvyi6ts4c181', '.eJxVjDsOwjAQBe_iGlm7-BNMSZ8zROv1BgeQLcVJhbg7spQC2jcz760m2rc87U3WaUnqqoI6_W6R-Cmlg_Sgcq-aa9nWJequ6IM2PdYkr9vh_h1karnXCc_syANaA4MFsgFBEC8YxEWaQxILKTAIBzAs4hgH72k2Fo11Xn2-0803YQ:1rTlDV:MwhyU6XBC8bVDiQAAZgtJmwmo5fcRqkMadHMxigY66k', '2024-02-10 16:07:37.914985'),
('en9bn8aunbqeflimnwxdea1u7fvae83x', '.eJxVjEEOwiAURO_C2hDk0xZduu8ZyAemUjWQlHZlvLs06UKX8-bNvIXjbU1uq1jcHMVVnJU4_ULP4Ym8N_HB-V5kKHldZi93RR5tlWOJeN0O9-8gcU1tPcQw6F73plPsLRSDJkRlWwbsBArQHgiWSZE1ZBC6i-GGFRttSHy-GsE4gw:1rU6MS:VYSqrTLSaDiu4_a8FjlFPxxC88ofmJTIsyk9dQLwSa4', '2024-02-11 14:42:16.747249'),
('f05sogr04q7m6ylo0yk6bim6ilgnimfu', '.eJxVjMEOwiAQRP-FsyFAFxCP3v0GsrCsVA1NSnsy_rtt0oNe5jDvzbxFxHWpce1ljiOJizDi9NslzM_SdkAPbPdJ5qkt85jkrsiDdnmbqLyuh_t3ULHXbR0QkBRpq63xijgBeTYetQOymomcAj9QZnAUAhSHGoYtFOKZA3vx-QLmQzf_:1rU6O3:Xj0ocApBpR5nxDkmiGf6CGoNzhbPbaBbFZCwX2yU4Vc', '2024-02-11 14:43:55.415231'),
('h8dsojkddxeeot7a1ieboia2udp4cfn0', '.eJxVjMEOwiAQRP-FsyFAFxCP3v0GsrCsVA1NSnsy_rtt0oNe5jDvzbxFxHWpce1ljiOJizDi9NslzM_SdkAPbPdJ5qkt85jkrsiDdnmbqLyuh_t3ULHXbR0QkBRpq63xijgBeTYetQOymomcAj9QZnAUAhSHGoYtFOKZA3vx-QLmQzf_:1rUAnG:vuIHOX5ByGEsBq-NWAKjg9Dy4Qyba1jRbRq_PKu6bYA', '2024-02-11 19:26:14.094265'),
('i70friryto05o73zns6bgmm9m63uxz3s', '.eJxVjMEOwiAQRP-FsyFAFxCP3v0GsrCsVA1NSnsy_rtt0oNe5jDvzbxFxHWpce1ljiOJizDi9NslzM_SdkAPbPdJ5qkt85jkrsiDdnmbqLyuh_t3ULHXbR0QkBRpq63xijgBeTYetQOymomcAj9QZnAUAhSHGoYtFOKZA3vx-QLmQzf_:1rU6OR:K-j33JKIvFxvXnzWKUXdIJKk7oNaAF7B8dQ8X7V_AOY', '2024-02-11 14:44:19.998438'),
('ldvjeaqt3b5cknd1xrdt8xwd96vno7xr', '.eJxVjMEOwiAQRP-FsyFAFxCP3v0GsrCsVA1NSnsy_rtt0oNe5jDvzbxFxHWpce1ljiOJizDi9NslzM_SdkAPbPdJ5qkt85jkrsiDdnmbqLyuh_t3ULHXbR0QkBRpq63xijgBeTYetQOymomcAj9QZnAUAhSHGoYtFOKZA3vx-QLmQzf_:1rU6Mx:C5HjFTkjM1wL-yMU_xO1pDSxehSFm5qry_01NsNwqyM', '2024-02-11 14:42:47.395117'),
('m78tbh5ohq97nkv54exyuai387a5tuv6', '.eJxVjEEOwiAURO_C2hDk0xZduu8ZyAemUjWQlHZlvLs06UKX8-bNvIXjbU1uq1jcHMVVnJU4_ULP4Ym8N_HB-V5kKHldZi93RR5tlWOJeN0O9-8gcU1tPcQw6F73plPsLRSDJkRlWwbsBArQHgiWSZE1ZBC6i-GGFRttSHy-GsE4gw:1rU6M7:vkMAuLCHG693pWuXvfSb69fvJwwDu6Qu8ILIUpNN2i4', '2024-02-11 14:41:55.100721'),
('mtsrdo0tiwfpigz06ern1h8u5qrpgqfb', '.eJxVjMEOwiAQRP-FsyFAFxCP3v0GsrCsVA1NSnsy_rtt0oNe5jDvzbxFxHWpce1ljiOJizDi9NslzM_SdkAPbPdJ5qkt85jkrsiDdnmbqLyuh_t3ULHXbR0QkBRpq63xijgBeTYetQOymomcAj9QZnAUAhSHGoYtFOKZA3vx-QLmQzf_:1rUKwb:1ZENK_dBp_VAYlCLRQvx78ZJQO10xFX3mXMU5arPEiQ', '2024-02-12 06:16:33.042741'),
('nzyd6krj348uo98akp0u3its64k9jvud', '.eJxVjEsOwiAUAO_C2hCgfF267xnIg_cqVQNJaVfGuxuSLnQ7M5k3i3DsJR6dtrgiuzLNLr8sQX5SHQIfUO-N51b3bU18JPy0nc8N6XU7279BgV7GNrgMoDDBFIIF75XBEDKZxTsvtZRkJTqJNgk9gYfsAwlpkKYlWaGIfb7kCDfh:1rTfNv:OlWWh7_uDcGx4VGT3zFUMFBEJmKHZeHdJLIlOstvWdo', '2024-02-10 09:53:59.712993'),
('oj6m318y9dns08i1j3hfpy9zriww641h', '.eJxVjEEOwiAURO_C2hDk0xZduu8ZyAemUjWQlHZlvLs06UKX8-bNvIXjbU1uq1jcHMVVnJU4_ULP4Ym8N_HB-V5kKHldZi93RR5tlWOJeN0O9-8gcU1tPcQw6F73plPsLRSDJkRlWwbsBArQHgiWSZE1ZBC6i-GGFRttSHy-GsE4gw:1rU6K4:owS15IsGPKSLYbcPCV8-3J35Eue_rIE3qXvT4uLj7gQ', '2024-02-11 14:39:48.696791'),
('pnoqx3hwyqgvecq5dd7a5fvmmjqctuy5', '.eJxVjMEOwiAQRP-FsyFAFxCP3v0GsrCsVA1NSnsy_rtt0oNe5jDvzbxFxHWpce1ljiOJizDi9NslzM_SdkAPbPdJ5qkt85jkrsiDdnmbqLyuh_t3ULHXbR0QkBRpq63xijgBeTYetQOymomcAj9QZnAUAhSHGoYtFOKZA3vx-QLmQzf_:1rThjB:tXnZ-f8y19hOLV0LxYBAE5Sf9dqZ5-V4EYviEHqEPSA', '2024-02-10 12:24:05.081315'),
('r8cu5pzqbjniig14acjqbk91nwj1sliz', '.eJxVjMEOwiAQRP-FsyFAFxCP3v0GsrCsVA1NSnsy_rtt0oNe5jDvzbxFxHWpce1ljiOJizDi9NslzM_SdkAPbPdJ5qkt85jkrsiDdnmbqLyuh_t3ULHXbR0QkBRpq63xijgBeTYetQOymomcAj9QZnAUAhSHGoYtFOKZA3vx-QLmQzf_:1rTiB7:UJbpvnHhkzyQVuBKb7k-j-5NR_1vGgIw_UFqjFemUxc', '2024-02-10 12:52:57.393854'),
('s22pgsdmxg2acwmt5ind91sr4tpevb3l', '.eJxVjMsOwiAQRf-FtSFAebp07zeQGQakaiAp7cr479qkC93ec859sQjbWuM28hJnYmcm2el3Q0iP3HZAd2i3zlNv6zIj3xV-0MGvnfLzcrh_BxVG_dboEZUvVqJVCVHb4IKTMokyWV9I6SAcEZBFjcoZAy6RAjF5lQWGbNj7A-lNOAA:1rTamk:wceHyWI7hpLtqE45udumY0iEHbNFp1m1dS13YmH63ew', '2024-02-10 04:59:18.844282'),
('shs50tky93k3xu7uhccdjho9ixaxez9l', '.eJxVjMsOwiAQRf-FtSFAebp07zeQGQakaiAp7cr479qkC93ec859sQjbWuM28hJnYmcm2el3Q0iP3HZAd2i3zlNv6zIj3xV-0MGvnfLzcrh_BxVG_dboEZUvVqJVCVHb4IKTMokyWV9I6SAcEZBFjcoZAy6RAjF5lQWGbNj7A-lNOAA:1rU6EZ:fHOe-RU-FvpaJ22jyRD-kg7tEdj4ayvf7y9or75JUCw', '2024-02-11 14:34:07.688969'),
('v1j22rnscdqqcgabahb8ifdbjvvf8biv', '.eJxVjMEOwiAQRP-FsyFAFxCP3v0GsrCsVA1NSnsy_rtt0oNe5jDvzbxFxHWpce1ljiOJizDi9NslzM_SdkAPbPdJ5qkt85jkrsiDdnmbqLyuh_t3ULHXbR0QkBRpq63xijgBeTYetQOymomcAj9QZnAUAhSHGoYtFOKZA3vx-QLmQzf_:1rThhd:dkS2y8EHS2gU0JjXzwe0CSzPk015wsEB43jYbXqb0_s', '2024-02-10 12:22:29.769536'),
('viwag2j9wmqwb64y95lzwyomg64abs2x', '.eJxVjMEOwiAQRP-FsyFAFxCP3v0GsrCsVA1NSnsy_rtt0oNe5jDvzbxFxHWpce1ljiOJizDi9NslzM_SdkAPbPdJ5qkt85jkrsiDdnmbqLyuh_t3ULHXbR0QkBRpq63xijgBeTYetQOymomcAj9QZnAUAhSHGoYtFOKZA3vx-QLmQzf_:1rU7O2:gfd2pPI6hOHqko8uZNxxfSXol_xQQvESbAxUIpGVGFM', '2024-02-11 15:47:58.117394'),
('w32at6hiz7il81lm4ovxzlqf478z4tqd', '.eJxVjEEOwiAURO_C2hDk0xZduu8ZyAemUjWQlHZlvLs06UKX8-bNvIXjbU1uq1jcHMVVnJU4_ULP4Ym8N_HB-V5kKHldZi93RR5tlWOJeN0O9-8gcU1tPcQw6F73plPsLRSDJkRlWwbsBArQHgiWSZE1ZBC6i-GGFRttSHy-GsE4gw:1rU6LC:zZ3s7V0UJCOfzhv8hx17rnZDO20Wvk0zkvw8u14hPdg', '2024-02-11 14:40:58.282121'),
('ymsg6p23vw7p0u99rf0jw7s2x0u13ik1', '.eJxVjMEOwiAQRP-FsyFAFxCP3v0GsrCsVA1NSnsy_rtt0oNe5jDvzbxFxHWpce1ljiOJizDi9NslzM_SdkAPbPdJ5qkt85jkrsiDdnmbqLyuh_t3ULHXbR0QkBRpq63xijgBeTYetQOymomcAj9QZnAUAhSHGoYtFOKZA3vx-QLmQzf_:1rThgO:aL5p_RaN1ZTTKGpbNCS84Unh5yNNp_LEic8TPTa_g4k', '2024-02-10 12:21:12.516625'),
('yv8yiulnpq2qj5bvyxg08muv2zlgyosv', '.eJxVjMsOwiAQRf-FtSFAebp07zeQGQakaiAp7cr479qkC93ec859sQjbWuM28hJnYmcm2el3Q0iP3HZAd2i3zlNv6zIj3xV-0MGvnfLzcrh_BxVG_dboEZUvVqJVCVHb4IKTMokyWV9I6SAcEZBFjcoZAy6RAjF5lQWGbNj7A-lNOAA:1rU9s1:DQ9pkfA2nxbkB2SwXKGp5yAcXKGxScVZDix76qNCC_g', '2024-02-11 18:27:05.663898');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_searches`
--
ALTER TABLE `all_searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `cometweb_carousel`
--
ALTER TABLE `cometweb_carousel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CometWeb_carousel_carousel_id_6d6ad47e_fk_CometWeb_movie_list_id` (`carousel_id`);

--
-- Indexes for table `cometweb_movie_genres`
--
ALTER TABLE `cometweb_movie_genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cometweb_movie_list`
--
ALTER TABLE `cometweb_movie_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CometWeb_movie_list_genres_id_34c1dbf0_fk_CometWeb_` (`genres_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_searches`
--
ALTER TABLE `all_searches`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cometweb_carousel`
--
ALTER TABLE `cometweb_carousel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cometweb_movie_genres`
--
ALTER TABLE `cometweb_movie_genres`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cometweb_movie_list`
--
ALTER TABLE `cometweb_movie_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `cometweb_carousel`
--
ALTER TABLE `cometweb_carousel`
  ADD CONSTRAINT `CometWeb_carousel_carousel_id_6d6ad47e_fk_CometWeb_movie_list_id` FOREIGN KEY (`carousel_id`) REFERENCES `cometweb_movie_list` (`id`);

--
-- Constraints for table `cometweb_movie_list`
--
ALTER TABLE `cometweb_movie_list`
  ADD CONSTRAINT `CometWeb_movie_list_genres_id_34c1dbf0_fk_CometWeb_` FOREIGN KEY (`genres_id`) REFERENCES `cometweb_movie_genres` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
