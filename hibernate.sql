-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.6.26-log - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para examenhibernate
DROP DATABASE IF EXISTS `examenhibernate`;
CREATE DATABASE IF NOT EXISTS `examenhibernate` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `examenhibernate`;


-- Volcando estructura para tabla examenhibernate.actor
DROP TABLE IF EXISTS `actor`;
CREATE TABLE IF NOT EXISTS `actor` (
  `codigoA` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `codPelicula` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`codigoA`),
  KEY `FK_actor_peliculas` (`codPelicula`),
  CONSTRAINT `FK_actor_peliculas` FOREIGN KEY (`codPelicula`) REFERENCES `peliculas` (`codigoP`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla examenhibernate.actor: ~11 rows (aproximadamente)
DELETE FROM `actor`;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` (`codigoA`, `nombre`, `apellidos`, `codPelicula`) VALUES
	(1, 'Michael ', 'Keaton', 1),
	(2, 'Rachel ', 'McAdams', 1),
	(3, 'Miliev ', 'Schreiber', 1),
	(4, 'Mark', 'Ruffalo', 1),
	(5, 'Tom ', 'Hanks', 2),
	(6, 'Amy', 'Ryan', 2),
	(7, 'Alan ', 'Alda', 2),
	(8, 'Eve ', 'Hewson', 2),
	(9, 'Josh ', 'Hutcherson', 3),
	(10, 'Liam', 'Hemsworth', 3),
	(11, 'Jennifer', 'Lawrence', 3);
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;


-- Volcando estructura para tabla examenhibernate.multicine
DROP TABLE IF EXISTS `multicine`;
CREATE TABLE IF NOT EXISTS `multicine` (
  `codigoM` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `ubicacion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigoM`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla examenhibernate.multicine: ~1 rows (aproximadamente)
DELETE FROM `multicine`;
/*!40000 ALTER TABLE `multicine` DISABLE KEYS */;
INSERT INTO `multicine` (`codigoM`, `nombre`, `ubicacion`) VALUES
	(1, 'Multicines Avenida', 'Albacete');
/*!40000 ALTER TABLE `multicine` ENABLE KEYS */;


-- Volcando estructura para tabla examenhibernate.peliculas
DROP TABLE IF EXISTS `peliculas`;
CREATE TABLE IF NOT EXISTS `peliculas` (
  `codigoP` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coidgo` varchar(50) NOT NULL DEFAULT '0',
  `titulo` varchar(50) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `director` varchar(50) NOT NULL,
  `fechaEstreno` date NOT NULL,
  `duracion` int(10) unsigned NOT NULL,
  PRIMARY KEY (`codigoP`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla examenhibernate.peliculas: ~3 rows (aproximadamente)
DELETE FROM `peliculas`;
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
INSERT INTO `peliculas` (`codigoP`, `coidgo`, `titulo`, `genero`, `director`, `fechaEstreno`, `duracion`) VALUES
	(1, 'PS1205', 'Spotlight', 'Drama', 'Thomas McCarthy', '2015-11-21', 128),
	(2, 'PE580', 'El puente de los espías', 'Drama, Thriller', 'Steven Spielberg', '2016-01-06', 142),
	(3, 'SJ2012', 'Los juegos del hambre: Sinsajo - Parte 2', 'Thriller, Aventura', 'Francis Lawrence', '2015-12-25', 137);
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;


-- Volcando estructura para tabla examenhibernate.proyeccion
DROP TABLE IF EXISTS `proyeccion`;
CREATE TABLE IF NOT EXISTS `proyeccion` (
  `codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codPelicula` int(11) unsigned NOT NULL,
  `codSala` int(11) unsigned NOT NULL,
  `horaProyeccioon` time NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `FK_cartelera_peliculas` (`codPelicula`),
  KEY `FK_cartelera_sala` (`codSala`),
  CONSTRAINT `FK_cartelera_peliculas` FOREIGN KEY (`codPelicula`) REFERENCES `peliculas` (`codigoP`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_cartelera_sala` FOREIGN KEY (`codSala`) REFERENCES `sala` (`codigoS`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla examenhibernate.proyeccion: ~0 rows (aproximadamente)
DELETE FROM `proyeccion`;
/*!40000 ALTER TABLE `proyeccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `proyeccion` ENABLE KEYS */;


-- Volcando estructura para tabla examenhibernate.sala
DROP TABLE IF EXISTS `sala`;
CREATE TABLE IF NOT EXISTS `sala` (
  `codigoS` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `aforo` varchar(50) NOT NULL,
  `datos` varchar(50) NOT NULL,
  PRIMARY KEY (`codigoS`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla examenhibernate.sala: ~2 rows (aproximadamente)
DELETE FROM `sala`;
/*!40000 ALTER TABLE `sala` DISABLE KEYS */;
INSERT INTO `sala` (`codigoS`, `nombre`, `aforo`, `datos`) VALUES
	(1, '1', '125', '3D'),
	(2, '2', '100', 'Sillas especiales');
/*!40000 ALTER TABLE `sala` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
