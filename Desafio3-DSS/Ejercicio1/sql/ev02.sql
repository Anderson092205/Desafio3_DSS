/*
SQLyog Ultimate v11.5 (64 bit)
MySQL - 11.5.2-MariaDB : Database - ev02
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ev02` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci */;

USE `ev02`;

/*Table structure for table `apuntes` */

DROP TABLE IF EXISTS `apuntes`;

CREATE TABLE `apuntes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(75) NOT NULL,
  `contenido` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM ;

/*Data for the table `apuntes` */

/*Table structure for table `bitacora` */

DROP TABLE IF EXISTS `bitacora`;

CREATE TABLE `bitacora` (
  `FECHA_HORA` varchar(255) DEFAULT NULL COMMENT 'para registrar el momento en que ocurre',
  `PAGINA` varchar(255) DEFAULT NULL COMMENT 'quien lo hizo',
  `TABLA` varchar(255) DEFAULT NULL COMMENT 'rutina donde lo efectuo',
  `TIPO_CONSULTA` varchar(255) DEFAULT NULL
) ENGINE=MyISAM ;

/*Data for the table `bitacora` */

insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 11:16:08 AM','/dss404/ev02app/usuariosadm.php','usuarios','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 11:16:35 AM','/dss404/ev02app/usuariosadm.php','usuarios','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 11:37:50 AM','/dss404/ev02app/usuariosadm.php','usuarios','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 12:30:37 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 12:31:11 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 12:31:20 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 12:32:24 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 12:32:58 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 12:36:40 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 12:37:03 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 12:40:19 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 12:43:24 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 12:43:35 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 12:45:09 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 12:45:12 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 12:45:38 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 12:45:55 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 12:48:35 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 12:48:36 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 12:49:01 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 12:53:23 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 12:54:36 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 12:55:41 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 12:56:52 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 12:58:24 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 01:05:35 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 01:06:52 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 01:07:15 PM','/dss404/ev02app/EstructuraTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 01:56:05 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 01:56:50 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 02:02:03 PM','/dss404/ev02app/EstructuraTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 02:02:13 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 02:02:35 PM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 02:28:18 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 02:29:25 PM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 02:31:06 PM','/dss404/ev02app/EstructuraTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 02:32:06 PM','/dss404/ev02app/EstructuraImgs.php','generarimgs','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 02:47:05 PM','/dss404/ev02app/GeneradorImgs.php','generaroimgs','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 02:48:37 PM','/dss404/ev02app/GeneradorImgs.php','generaroimgs','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 02:51:22 PM','/dss404/ev02app/GeneradorImgs.php','generaroimgs','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 02:51:40 PM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('21-03-2025 03:22:19 PM','/dss404/ev02app/usuariosadm.php','usuarios','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('22-03-2025 09:19:33 AM','/dss404/ev02app/usuariosadm.php','usuarios','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 04:30:38 PM','/dss404/ev02app/usuariosadm.php','usuarios','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 04:39:33 PM','/dss404/ev02app/EstructuraTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 04:39:48 PM','/dss404/ev02app/EstructuraTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 04:41:50 PM','/dss404/ev02app/EstructuraTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 04:42:22 PM','/dss404/ev02app/EstructuraTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 04:42:28 PM','/dss404/ev02app/EstructuraTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 04:43:45 PM','/dss404/ev02app/EstructuraTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 04:44:14 PM','/dss404/ev02app/EstructuraTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 04:44:27 PM','/dss404/ev02app/EstructuraTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 04:46:08 PM','/dss404/ev02app/EstructuraTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 04:47:59 PM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 04:52:49 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 04:54:01 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 04:54:04 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 04:54:51 PM','/dss404/ev02app/EstructuraTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 04:55:49 PM','/dss404/ev02app/EstructuraTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 04:56:48 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 04:57:16 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 04:57:18 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 04:59:25 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 05:00:15 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 05:01:58 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 05:03:29 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 05:04:07 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 05:04:16 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 05:07:04 PM','/dss404/ev02app/EstructuraImgs.php','generarimgs','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 05:08:38 PM','/dss404/ev02app/GeneradorImgs.php','generaroimgs','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 05:17:43 PM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 05:18:28 PM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('25-03-2025 05:19:19 PM','/dss404/ev02app/EstructuraTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 10:08:12 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 10:17:46 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 10:19:35 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 10:20:31 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 10:22:08 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 10:22:22 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 10:22:47 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 10:23:21 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 10:23:28 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 10:24:03 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 10:24:21 AM','/dss404/ev02app/EstructuraTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 10:25:02 AM','/dss404/ev02app/EstructuraTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 10:26:26 AM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 10:26:48 AM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 10:27:05 AM','/dss404/ev02app/EstructuraImgs.php','generarimgs','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 10:27:30 AM','/dss404/ev02app/EstructuraImgs.php','generarimgs','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 10:35:25 AM','/dss404/ev02app/GeneradorImgs.php','generaroimgs','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 10:36:19 AM','/dss404/ev02app/GeneradorImgs.php','generaroimgs','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 10:36:58 AM','/dss404/ev02app/EstructuraTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:28:19 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:28:55 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:32:16 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:34:37 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:34:51 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:35:32 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:35:45 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:36:39 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:36:49 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:37:02 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:37:29 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:40:03 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:40:51 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:41:18 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:42:19 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:42:41 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:43:06 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:43:38 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:44:13 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:44:19 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:44:48 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:45:01 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:45:14 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:45:43 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:45:48 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:46:40 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:47:35 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:47:53 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:48:07 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:48:17 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:48:36 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:49:20 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:54:19 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:55:24 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:55:46 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:56:13 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:56:27 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:56:41 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 11:57:00 AM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 12:03:04 PM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 12:03:39 PM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 12:06:49 PM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 12:07:08 PM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 12:07:16 PM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 12:07:26 PM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 12:07:34 PM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 12:07:43 PM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 12:07:49 PM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 12:08:11 PM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 12:08:21 PM','/dss404/ev02app/arbol.php','arbol','SELECT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 12:08:55 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 12:09:40 PM','/dss404/ev02app/GeneradorTextos.php','generartextos','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 12:17:55 PM','/dss404/ev02app/GeneradorImgs.php','generaroimgs','INSERT');
insert  into `bitacora`(`FECHA_HORA`,`PAGINA`,`TABLA`,`TIPO_CONSULTA`) values ('26-03-2025 12:20:19 PM','/dss404/ev02app/arbol.php','arbol','SELECT');

/*Table structure for table `generales` */

DROP TABLE IF EXISTS `generales`;

CREATE TABLE `generales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(500) NOT NULL,
  `carnet` varchar(100) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `cum` varchar(12) DEFAULT NULL,
  `imagen` blob DEFAULT NULL,
  `fechacreacion` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 ;

/*Data for the table `generales` */

insert  into `generales`(`id`,`nombre`,`carnet`,`correo`,`cum`,`imagen`,`fechacreacion`) values (1,'Mauricio Vladimir Fuentes','mf220973','mvfuentes@gmail.com','7.5','����\0JFIF\0\0Y\0Y\0\0��\0\"Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0C\0		\n\n\r\n\n	\r��\0C��\0\0�\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0����(\0����ĺ��+�OT���O���<�0T�Gr�Rk��?�\n�x�k�#��q�h�(��r��z���S��U�^�U�bs\n���v�_�|�7�0�t9��^�n�\0�y��ό�������TԾժ(�Ӭ������ȯ�>\"�\0�K�S��$^\ZҴ�ܜ,��w$z�A�7־m$�+1,�!��NY��Os\\��_�^�Ehf�7���q��7\0J�\0��2��\n�#�Yv��}���}�}�?3��ve������죫����zǉ�ix���0��_�q]5���{Erwz����^^\\��N���_%|P�\0��xK��l��?\\/qt~�k�\\da�\0Z����7���$)�G�	2>ͣE�6=���¶��exE�E\'����듇������ͻ�ڿ���\r��y�I�{��WS�)�2?\"+������:k��%�k��\0�7\n���]�~|Q�Z\"�?��ae�S�c�BD�����>�Z<9���u\r\nc�]i���l��;dQ��J��b�-t���k��}�~Ͱo�ܗx��ݣ��~��:�\0����C�8�K�i���ᦷ�\0D�׺�~���������A��_e�s�^�\r����\0���W�o��\r��n�>%�5v#&�p��&Ïʺ�ZU�d�6�2Ѓ�\Z��yv.�oq���}�}�+Ź�\n~�梁�������E|3�8~������|f�\Zފ0�}��lǫ�T�\00�=+�\rx�O�k��wp_���� ��)�?�u���5�q9}NJ�G�[?�>G�yFy��a�A�Ou�wE�(����\n��o��;@��5;�����i��cP9?�n����k�\n�H?�<Z��.3���\0�:7�C�}�>�����\\��a�T!�ݾ���>w��˰μ�{%��\0Z����?jMK���)�35��,�͍�82ǝ/��â���I�����|]��ǃ�/g�Hg6�:���ʝ�\0@�����2+��>�\nC�K���z����T��x�G��{��F�^������k���i�\'][�����ɬRE=19�8�W�x�\"��yfy��Y�s$��RrI�������v����VӒ[K�4S\r�$Rc9X�{���?�QO��Q}���VZ��\\�Ŵ\"�g�T���?3}�:��\'S5��犺�	_g̴���6��]��?U��|.a,�49$��k��Z��|�o�x������~�at�TG��՚+�#�9�]��V�<\\�Uy�5m(;C�}�G�kB�avsW�d�%�s,�]Nc�6(�G����l��k?��z�:o����\ZE\n,.�RE�g�A�\n����|/��� (ѭu��{(n-a�,bI\ZR���p:6G�}ߢ��^\Z��M��Ӭ�X-aXbQ��+�2��X,L*�\'���OO���\"�=�%J*���Z���n�\0#��%��������!c�;���v���y��@3лWџ���I����%�f�����X��?��/G�FpG��_q[N���{����-O�(��P�}g�4�J��ս>g�7�|Kc��j�e�W�}�Bh\'��dS��\0���W�������<�\\cE���\0Awn,�E�Y:{6?�k�j�W:�je��BZ���Ϲ�~G���p��t{5��\0�Ty��e����mKT��uK�Yi�����\0�(g�\0���3Hř�݉ff9,O$��k�/�)�f�~)i^\Z�Bm�O�L���7O�5_���͕�_���UZ��k���3�2�^\'�/���ׯ��)�D�O\ZF	��*��p?ZmZп�;c�\0_1�\0�b���,>�x��FN�mz�3���V�7ե�����e�Co�I��m<j�_�F�K���\\�9�5���\0^��#����\Z?�N��ұ8!�|��?�*�@����a�\0_M�\0�����\0��~�\Z���t�����Fף�I��1�m*h��D���+u�1�\"����Ō�/���):�j�Q��R���7o��g�E��Ƹ�f�5N�fܝ��aޯ�D��\0� ����x��\0ƾ2ӵOh����0Ej�[�4K!U�������&�\0��zՍ���3�>��Ƞ��ִ�i��:��~�~��W����,m�\'���q�H�v�O��:u��V��F�[��Ǉp)+�[-S�~_|.�\0�\0x�T��o\Z|A��Va�����D��d1��V�ǯ�\"�~�Ͼ4�U���c�j����Kx���8\'��@�7;pp����:�iM0k��;27}��\Z�x�ͤ�G��:���R��D�����`)�|���շ�g����1\\|^�.�,~]ơ�,�rʙK���\Z���*�\0�E��\Z��,5O���G�b�H���I]PLK�a��K9�M}�_�<�����J���7��o���?���S��I�*�R^�q��JQE}y�20efGRYN\n�Ѓ�+���L���\0�ඛ�N�ڥ�l�:���ԫ�\0���V���\0�h�Em➫�d\"�^��D+�O?�l�������b0.�^�=~]��}o�/\r�T��jh�z~:|�!���L�0�������Y����D�R��+��\Z���u�˖9k�䘟R�[��z�L5%J�)���������i�i����Z��l��?�UZ�K�m5KY�!\"��2p���9�:�}zpWnIwn.ȼ�q�\'d��3�?ho�����&��+���j��7�me.��]N�Oo����_̍�D!����z��o���=2�+��3�̋`�R+���I�MJ�Wh�-�H�N98�\Z�V��L�xQ�ȳzS�b�թR*qq�d�IŴ��(��w?h�~7���Ҧi�j�	�B\\�5(���{]4���O���2I���R��P%�*Nv�(U�OT<+�[�r�S� �y�\0~��%>��~~�?�F�*��YZQm4�Mh��~�B�:��V��d�Ml��[�[Y�-�A����hd��-䵝�^9���Ry�5C�>$���o5;�6q�\'��Q�N�E\n5*Ս**�I%�m�/�+էJ���v�Sm��Z�|߫|%�����ׂl��t;9������%Ug2H�#��K����j�}ST�[ԧ������̎�s�9��f����ᅑe�T���JNs�yK~�$�����9�$y�b�q�$#G�c���~W�@��+��\n�?g7��>x>�9E�U�)�7�ߣ���Ƒxt�^��N\Z�x�Ы���&��Ft�T�ލ��]*����O�a�ٝ;W��a���HH�*��W������x?��,\nT�f�0�+y��8�*�5UV�*/����bi:U�I����(��B��($�X_~(�w����ּO�Yh�l\\y��+r5go�T_�K�\0��k�/ĝ\"��΃�ǥhZ�W����������,�(�K��+3�p�޴��n�\0�՞�W��ӵ��d�_���/�ֺ���Z��vK|\Z�c�2�U�U�>�\Z�k;�u��*H���>���\0d�ړ�_�R?ٗI�΃�N�s��N���W��m!�RAV��8lVĿ�������q�Q�%�~���G�C�����)�#���A{HT����<��u�]���+�`��]\'�*q�S{J�+�7��5��:|E�#Q�y?A^u��S����]���lB�4p�]���;c�g�ֻ�\0��5�5.��C0�����z���\rt?�_�7�?�\'\'�Ϭx�_Am�i@Ega�w�޸>U�d��9,xEǅ�����X��׳�9Fi=���K����\\8�0��l�/�U#(���կ��o���*�� �\ZZ�G���_]�>\'�7�\0�?����j3^���\0��E��R2q4h9Üg\'8���\Z|S���OG�x_X�ִ�82ۿ�rD8do�X_�fs��F����/u�~��G��\\VV�w������7袊��$*Ƒfu^��FZ�x�Գ��^�O���-��~�]d�a�@?�y��!�15U*3��&��m���Ս%��_{=�\n_��/�ZW�b��}z���0�������5�`�\0O\0z��W�g�h�o�-�ip\"��k��8��|`���5,��*�[�\0���ѷ������&kO��V�,[������\"���g��\\5�RYS�g�-����^��q>IW�YF�ҳ���_v���jo�)���O�W^��5�&1]����)X�.ZW�\\\0xݜ����\0���\0�.��3�:T+��\0[�f*\\�ǡ�k�]��y&��S��Z�p�*�}f���T�%gվ�E�C�׉~5x���k7�֢�\n�7��\0r4X��@�v�+��INNswo�>��\"�d�#���$\'����	��Lèj3]O��ō��,c���#��{�bx�.����U�\0����\n�<Iዦ���oZ7��,�B�\"��H�odl�̘��F���\r�\0�<s�\0�O��Z������Ώt�N�w�mX��q�g�3`:%z9&W�(Ғ�rW����:�\\)K����\0�M��m�L~��/�|Kp������Dׯ�sR��0Eّ�*�lgl�����O�,7����\n/�K�u�\\\\�����%��lؕ\nN%�$_��9PFyX�/]���8�\0�G�o���Ny�\0h�76���5��ծ���h�O�+v3O�7�3V�_\nѝ��}jQVJNޟ����ҏ�WC���ω>x�5�k�.��3��$�����/�\\��Br�����TL��qp��}����Xo�&���^EY�d�?haՂ�\0L�⽻�Y�\0���_\Z|Gk��i��O\\�a��s�4��=��D��ݕ\'�����F]��+���FaJ���̺�mO��uZn�+��L\n� ��Ҿ��\0�h�:mw➫�Yc&�A��<-��7�j��د��\0�\'7�q�B�\n��S���O�iM�\'����ǹfPT�����o�3���)��n�:�.�{���|���\n��\Z��%Ω��J�ֶ���}�|ϓᜎ�͜j�(��~�ߺ�G���W������=�I���jf_�g\Z�$�������ʀ�������Z��*�,��\0��\Z߄|W�Zk����:���n��e=���R\r~YN���������b�Ti�j���tW׿�V��$������\0^x�]�U�\\��_e����+�u+,�2>`ʿ!V��c�QiمQLAZ~\r���M��?�҂�\Z&�(�(Օ)Ƥ�w^�RI�3S��%���+��\\�\\�L`�\0c�_�b�袊�gV���ݷw��1IYQY�(����\0�K�%�W�\00���J��½�W�\Z�]�9&�Б��a����N�*����q�n����\r}��<M㟋Z�\0�R&��y�C��g�k��H�3Ǘm���(���ݺ��)���φ�\'��\'��h~���X��6˶;x�`ܞ�KI$�k��jU��M��:iQ�.�{��QY�\0�O�^����V🋴]?�^�-���O��K�g���� \Z��\0�����4��ou��R�����͡ͮhk�����#�_ށ�_����2kb\'-��Dh��\'W�X\\�$n�^6YO ���I_Է���\0p��{�����,4oJ�%�XX�D�)\0���\0�d~�W��5�\0�|_�{s=����k�&�c��O�>��N���>��U\"�yR�?.h�t���\0�����2����kx�$5Ş�&�o��y��Ƽs]�~��Y�Z���iR�T���ه��\rh����u���GX�D�-+G��Y[�YYKr��E&���g�����<+�ς��c����<�u���s��M�ǆR�4�G+�,�#�4R�#����I�&�Qf_�5s��\0�+�.�(���_��s-���52=2�`C�Lz\Z�P��?���\0`���|+�a�x�%�x�^a}��LD�?���	5�F��&~R�/���_\Z�����~7A�x�YY�Ўa�5����p��zGEL����\n|7�?���?h��|7�[����c�x�`RNIc�ĒI$��(�%&�:!��(�,��','2025-03-22 11:34:53');

/*Table structure for table `notas` */

DROP TABLE IF EXISTS `notas`;

CREATE TABLE `notas` (
  `id_notas` int(11) NOT NULL AUTO_INCREMENT,
  `carnet` varchar(32) DEFAULT NULL,
  `materia` varchar(60) DEFAULT NULL,
  `nota1` decimal(10,2) DEFAULT NULL,
  `nota2` decimal(10,2) DEFAULT NULL,
  `nota3` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_notas`)
) ENGINE=MyISAM AUTO_INCREMENT=4 ;

/*Data for the table `notas` */

insert  into `notas`(`id_notas`,`carnet`,`materia`,`nota1`,`nota2`,`nota3`) values (1,'mf220973','DSS704','7.00','7.00','8.00');
insert  into `notas`(`id_notas`,`carnet`,`materia`,`nota1`,`nota2`,`nota3`) values (2,'mf220973','VAR704','8.00','9.00','9.00');

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `usuario` text DEFAULT NULL,
  `contrasena` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `nombres` text DEFAULT NULL,
  `apellidos` text DEFAULT NULL
) ENGINE=MyISAM ;

/*Data for the table `usuarios` */

insert  into `usuarios`(`usuario`,`contrasena`,`email`,`nombres`,`apellidos`) values ('ADMIN','admin','mvfuentes@gmail.com','Administrador','General');
insert  into `usuarios`(`usuario`,`contrasena`,`email`,`nombres`,`apellidos`) values ('admin02','admin02','admin@ejemplo.com','Administrador','del Sistema');
insert  into `usuarios`(`usuario`,`contrasena`,`email`,`nombres`,`apellidos`) values ('admin03','contra03','proyectos@gmail.com','administrador','del sistema');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
