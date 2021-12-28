DROP DATABASE IF EXISTS sorting_hat;
CREATE DATABASE sorting_hat;

USE sorting_hat; 

-- DROP TABLE IF EXISTS `hats`;
CREATE TABLE IF NOT EXISTS `hats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;


INSERT INTO `hats` (`id`, `house`) VALUES
(1, 'gryffindor'),
(2, 'slytherin'),
(3, 'ravenclaw'),
(4, 'hufflepuff');

-- DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `interests` text NOT NULL,
  `telephone` varchar(30) NOT NULL,
  `hatId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hatId` (`hatId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO `students` (`id`, `firstname`, `lastname`, `age`, `gender`, `interests`, `telephone`, `hatId`) VALUES
(1, 'Njotu', 'Awasi', 23, 'male', 'sports', '681305793', 1),
(2, 'Awasi', 'Aghangu', 23, 'male', '', '681305793', 3),
(5, 'Atsu', 'Rex', 23, 'male', '', '444', 2),
(6, 'John', 'Doe', 45, 'male', '', '', 4),
(7, 'Rex', 'Akenji', 23, 'male', '', '', 2);


ALTER TABLE `students`
  ADD CONSTRAINT `profile_house` FOREIGN KEY (`hatId`) REFERENCES `hats` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;


