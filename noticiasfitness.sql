-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 23-08-2023 a las 22:51:07
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto gimnasio utn`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticiasfitness`
--

DROP TABLE IF EXISTS `noticiasfitness`;
CREATE TABLE IF NOT EXISTS `noticiasfitness` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `subtitulo` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `cuerpo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `img_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `noticiasfitness`
--

INSERT INTO `noticiasfitness` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(25, 'fitland fitness festival - colombia -', '                                                            el mayor evento fitness de latinoamerica', '                                                            sigue el enlace para conseguir tus entradas: https://www.fitlandfestival.com/events/fitland-fitness-festival-crossfit-r-licensed-event', NULL),
(22, 'nueva embajadora de Etenon Fitness', 'alicia romero', 'Hay una nueva incorporación al equipo de Etenon Fitness: Alicia Romero, nueva embajadora de la marca. Dentro del mundo del culturismo, ha demostrado su nivel en la categoría Wellness, destacándose como una atleta con un palmarés que incluye varias medallas de oro.\r\n\r\nEtenon Fitness continúa expandiendo sus filas con una nueva integrante. En esta ocasión, la atleta e influyente figura de las redes sociales, Alicia Romero, se une a la familia Etenon Fitness. Con una sólida presencia en plataformas digitales, donde cuenta con más de 170 mil seguidores en Instagram, Alicia aporta una perspectiva fresca y potente en el ámbito del social media al equipo.\r\n\r\nDentro del mundo del culturismo, Alicia Romero ha demostrado su nivel en la categoría Wellness, destacándose como una atleta comprometida y dedicada. Su palmarés incluye varias medallas de oro, logrando el primer puesto en la categoría Wellness True Novice en campeonatos de renombre en España como NPC Worldwide European, Big Man Classic, Copa Valencia y Amix Cup.\r\n\r\nPERSONAL TRAINER Y COACHING DEPORTIVO\r\nNo solo es una competidora consumada, sino que también es una profesional altamente calificada. Alicia cuenta con un Máster en Personal Trainer y un Máster en Coaching Deportivo, lo que respalda su pasión por ayudar a otros a alcanzar sus metas físicas y deportivas. Como preparadora física, su enfoque va más allá de la competición, ya que se dedica a guiar y capacitar a sus clientes  para mejorar su bienestar y rendimiento.\r\n\r\nSu trayectoria en el mundo del fitness y el culturismo, combinada con su influencia en las redes sociales, la convierte en una incorporación valiosa para el equipo. “La visión compartida de impulsar el culturismo y apoyar a otros en su viaje hacia la excelencia hace que esta asociación sea realmente emocionante”, afirman desde la marca.', 'cwjzfafv3dx8n830ptkv'),
(21, 'fitness group', 'Bajo la marca Fitness Group, se formó en Córdoba una red de 20 gimnasios', 'Fitness Group es la denominación con la que opera en Córdoba, desde enero pasado, una red de gimnasios, conformada con el objetivo de compartir información entre sus miembros, prestar servicios de forma conjunta y organizar compras grupales. Actualmente, esta red cuenta con 20 gimnasios y sigue sumando asociados.\r\n\r\n“La idea era dejar de competir por precios y de pelearnos por los mismos clientes”, explica Marcos Aguade, propietario de los gimnasios Manantial e impulsor de esta red. “Somos un grupo de gimnasios de cercanía que queremos ser más eficientes en el aspecto comercial y confiamos en que juntos será más fácil lograrlo”, añade.\r\n\r\nEntre los gimnasios miembros de Fitness Group están las 7 sedes de Manantial, Edingburh, Power Life, CAFF, Bucor, UNDER Fitboxing y FB Entrenamiento. La cuota mensual que fijaron es de $3250 pesos con tarjeta de crédito y habilita automáticamente a los usuarios a asistir a cualquiera de estos centros.\r\n\r\n“Con la pandemia, cuando nos vimos obligados a cerrar, los propietarios de muchos de gimnasios buscamos compartir información, ya que todos estábamos enfrentando las mismas dificultades, no sabíamos lo qué iba a pasar y al no tener respuestas certeras la desesperación era aún mayor”, explica', 'nzx5ova227lasxtjbwvf'),
(19, 'Por qué la calistenia es el entrenamiento perfecto si te estás iniciando en el mundo del fitness', 'La calistenia no tiene por qué ser un ejercicio complicado. De hecho, puede ser una disciplina perfecta para iniciarnos en el fitness.', 'Cuando escuchamos la palabra calistenia, lo más seguro es que la mayoría nos imaginemos a personas muy musculadas, colgándose de barras en un parque y haciendo series infinitas de dominadas. Y, aunque esta imagen puede ser un reflejo fiel de aquellos que ya son expertos en este tipo de entrenamiento, lo cierto es que la calistenia no tiene que ser algo complicado ni reservado únicamente para los expertos en el mundo del fitness.\r\n\r\nDe hecho, puede ser un tipo de ejercicio muy útil y efectivo para aquellos que aún están iniciándose en el deporte, y aún no se sienten cómodos levantando grandes cantidades de peso. También es perfecto para quienes quieren construir o mantener el músculo que ya tienen.\r\n\r\n¿En qué consiste la calistenia?\r\nAunque al oír por primera vez la palabra pueda parecer un concepto complicado, lo cierto es que básicamente consiste en hacer ejercicios con el peso de nuestro propio cuerpo, con movimientos que mejoran la fuerza, la resistencia, la flexibilidad y la coordinación.\r\n\r\nEn este tipo de entrenamiento, se realizan ejercicios de tirón y empuje contra la gravedad, lo cual contribuirá a nuestras ganancias musculares.\r\n\r\n¿Es mejor la calistenia que ir al gimnasio?\r\nTanto la calistenia como el entrenamiento de fuerza tradicional se consideran entrenamientos de resistencia, por lo que sirven para desarrollar fuerza muscular.\r\n\r\nPor un lado, la calistenia se compone, en su mayoría, de ejercicios compuestos que involucran a distintos grupos musculares al mismo tiempo, lo que puede ser muy efectivo para perder grasa y definir el músculo. El entrenamiento de fuerza tradicional, al implicar el uso de mancuernas, barras o kettlebells, permite incluir en nuestra rutina ejercicios aislados, lo que resulta muy útil si queremos incrementar el tamaño de un músculo específico.\r\n\r\nEl progreso en ambos tipos de entrenos también es distinto. En el gimnasio, debemos ir aumentando el peso que cogemos, en lo que se conoce como sobrecarga progresiva. En la calistenia, debemos enfocarnos en mejorar nuestras habilidades, incrementando la complejidad de los ejercicios que realizamos, modificando su duración, el número de repeticiones o la velocidad del movimiento.\r\n\r\nPor lo tanto, podríamos decir que ambos son beneficiosos. El entrenamiento en el gimnasio nos ayudará a construir músculo de forma más fácil, y la calistenia a mover nuestro cuerpo de distintas formas, además de incluir ejercicio aeróbico, que nos será muy efectivo si queremos perder grasa y adquirir fuerza al mismo tiempo.\r\n\r\nLos beneficios de hacer calistenia\r\nSi como principiante no ves claro aún lo de comenzar a hacer calistenia es porque no conoces todos sus beneficios en profundidad. El primero de ellos, por supuesto, es que no necesitas ir al gimnasio, ni siquiera tener equipamiento en casa: solo necesitarás tu propio cuerpo. De esta forma, es un tipo de entrenamiento asequible y que podremos realizar en cualquier lugar. El resto de sus beneficios te terminarán de convencer de practicar esta disciplina.\r\n\r\nMejora nuestra forma física general\r\nLa calistenia emula movimientos que hacemos cada día, por lo que puede contribuir a mejorar nuestra movilidad, y al movimiento funcional que hacemos en nuestras actividades diarias. Por ejemplo, hacer sentadillas o zancada, nos ayudan a ganar músculo para que subir cuestas o bajar escaleras nos sea más fácil.\r\n\r\nNos ayuda a perder grasa\r\nDistintos estudios afirman que quienes practican calistenia de forma regular durante 8 semanas tienen una gran probabilidad de cambiar su composición corporal y de perder casi un 3% de grasa en ese tiempo. Esto se debe, como ya hemos dicho, a que también incorpora ejercicios aeróbicos.\r\n\r\nMejora de la postura corporal\r\nPara quienes estamos sentados constantemente por nuestro trabajo, es vital cuidar nuestra postura con distintos ejercicios. La ciencia confirma que la calistenia es muy útil para ello.\r\n\r\nAumenta la flexibilidad y la movilidad\r\nAl componerse de movimientos que involucran a diversos grupos musculares al mismo movimiento, la calistenia mejora nuestra flexibilidad y movilidad. Se trabaja el cuerpo completo al mismo tiempo, lo que puede ayudar a contrarrestar la rigidez causada por las lesiones por pasar sentados mucho tiempo a lo largo del día.\r\n\r\nIncrementa nuestra fuerza\r\nLa calistenia supone un entrenamiento de fuerza muy efectivo, tanto para el tren inferior como el superior, cuando la practicamos de forma regular.\r\n\r\nPero, ¿cómo podemos iniciarnos en ella?\r\nQuizás lo mejor de la calistenia sea que, precisamente, se puede adaptar a todos los niveles y edades. Simplemente tendremos que elegir ejercicios y variaciones que se correspondan con nuestras capacidades.', 'caqlhqzttedg9531hzy3'),
(26, 'La neurociencia, tecnología y entretenimiento, a disposición del mundo fitness', 'dhqvwkjdbqwkjqbqxs', 'jbdkqjebdwklndlkwqnkxnsmbsnxb', 'sncoqoyq6rnboh4ixp83');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
