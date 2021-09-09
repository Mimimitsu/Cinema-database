-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 25, 2021 at 04:01 AM
-- Server version: 5.7.34-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_sys`
--

-- --------------------------------------------------------

--
-- Table structure for table `acounting`
--

CREATE TABLE `acounting` (
  `employee_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acounting`
--

INSERT INTO `acounting` (`employee_ID`) VALUES
(153989),
(162402),
(231469),
(380086),
(386158),
(477616),
(539712);

-- --------------------------------------------------------

--
-- Table structure for table `cinemas`
--

CREATE TABLE `cinemas` (
  `cinema_ID` int(10) NOT NULL,
  `address` varchar(120) NOT NULL,
  `cinema_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cinemas`
--

INSERT INTO `cinemas` (`cinema_ID`, `address`, `cinema_name`) VALUES
(10676, '48 Sunset Drive,ARAMAC', ' The White Flare Opera House'),
(12024, '45 Woodwark Crescent,SILVER VALLEY', 'The Image Theater'),
(12198, '68 McDowall Street,COES CREEK', 'The Patriot Theatre'),
(16493, '88 Bapaume Road,OMAN AMA', 'The Grand Fountain Theatre'),
(21941, '95 Lowe Street,MORABY', 'The Sapphire Theatre'),
(25929, '70 Railway Street,EVANSLEA', 'The Sunset Opera House'),
(26434, '97 Mt Berryman Road,CRESSBROOK CREEK', 'The Phoenix Cinema'),
(27671, '37 Passage Avenue,YAM ISLAND', 'The Monument Theater'),
(29106, '70 Mt Berryman Road,GLENAVEN', 'The Capital Assembly Hall'),
(30130, '29 Chapel Close,CAIRNS NORTH', 'The Dreamland Amphitheater'),
(30172, '81 Brentwood Drive,HURRICANE', 'The Emerald Cinema'),
(31435, '49 Begley Street,COOKTOWN', 'The Guardian Cinema'),
(42367, '34 Brentwood Drive,LAKELAND', 'The Ellipse Assembly Hall'),
(43175, '65 Ronald Crescent,MOUNT ALMA', 'The Vision Theatre'),
(43999, '68 Shirley Street,COOMERA', 'The Harmony Cinema'),
(45619, '12 Martens Place,BULIMBA', 'The Prism Theatre'),
(46649, '56 Hunter Street,TOOWOOMBA SOUTH', 'The Fortune Concert Hall'),
(46799, '23 Bayview Close,MOUNT MORGAN', 'The Infinity Concert Hall'),
(49413, '78 Seninis Road,TOWNSVILLE DC', 'The Major Cinema'),
(50969, '10 Derry Street,NORLEY', 'The Golden Gate Concert Hall'),
(52279, '8 Old Gayndah Road,TINANA SOUTH', 'The Paradise Opera House'),
(53771, '49 Begley Street,COOKTOWN', 'The Dominion Theatre'),
(56767, '10 South Molle Boulevard,NICHOLSON', 'The Nebula Theater'),
(64129, '24 Woodwark Crescent,MUNDERRA', 'The Ecstasy Cinema'),
(69870, '73 Goebels Road,KENTVILLE', 'The Unison Theater'),
(71350, '97 Hillsdale Road,ARAMARA', 'The Royal Hall Assembly Hall'),
(72604, '65 Treasure Island Avenue,BURLEIGH DC', 'The Angel Opera House'),
(81988, '78 Bapaume Road,RAVENSBOURNE', 'The Galaxy Theater'),
(89124, '95 Creek Street,PIRRINUAN', 'The Exalted Amphitheater'),
(96443, '33 Bayview Close,ST LAWRENCE', 'The Lunar Cinema');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_ID` int(10) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `employee_phone_number` int(10) NOT NULL,
  `cinema_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_ID`, `employee_name`, `gender`, `employee_phone_number`, `cinema_ID`) VALUES
(153989, 'Jack', 'M', 70260337, 49413),
(162402, 'Diana', 'F', 47978356, 56767),
(193819, 'Benjamin', 'M', 26240422, 12198),
(214352, 'Theresa', 'F', 31955389, 50969),
(231469, 'Ralph', 'M', 31628028, 30130),
(263480, 'Daniel', 'M', 70151081, 12024),
(301576, 'Wayne', 'M', 70123193, 46649),
(335732, 'Brenda', 'F', 48081482, 26434),
(380086, 'Carol', 'F', 21633600, 42367),
(386158, 'Melissa', 'F', 21660537, 29106),
(388642, 'Ruby', 'F', 42323165, 30172),
(408351, 'Diane', 'F', 21579367, 31435),
(426038, 'Joan', 'F', 21663768, 96443),
(428945, 'Joe', 'M', 21990421, 25929),
(441771, 'Cheryl', 'F', 21528893, 52279),
(474599, 'Maria', 'F', 42366855, 43175),
(477253, 'Anne', 'F', 60563513, 45619),
(477616, 'Frances', 'F', 21081997, 89124),
(499687, 'Patrick', 'M', 31981269, 43999),
(528509, 'Paula', 'F', 25253176, 27671),
(539712, 'Nancy', 'F', 22933651, 64129),
(560455, 'Carolyn', 'F', 23988287, 71350),
(622406, 'Thomas', 'M', 31467936, 72604),
(677509, 'Lois', 'F', 30357284, 46799),
(683826, 'Roger', 'M', 20649731, 16493),
(890290, 'Julia', 'F', 42393910, 21941),
(912990, 'Joshua', 'M', 21727993, 10676),
(940761, 'Brenda', 'F', 22594549, 53771),
(969580, 'Matthew', 'M', 23697276, 81988),
(979607, 'Carol', 'F', 22528342, 69870);

-- --------------------------------------------------------

--
-- Table structure for table `engineer`
--

CREATE TABLE `engineer` (
  `employee_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `engineer`
--

INSERT INTO `engineer` (`employee_ID`) VALUES
(263480),
(335732),
(386158),
(388642),
(426038),
(428945),
(474599),
(477253),
(560455),
(683826),
(969580),
(979607);

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `employee_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`employee_ID`) VALUES
(193819),
(408351),
(428945),
(499687),
(677509),
(940761);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_ID` int(10) NOT NULL,
  `detail` varchar(350) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `release_date` date DEFAULT NULL,
  `duration` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_ID`, `detail`, `name`, `release_date`, `duration`) VALUES
(21052822, 'Following the events at home, the Abbott family now face the terrors of the outside world. Forced to venture into the unknown, they realize the creatures that hunt by sound are not the only threats lurking beyond the sand path.', 'A Quiet Place Part II', '2021-05-28', 97),
(21060410, 'The Warrens investigate a murder that may be linked to a demonic possession.', 'The Conjuring: The Devil Made Me Do It ', '2021-06-04', 112),
(21061633, 'The bodyguard Michael Bryce continues his friendship with assassin Darius Kincaid as they try to save Darius\'s wife Sonia.', 'Hitman\'s Wife\'s Bodyguard', '2021-06-16', 122),
(21061841, 'THE SPARKS BROTHERS, is a musical odyssey through five weird and wonderful decades with Ron and Russell Mael celebrating the inspiring legacy of Sparks.', 'The Sparks Brothers', '2021-06-18', 135),
(21070252, 'All the rules are broken as a sect of lawless marauders decides that the annual Purge does not stop at daybreak and instead should never end.', 'The Forever Purge', '2021-07-02', 89),
(21071047, 'NBA superstar LeBron James teams up with Bugs Bunny and the rest of the Looney Tunes for this long-awaited sequel.', 'Space Jam: A New Legacy', '2021-07-10', 129),
(21073017, 'A fantasy re-telling of the medieval story of Sir Gawain and the Green Knight.', 'The Green Knight ', '2021-07-30', 104),
(21080654, 'Supervillains Harley Quinn, Bloodsport, Peacemaker and a collection of nutty cons at Belle Reve prison join the super-secret, super-shady Task Force X as they are dropped off at the remote, enemy-infused island of Corto Maltese.', 'The Suicide Squad', '2021-08-06', 114),
(21081457, 'A bank teller discovers that he\'s actually an NPC inside a brutal, open world video game.', 'Free Guy', '2021-08-14', 135),
(21082722, 'A \"spiritual sequel\" to the horror film Candyman (1992) that returns to the now-gentrified Chicago neighborhood where the legend began.', 'Candyman', '2021-08-27', 103),
(21090212, 'The movie, based on Marvel Comics, will focus on Shang-Chi; \'The Master of Kung-Fu\'.', 'Shang-Chi and the Legend of the Ten Rings', '2021-09-02', 137),
(21091774, 'The Templeton brothers have become adults and drifted away from each other, but a new boss baby with a cutting-edge approach is about to bring them together again - and inspire a new family business', 'The Boss Baby: Family Business', '2021-09-17', 117),
(21092496, 'Sequel to the 2018 film \'Venom\'.', 'Venom: Let There Be Carnage', '2021-09-24', 100),
(21100119, 'Feature adaptation of Frank Herbert\'s science fiction novel, about the son of a noble family entrusted with the protection of the most valuable asset and most vital element in the galaxy.', 'Dune', '2021-10-01', 131),
(21100720, 'James Bond has left active service. His peace is short-lived when Felix Leiter, an old friend from the CIA, turns up asking for help, leading Bond onto the trail of a mysterious villain armed with dangerous new technology.', 'No Time to Die', '2021-10-07', 163),
(21102270, 'A young girl, passionate about fashion design, is mysteriously able to enter the 1960s where she encounters her idol, a dazzling wannabe singer. But 1960s London is not what it seems, and time seems to fall apart with shady consequences.', 'Last Night in Soho', '2021-10-22', 82),
(21102910, 'In an isolated Oregon town, a middle-school teacher and her sheriff brother become embroiled with her enigmatic student, whose dark secrets lead to terrifying encounters with a legendary ancestral creature who came before them.', 'Antlers', '2021-10-29', 99),
(21110500, 'The saga of the Eternals, a race of immortal beings who lived on Earth and shaped its history and civilizations.', 'Eternals', '2021-11-05', 112),
(21112584, 'Set in 1998, this \'Resident Evil\' origin story explains the secrets of the Spencer Mansion and Raccoon City.', 'Resident Evil: Welcome to Raccoon City', '2021-11-25', 149),
(21121052, 'An adaptation of the 1957 musical, West Side Story explores forbidden love and the rivalry between the Jets and the Sharks, two teenage street gangs of different ethnic backgrounds.', 'West Side Story', '2021-12-10', 96),
(21121700, 'A continuation of Spider-Man Far From Home', 'Spider-Man: No Way Home', '2021-12-17', 136),
(22011742, 'When a top-secret weapon falls into mercenary hands, a wild card CIA agent joins forces with three international agents on a lethal mission to retrieve it, while staying a step ahead of a mysterious woman who\'s tracking their every move.', 'The 355', '2022-01-07', 95),
(22012870, 'Biochemist Michael Morbius tries to cure himself of a rare blood disease, but he inadvertently infects himself with a form of vampirism instead.', 'Morbius', '2022-01-28', 85),
(22020430, 'The birth of Batman (6 pieces) at the beginning of its birth, Batman was not different from the popular novels with detective themes at that time except wearing bat clothes. He is not so much a hero as a detective.', 'The Batman', '2022-03-04', 92),
(22021166, 'While on vacation on the Nile, Hercule Poirot must investigate the murder of a young heiress.', 'Death on the Nile', '2022-02-11', 136),
(22021835, 'The story is a prequel to the games, starring Holland as a younger Drake, showing us details of how he came to meet and befriend Sully.', 'Uncharted ', '2022-02-18', 121),
(22032584, 'Sequel to the 2016 Marvel film \'Doctor Strange\'.', 'Doctor Strange in the Multiverse of Madness', '2022-03-25', 87),
(22040812, 'Set in Iceland at the turn of the 10th century, a Nordic prince sets out on a mission of revenge after his father is murdered.', 'The Northman', '2022-04-08', 129),
(22040888, 'After settling in Green Hills, Sonic is ready for more freedom, and Tom and Maddie agree to leave him home while they go on vacation. But, no sooner are they gone, when Dr. Robotnik comes back, this time with a new partner, Knuckles, in search for an emerald that has the power to both build and destroy civilizations. ', 'Sonic the Hedgehog 2', '2022-04-08', 132),
(22050642, 'The sequel to Thor: Ragnarok and the fourth movie in the Thor saga.', 'Thor: Love and Thunder', '2022-05-06', 105);

-- --------------------------------------------------------

--
-- Table structure for table `movies_movie_stars`
--

CREATE TABLE `movies_movie_stars` (
  `movie_ID` int(10) NOT NULL,
  `movie_stars` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies_movie_stars`
--

INSERT INTO `movies_movie_stars` (`movie_ID`, `movie_stars`) VALUES
(21052822, 'Emily Blunt, Millicent Simmonds, Cillian Murphy'),
(21060410, 'Patrick Wilson, Vera Farmiga, Ruairi O\'Connor'),
(21061633, 'Ryan Reynolds, Frank Grillo, Samuel L. Jackson'),
(21061841, 'Ron Mael, Russell Mael, Beck '),
(21070252, 'Ana de la Reguera, Josh Lucas, Cassidy Freeman'),
(21071047, 'LeBron James, Zendaya, Sonequa Martin-Green'),
(21073017, 'Dev Patel, Alicia Vikander, Joel Edgerton'),
(21080654, 'Margot Robbie, Idris Elba, John Cena'),
(21081457, 'Ryan Reynolds, Jodie Comer, Taika Waititi'),
(21082722, 'Yahya Abdul-Mateen II, Teyonah Parris, Nathan Stewart-Jarrett '),
(21090212, 'Simu Liu, Awkwafina, Tony Chiu-Wai Leung '),
(21091774, 'James Marsden, Jeff Goldblum, Lisa Kudrow'),
(21092496, 'Tom Hardy, Michelle Williams, Stephen Graham'),
(21100119, 'Timothée Chalamet, Rebecca Ferguson, Zendaya '),
(21100720, 'Daniel Craig, Ana de Armas, Rami Malek '),
(21102270, 'Jessie Mei Li, Anya Taylor-Joy, Matt Smith'),
(21102910, 'Keri Russell, Jesse Plemons, Jeremy T. Thomas'),
(21110500, 'Angelina Jolie, Richard Madden, Salma Hayek '),
(21112584, 'Kaya Scodelario, Robbie Amell, Hannah John-Kamen '),
(21121700, 'Angourie Rice, Tom Holland, Zendaya '),
(22011742, 'Jessica Chastain, Lupita Nyong\'o, Diane Kruger'),
(22012870, 'Archie Renaux, Jared Leto, Matt Smith '),
(22020430, 'Andy Serkis, Robert Pattinson, Colin Farrell'),
(22021166, 'Kenneth Branagh, Gal Gadot, Tom Bateman'),
(22021835, 'Tom Holland, Mark Wahlberg, Antonio Banderas'),
(22032584, 'Rachel McAdams, Elizabeth Olsen, Benedict Cumberbatch'),
(22040812, 'Anya Taylor-Joy, Alexander Skarsgård, Nicole Kidman'),
(22040888, 'Jim Carrey, James Marsden, Ben Schwartz'),
(22050642, 'Chris Hemsworth, Karen Gillan, Matt Damon');

-- --------------------------------------------------------

--
-- Table structure for table `movies_type`
--

CREATE TABLE `movies_type` (
  `movie_ID` int(10) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies_type`
--

INSERT INTO `movies_type` (`movie_ID`, `type`) VALUES
(21052822, 'Drama, Horror, Sci-Fi '),
(21060410, 'Horror, Mystery, Thriller'),
(21061633, 'Action, Comedy, Crime'),
(21061841, 'Documentary, Music '),
(21070252, 'Action, Horror, Sci-Fi '),
(21071047, 'Animation, Adventure, Comedy'),
(21073017, ' Adventure, Drama, Fantasy'),
(21080654, 'Action, Adventure, Comedy'),
(21081457, 'Action, Comedy, Sci-Fi'),
(21082722, 'Horror, Thriller '),
(21090212, 'Action, Adventure, Fantasy'),
(21091774, ' Animation, Adventure, Comedy'),
(21092496, 'Action, Sci-Fi, Thriller '),
(21100119, ' Adventure, Drama, Sci-Fi'),
(21100720, 'Action, Adventure, Thriller '),
(21102270, 'Drama, Horror, Thriller'),
(21102910, 'Horror, Mystery '),
(21110500, 'Action, Adventure, Drama '),
(21112584, 'Action, Horror, Mystery '),
(21121052, 'Crime, Drama, Musical'),
(21121700, 'Action, Adventure, Sci-Fi'),
(22011742, ' Action, Thriller'),
(22012870, 'Action, Adventure, Drama '),
(22020430, 'Action, Crime, Drama'),
(22021166, 'Crime, Drama, Mystery'),
(22021835, 'Action, Adventure'),
(22032584, 'Action, Adventure, Fantasy '),
(22040812, 'Action, Adventure, Drama'),
(22040888, 'Animation, Action, Adventure '),
(22050642, 'Action, Adventure, Fantasy ');

-- --------------------------------------------------------

--
-- Table structure for table `movie_halls`
--

CREATE TABLE `movie_halls` (
  `hall_ID` int(10) NOT NULL,
  `hall_name` varchar(20) NOT NULL,
  `total_seats_number` int(3) NOT NULL,
  `cinema_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_halls`
--

INSERT INTO `movie_halls` (`hall_ID`, `hall_name`, `total_seats_number`, `cinema_ID`) VALUES
(1, 'Alpha', 50, 46799),
(2, 'Beta', 50, 53771),
(3, 'Charlie', 50, 25929),
(4, 'Delta', 50, 31435),
(5, 'Echo', 50, 12198),
(6, 'Fox', 50, 43999),
(7, 'Garry', 50, 64129),
(8, 'Harry', 50, 42367),
(9, 'Island', 50, 89124),
(10, 'Jack', 50, 56767);

-- --------------------------------------------------------

--
-- Table structure for table `projectionist`
--

CREATE TABLE `projectionist` (
  `employee_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectionist`
--

INSERT INTO `projectionist` (`employee_ID`) VALUES
(214352),
(301576),
(388642),
(426038),
(441771),
(477616),
(528509),
(622406),
(890290),
(912990),
(969580),
(979607);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `user_ID` int(10) NOT NULL,
  `rating_ID` int(10) NOT NULL,
  `context` varchar(300) NOT NULL,
  `movie_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`user_ID`, `rating_ID`, `context`, `movie_ID`) VALUES
(17204422, 13216210, 'You\'re such a wonderful person — but you got problems. I can stare for a thousand years. What you like is in the limo.', 21080654),
(17612229, 47405621, 'Hey, that\'s far out so you heard him too! Don\'t pick fights with the bullies or the cads. I found my teacher crouching in his overalls.', 21073017),
(20773535, 32123440, 'Look at those cavemen go. Don\'t pick fights with the bullies or the cads.', 21090212),
(21885820, 58594273, 'You\'re too old to lose it, too young to choose it. Far out!', 21100119),
(23065620, 10152140, 'I would not challenge a giant. What you like is in the limo. She asked for my love and I gave her a dangerous mind.', 21071047),
(25167281, 52259926, 'It\'s the terror of knowing what this world is about — watching some good friends screaming, \"Let me out!\". ', 21102910),
(25585288, 80123343, 'We believe in you. It\'s War-hol, actually.', 22032584),
(37755463, 28309548, 'So softly a supergod cries. Beware the savage jaw of 1984.', 21100720),
(38618106, 42133976, 'Somewhere, someone\'s calling me when the chips are down. Turn to the right! I watch the ripples change their size, but never leave the stream.', 22011742),
(43280085, 37873187, 'Oh no love, you\'re not alone. Have you sought fortune evasive and shy? Dignity is valuable, but our lives are valuable too.', 21110500),
(43290930, 41723901, 'Hey, that\'s far out so you heard him too! He makes you laugh, he brings you out in style.', 21092496),
(44233570, 37721184, 'As they pulled you out of the oxygen tent, you asked for the latest party. It\'s a very modern world, but nobody\'s perfect.', 22021835),
(44864915, 48948135, 'He was awful nice — really quite out of sight. Tell my wife I love her very much. If you think we\'re gonna make it, you better hang on to yourself.', 21102270),
(46932562, 79069061, 'Far out! Beware the savage jaw of 1984.', 21060410),
(48168316, 68015536, 'Pale blinds drawn all day. Hey, that\'s far out so you heard him too!', 21052822),
(50396071, 32372569, 'The sun machine is coming down, and we\'re gonna have a party. She asked for my love and I gave her a dangerous mind.', 21112584),
(55267055, 58216667, 'Lady Stardust sang his songs of darkness and disgrace. His name was always Buddy, and he\'d shrug and ask to stay.', 22040888),
(57046306, 60451157, 'I watch the ripples change their size, but never leave the stream. So softly a supergod cries.', 22012870),
(59775064, 68194311, 'If you think we\'re gonna make it, you better hang on to yourself. Never look back, walk tall, act fine.', 21091774),
(63334571, 61275531, 'Pale blinds drawn all day. What you like is in the limo. I\'m a space invader.', 21121700),
(67659416, 10786406, 'Breaking up is hard, but keeping dark is hateful. Never look back, walk tall, act fine.', 22040812),
(68592894, 87348133, 'I never thought I\'d need so many people. No death for the perfect men.', 21061633),
(71869359, 35880889, 'I\'m glad that you\'re older than me. Look at those cavemen go. You were a talented child.', 22021166),
(76475445, 63820277, 'Is it any wonder I reject you first? I found my teacher crouching in his overalls.', 21082722),
(77116445, 32187831, 'Oh no, don\'t say it\'s true. I\'m happy, hope you\'re happy too. Far out!', 22050642),
(77180757, 96173201, 'They\'re travelling the holy land opening telegrams. You\'re too old to lose it, too young to choose it. Tell my wife I love her very much.', 21070252),
(79868528, 36599767, 'Sometimes I feel the need to move on; so I pack a bag and move on. Don\'t tell your papa or he\'ll get us locked up in fright!', 21061841),
(82980018, 27110692, 'He treats you well and makes you up real fine. I found my teacher crouching in his overalls.', 21081457),
(94913812, 81183567, 'Tell my wife I love her very much. Sordid details following.', 22020430),
(95769868, 39220508, 'I can stare for a thousand years. The return of the Thin White Duke.', 21121052);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `section_ID` int(10) NOT NULL,
  `date` date NOT NULL,
  `price` int(50) NOT NULL,
  `movie_ID` int(10) NOT NULL,
  `hall_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`section_ID`, `date`, `price`, `movie_ID`, `hall_ID`) VALUES
(12, '2021-12-05', 180, 21121052, 4),
(13, '2022-02-01', 150, 22020430, 4),
(15, '2021-10-19', 150, 22040812, 3),
(17, '2021-08-19', 150, 22032584, 10),
(21, '2021-10-19', 180, 21102270, 5),
(29, '2022-05-09', 160, 21092496, 7),
(30, '2021-07-06', 150, 22021166, 3),
(33, '2022-10-15', 160, 21052822, 1),
(35, '2021-06-03', 160, 21090212, 2),
(36, '2021-06-13', 160, 21080654, 8),
(41, '2022-08-24', 180, 21121700, 1),
(45, '2022-12-14', 160, 21071047, 6),
(49, '2022-04-08', 180, 21112584, 2),
(52, '2022-05-11', 180, 21110500, 1),
(53, '2021-07-19', 160, 21060410, 2),
(56, '2022-04-13', 160, 21070252, 5),
(57, '2022-02-16', 180, 21100720, 6),
(61, '2021-10-26', 160, 21081457, 9),
(62, '2021-10-14', 150, 22040888, 2),
(65, '2021-09-30', 150, 22021835, 8),
(66, '2022-12-26', 160, 21082722, 10),
(72, '2021-09-12', 180, 22012870, 9),
(74, '2022-07-14', 160, 21073017, 7),
(81, '2021-07-13', 180, 21100119, 4),
(83, '2022-11-13', 180, 22011742, 10),
(86, '2022-04-20', 160, 21061841, 4),
(88, '2021-07-08', 150, 22050642, 4),
(90, '2022-03-01', 160, 21091774, 3),
(92, '2021-10-30', 180, 21102910, 5),
(98, '2021-12-20', 160, 21061633, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_ID` int(10) NOT NULL,
  `seat_number` int(10) NOT NULL,
  `section_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticket_ID`, `seat_number`, `section_ID`) VALUES
(14010, 19, 61),
(15304, 3, 29),
(16542, 26, 57),
(16850, 49, 45),
(22009, 13, 35),
(26175, 7, 49),
(27294, 32, 21),
(27317, 39, 90),
(32737, 6, 13),
(32898, 34, 17),
(36566, 4, 15),
(43179, 42, 36),
(45126, 27, 41),
(45644, 40, 52),
(49671, 11, 66),
(50036, 37, 33),
(52319, 24, 83),
(52380, 30, 86),
(54971, 41, 72),
(59163, 21, 81),
(62520, 15, 92),
(65223, 29, 65),
(69131, 48, 53),
(70514, 35, 12),
(79653, 47, 62),
(81804, 43, 88),
(91081, 33, 74),
(96374, 45, 98),
(97415, 17, 56),
(98270, 25, 30);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_ID` int(20) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `user_phone_number` int(10) NOT NULL,
  `ticket_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_ID`, `user_name`, `password`, `user_phone_number`, `ticket_ID`) VALUES
(17204422, 'Jason', 'OGxRA60K6d', 1915221952, 36566),
(17612229, 'Enoch', 'K627hmrnCzHGRwa', 1887963537, 97415),
(20773535, 'Travers', 'qjFd5khj4G48GY9tsh', 1821520575, 52319),
(21885820, 'Deborah', 'kMqX4VMjak', 1926336060, 70514),
(23065620, 'White', 'gPuWYEBDlqt1G', 1879289929, 26175),
(25167281, 'Jemima', 'QB8OocJZ318L6aL', 1919932049, 16542),
(25585288, 'Grain', 'TLSJcvy34kimgo9Ig', 1850790415, 59163),
(37755463, 'Shamus', 'YHOnqatMN2HmI', 1926562166, 65223),
(38618106, 'Eli', 'WQVmJbegG1LLQV6Y4', 1755066834, 79653),
(43280085, 'Simon', 'K5i6GTZpv51RFX8c', 1988744289, 50036),
(43290930, 'Lars', 'DrHI0QpyppC2U3BH', 1899131153, 45126),
(44233570, 'Edgar', 'nl3g3GfXdzpjNvJ', 1752743427, 49671),
(44864915, 'Ruth', '7N9LqI7NqHRRS', 1896090378, 22009),
(46932562, 'Royce', 'IcR0DoqclHAspvc', 1915509044, 32898),
(48168316, 'Sloane', '7ZB3u6S8EajBw2ZjEQPXqxYZx', 1833640945, 91081),
(50396071, 'Stanley', 'n4syr6iwJB7XGnye', 1714084497, 52380),
(55267055, 'Michael', '6EcL0x70', 1862824434, 16850),
(57046306, 'Silas', 'kaaGljiN1qIKmACEbvk', 1904813003, 98270),
(59775064, 'Howard', 'MN6z09ICFbx6qx0e', 1889192332, 69131),
(63334571, 'Eloise', '3qeUCogyZPr7ps', 1762780586, 45644),
(67659416, 'Hardy', 'bM6SAeD7', 1882591439, 81804),
(68592894, 'Ward', 'gf6b7LH90LxXj', 1831789106, 54971),
(71869359, 'Forest', 'VBpWiBGC1Lsl', 1819824426, 14010),
(76475445, 'Konrad', '9rLpR14C7RkQZ', 1914027571, 32737),
(77116445, 'Kurt', 'XIEnxjA6Sij', 1800714564, 96374),
(77180757, 'Effie', 'd6Rp2WHCBmMypcQqUV7N63c', 1981498564, 27294),
(79868528, 'Rosa', 'FiocjEAvw', 1972717435, 15304),
(82980018, 'Quenna', 'eRrQjDTcfDOLk1m', 1713376145, 27317),
(94913812, 'Marcus', 'prVsEaGZxX', 1713194080, 43179),
(95769868, 'Imogene', 'M3mErtMp9404UqHG', 1985486618, 62520);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acounting`
--
ALTER TABLE `acounting`
  ADD PRIMARY KEY (`employee_ID`);

--
-- Indexes for table `cinemas`
--
ALTER TABLE `cinemas`
  ADD PRIMARY KEY (`cinema_ID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_ID`),
  ADD KEY `cinema_ID` (`cinema_ID`);

--
-- Indexes for table `engineer`
--
ALTER TABLE `engineer`
  ADD PRIMARY KEY (`employee_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`employee_ID`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_ID`);

--
-- Indexes for table `movies_movie_stars`
--
ALTER TABLE `movies_movie_stars`
  ADD PRIMARY KEY (`movie_ID`,`movie_stars`),
  ADD KEY `movie_ID` (`movie_ID`);

--
-- Indexes for table `movies_type`
--
ALTER TABLE `movies_type`
  ADD PRIMARY KEY (`movie_ID`,`type`),
  ADD KEY `movie_ID` (`movie_ID`);

--
-- Indexes for table `movie_halls`
--
ALTER TABLE `movie_halls`
  ADD PRIMARY KEY (`hall_ID`),
  ADD KEY `cinema_ID` (`cinema_ID`);

--
-- Indexes for table `projectionist`
--
ALTER TABLE `projectionist`
  ADD PRIMARY KEY (`employee_ID`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`user_ID`,`rating_ID`),
  ADD KEY `user_ID` (`user_ID`),
  ADD KEY `movie_ID` (`movie_ID`),
  ADD KEY `user_ID_2` (`user_ID`),
  ADD KEY `movie_ID_2` (`movie_ID`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`section_ID`),
  ADD KEY `movie_ID` (`movie_ID`),
  ADD KEY `hall_ID` (`hall_ID`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_ID`),
  ADD KEY `section_ID` (`section_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_ID`),
  ADD KEY `ticket_ID` (`ticket_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees__cinema_ID` FOREIGN KEY (`cinema_ID`) REFERENCES `cinemas` (`cinema_ID`);

--
-- Constraints for table `movies_movie_stars`
--
ALTER TABLE `movies_movie_stars`
  ADD CONSTRAINT `movies_movie_stars__movie_ID` FOREIGN KEY (`movie_ID`) REFERENCES `movies` (`movie_ID`);

--
-- Constraints for table `movies_type`
--
ALTER TABLE `movies_type`
  ADD CONSTRAINT `movies_type__movie_ID` FOREIGN KEY (`movie_ID`) REFERENCES `movies` (`movie_ID`);

--
-- Constraints for table `movie_halls`
--
ALTER TABLE `movie_halls`
  ADD CONSTRAINT `movie_hall__cinema_ID` FOREIGN KEY (`cinema_ID`) REFERENCES `cinemas` (`cinema_ID`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings__movie_ID` FOREIGN KEY (`movie_ID`) REFERENCES `movies` (`movie_ID`),
  ADD CONSTRAINT `ratings__user_ID` FOREIGN KEY (`user_ID`) REFERENCES `users` (`user_ID`);

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections__hall_ID` FOREIGN KEY (`hall_ID`) REFERENCES `movie_halls` (`hall_ID`),
  ADD CONSTRAINT `sections__movie_ID` FOREIGN KEY (`movie_ID`) REFERENCES `movies` (`movie_ID`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets__section_ID` FOREIGN KEY (`section_ID`) REFERENCES `sections` (`section_ID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users__ticket_ID` FOREIGN KEY (`ticket_ID`) REFERENCES `tickets` (`ticket_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
