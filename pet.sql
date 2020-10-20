-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2020 a las 18:48:15
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_adoptame`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pet`
--

CREATE TABLE `pet` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` smallint(6) NOT NULL,
  `weight` int(11) NOT NULL,
  `rescued` tinyint(1) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pet`
--

INSERT INTO `pet` (`id`, `name`, `age`, `weight`, `rescued`, `image`, `description`) VALUES
(1, 'Alberto', 2, 23, 0, 'https://daisyspetservice.com/wp-content/gallery/random/the-life.jpg\r\n', 'Alberto is a very good and sociable dog. He has been in the shelter for a long time, he can live without problems with other animals.\r\nTo have more information please complete the form. It is delivered at home with an adoption contract.'),
(2, 'Tina', 2, 1, 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRhYIAYYwjlCoJhN5Zy6EEhdIaUe5HycxgiHg&usqp=CAU', 'Tina is looking for a family. This puppy is looking for a home. It was rescued in Tandil with her mother and has already been dewormed and vaccinated. It\'s 5 months old, playful and good-natured.\r\nTo have more information about Tina please complete the form. It is delivered at home with an adoption contract.'),
(3, 'Omar', 3, 5, 1, 'https://kmccready.files.wordpress.com/2017/02/aggressive-chihuahuadog.jpg?w=662', 'Omar is a dog rescued from a municipal shelter. Small in size, it\'s good and friendly. It\'s a Chihuahua. We recommended to live in a house although it can also be adapted to living in an apartment with daily walks. He gets along well with other dogs. He is vaccinated and dewormed. Also neutered.\r\nTo have more information please complete the form. It is delivered at home with an adoption contract.'),
(4, 'Paula', 1, 3, 1, 'https://www.purina-latam.com/sites/g/files/auxxlc391/files/styles/facebook_share/public/purina-que-se-le-puede-dar-de-comer-a-un-gato.jpg?itok=1dYs1Lf2', 'Paula is a very sweet kitten. She was thrown at the door of the Pasteur Institute from a bicycle... even so and in that situation, she allowed herself to be caught and even purred, she is approximately one year and 3 months old. This castrated dewormed and with the rabies vaccine. She takes with other cats, dogs are afraid. Only safe houses and apartments with protection on balconies / windows.\r\nTo have more information please complete the form. It is delivered at home with an adoption contract.'),
(5, 'Anita', 3, 20, 1, 'https://static.nationalgeographic.es/files/styles/image_3200/public/aDSC_5531-2.jpg?w=1600&h=1067', 'Anita is looking for a home.\r\nThis beautiful dog is a rescued galga who despite her past has constant joy. He appeared eating garbage in a supermarket parking lot and that was his home for quite some time. She had several accidents, since the supermarket is in the middle of the avenue ... she is very happy, she has a party when you arrive, she is a mega fan of pampering and if it were up to her she would be on top of you all day like a poodle. For more information on Read please complete the form. It is delivered at home with an adoption contract.'),
(6, 'Luis', 4, 35, 1, 'https://myanimals.com/es/wp-content/uploads/2016/03/tama%C3%B1o-maximo-de-tu-perro.jpg', 'Luis is a large dog of approximately 4 years. He\'s very good with people, he knows how to walk on a leash. It is recommended for a house, although it can be adapted to living in an apartment. To have more information please complete the form. It is delivered at home with an adoption contract.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pet`
--
ALTER TABLE `pet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
