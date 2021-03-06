/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 5.6.21 : Database - base_vendas
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`base_vendas` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `base_vendas`;

/*Table structure for table `clientes` */

DROP TABLE IF EXISTS `clientes`;

CREATE TABLE `clientes` (
  `codigo_cliente` INT(10) NOT NULL DEFAULT '0',
  `nome` VARCHAR(20) DEFAULT NULL,
  `sobrenome` VARCHAR(20) DEFAULT NULL,
  `endereco` VARCHAR(40) DEFAULT NULL,
  `estado` VARCHAR(2) DEFAULT NULL,
  `cidade` VARCHAR(50) DEFAULT NULL,
  `cep` VARCHAR(9) DEFAULT NULL,
  `telefone` VARCHAR(100) DEFAULT NULL,
  `sexo` VARCHAR(1) DEFAULT NULL,
  `estado_civil` VARCHAR(50) DEFAULT NULL,
  `codigo_regiao` VARCHAR(2) DEFAULT NULL,
  PRIMARY KEY (`codigo_cliente`),
  KEY `codigo_regiao_idx` (`codigo_regiao`),
  CONSTRAINT `codigo_regiao` FOREIGN KEY (`codigo_regiao`) REFERENCES `regioes` (`codigo_regiao`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `clientes` */

INSERT  INTO `clientes`(`codigo_cliente`,`nome`,`sobrenome`,`endereco`,`estado`,`cidade`,`cep`,`telefone`,`sexo`,`estado_civil`,`codigo_regiao`) VALUES 
(51,'Sydnee','Vincent','5462 Ac Road','PR','Curitiba','81573','1 55 547 7624-9315','M','Solteiro','05'),
(52,'Judah','Franco','850-4985 Ullamcorper, Avenue','SC','Florianópolis','59185','1 55 652 2761-0777','M','Casado','05'),
(53,'Inez','Cruz','P.O. Box 312, 2893 Metus Ave','RS','Porto Alegre','68814','1 55 436 2072-7494','M','Casado','05'),
(54,'Lee','Harper','Ap #586-997 Luctus Rd.','AL','Maceio','08152','1 55 514 5962-4672','M','Viuvo','02'),
(55,'Desiree','Landry','P.O. Box 457, 1977 Lectus Av.','BA','Salvador','32867','1 55 102 9643-2150','F','Viuvo','02'),
(56,'Raven','Emerson','Ap #783-1492 Enim Av.','SP','São Paulo','14184','1 55 203 8561-7210','M','Viuvo','01'),
(57,'Dustin','Terry','Ap #242-818 Sollicitudin Avenue','SC','Florianópolis','16658','1 55 796 3570-8804','F','Viuvo','05'),
(58,'Molly','Horne','Ap #459-9003 Et Road','RO','Natal','62949','1 55 802 5722-6379','F','Viuvo','03'),
(59,'Rajah','Chase','Ap #481-6790 Nisl. Road','MT','Cuiaba','20529','1 55 643 4760-0305','M','Viuvo','04'),
(60,'Kiayada','Mccormick','P.O. Box 255, 6409 Luctus St.','PA','Belem','33529','1 55 154 7258-5534','M','Solteiro','03'),
(61,'Breanna','Hyde','Ap #160-1936 Neque St.','SP','São Paulo','21411','1 55 169 3178-6135','M','Casado','01'),
(62,'Vivian','Pacheco','2843 Nibh. Rd.','SP','Santos','89001','1 55 160 4781-4059','M','Viuvo','01'),
(63,'Glenna','Wall','Ap #728-4137 Facilisis Avenue','BA','Salvador','41152','1 55 856 5489-4394','M','Solteiro','02'),
(64,'Lani','Huber','P.O. Box 137, 5886 Id Street','DF','Brasilia','28656','1 55 311 6010-3140','F','Casado','04'),
(65,'Kaye','Rivera','5537 Sed Ave','SP','São Paulo','21077','1 55 399 9910-3253','M','Viuvo','01'),
(66,'Warren','Mclaughlin','870-9660 Lectus Rd.','AL','Maceio','25308','1 55 397 3186-3390','F','Solteiro','02'),
(67,'Jessamine','Nicholson','Ap #929-2638 Ac, Avenue','SP','São Paulo','81865','1 55 848 9243-6336','M','Casado','01'),
(68,'Nigel','Bates','9043 Parturient Street','SC','Florianópolis','19674','1 55 522 5578-1028','M','Solteiro','05'),
(69,'Louis','Woodward','8083 Nisi Av.','SC','Florianópolis','34119','1 55 642 2990-1029','M','Solteiro','05'),
(70,'Justine','Robbins','Ap #780-619 Quis, Road','RS','Porto Alegre','76573','1 55 195 9850-8806','M','Casado','05'),
(71,'Desiree','Mcknight','895-9966 Lorem Avenue','GO','Goiania','09139','1 55 189 9407-2048','F','Solteiro','04'),
(72,'Blaze','Heath','295-1356 Suscipit Rd.','GO','Goiania','57158','1 55 147 5457-5956','M','Casado','04'),
(73,'Martina','Hartman','Ap #796-6393 Parturient Avenue','BA','Salvador','05385','1 55 860 3178-1350','F','Casado','02'),
(74,'Marsden','Dorsey','P.O. Box 121, 4818 Neque. Street','SP','São Paulo','96254','1 55 967 1461-7121','M','Solteiro','01'),
(75,'Amal','Sanders','8524 Vivamus St.','RJ','Rio de Janeiro','27181','1 55 148 1852-6648','M','Solteiro','01'),
(76,'Montana','Talley','Ap #324-1751 Ut Ave','RJ','Rio de Janeiro','11021','1 55 512 4640-3980','M','Viuvo','01'),
(77,'Yasir','Dennis','197-6924 Ipsum. Ave','RJ','Rio de Janeiro','29244','1 55 478 1184-0749','F','Solteiro','01'),
(78,'Yoshi','Gross','892-3324 Tempor Rd.','RJ','Rio de Janeiro','75319','1 55 190 3843-5827','F','Casado','01'),
(79,'Lacy','Barron','7613 Varius St.','AL','Maceio','45865','1 55 965 2494-0777','F','Solteiro','02'),
(80,'Kiona','Battle','8625 Ut Rd.','SP','São Paulo','14570','1 55 545 6841-9286','F','Solteiro','01'),
(81,'Dane','Hudson','242-755 Lectus Av.','SC','Florianópolis','54058','1 55 505 4563-7401','M','Solteiro','05'),
(82,'Amber','Jennings','Ap #841-5923 Nullam Rd.','SP','São Paulo','09894','1 55 948 5012-5145','M','Viuvo','01'),
(83,'Channing','Keller','215-5247 Ante, Av.','SP','São Paulo','96935','1 55 410 5220-3751','M','Viuvo','01'),
(84,'Harriet','Glover','804-6529 Torquent Ave','RS','Porto Alegre','15679','1 55 874 1044-7054','F','Viuvo','05'),
(85,'Maggie','York','1965 Sed St.','SC','Florianópolis','53623','1 55 407 5028-8243','M','Solteiro','05'),
(86,'Cody','Faulkner','P.O. Box 517, 8751 Tincidunt Street','SP','São Paulo','64208','1 55 383 4012-3658','M','Casado','01'),
(87,'Jada','Lott','P.O. Box 564, 9257 Eu Rd.','BA','Salvador','71054','1 55 888 9002-7612','M','Viuvo','02'),
(88,'Ashely','Palmer','P.O. Box 295, 3850 Nisl St.','SP','São Paulo','24862','1 55 751 8645-2589','M','Viuvo','01'),
(89,'Nolan','Wynn','P.O. Box 882, 4701 Est Avenue','BA','Salvador','65283','1 55 701 4576-1550','M','Solteiro','02'),
(90,'Orlando','Robertson','Ap #725-2642 Ultrices Avenue','RS','Porto Alegre','00438','1 55 542 1281-7316','M','Solteiro','05'),
(91,'Montana','Lambert','P.O. Box 871, 2291 Magna Street','PR','Curitiba','71956','1 55 576 7584-9009','M','Casado','05'),
(92,'Quamar','Cortez','P.O. Box 241, 6163 Vulputate, Avenue','SC','Florianópolis','02977','1 55 743 3272-3822','M','Solteiro','05'),
(93,'Aspen','Edwards','869-8621 Sem, St.','SC','Florianópolis','32100','1 55 643 9262-0857','F','Viuvo','05'),
(94,'Garrison','Strickland','Ap #499-1001 Sapien, Ave','SC','Florianópolis','06202','1 55 732 9949-8962','F','Solteiro','05'),
(95,'Omar','Gutierrez','9745 Enim Rd.','SC','Florianópolis','51764','1 55 596 4913-7000','F','Solteiro','05'),
(96,'Latifah','Marsh','834-3609 Tempor St.','PR','Curitiba','46181','1 55 255 1698-6980','M','Casado','05'),
(97,'September','Mcmillan','739-1670 Euismod St.','PR','Curitiba','28039','1 55 590 2898-8896','M','Casado','05'),
(98,'Zephania','Duke','4293 Nostra, Road','PR','Curitiba','79319','1 55 809 1998-7773','F','Solteiro','05'),
(99,'Pamela','Livingston','Ap #738-3036 Adipiscing. St.','PR','Curitiba','78967','1 55 167 1657-4318','F','Casado','05'),
(100,'Marshall','Montoya','163-2089 Aliquet St.','SP','São Paulo','50621','1 55 301 9693-9022','M','Viuvo','01');

/*Table structure for table `fornecedores` */

DROP TABLE IF EXISTS `fornecedores`;

CREATE TABLE `fornecedores` (
  `codigo_fornecedor` INT(11) NOT NULL DEFAULT '0',
  `nome_fornecedor` VARCHAR(20) DEFAULT NULL,
  `endereco` VARCHAR(40) DEFAULT NULL,
  `cidade` VARCHAR(15) DEFAULT NULL,
  `estado` VARCHAR(2) DEFAULT NULL,
  `cep` VARCHAR(9) DEFAULT NULL,
  `telefone` VARCHAR(40) DEFAULT NULL,
  `fax` VARCHAR(18) DEFAULT NULL,
  PRIMARY KEY (`codigo_fornecedor`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `fornecedores` */

INSERT  INTO `fornecedores`(`codigo_fornecedor`,`nome_fornecedor`,`endereco`,`cidade`,`estado`,`cep`,`telefone`,`fax`) VALUES 
(1,'Ambiente Livre','P.O. Box 728, 4847 Erat. Street','Fairmont','PR','89859','9137-0607','8278-8767'),
(2,'Apache','921-6442 Congue, Street','Biddeford','SP','60349','3160-3207','6540-8921'),
(3,'Pentaho','199-9453 Et Road','Jeffersonville','BA','28068','9510-8044','9408-7841'),
(4,'Google','535-5041 Lectus Road','Hartland','ES','75284','9680-6151','7806-5380'),
(5,'OpenOffice.org','848-3105 Sagittis. Rd.','Lexington','SC','61968','4074-7588','8723-2572'),
(6,'Red Hat','649-2745 Dictum Rd.','Plantation','RS','25259','5067-0555','3545-1348'),
(7,'Dell','Ap #909-6367 Ultrices, Avenue','Fontana','PR','54490','6354-5581','3533-0060'),
(8,'HP','1503 Sem Road','West Allis','SP','18871','2827-9329','1569-8577'),
(9,'SUN','6456 Aliquam Road','Ocean City','SC','75031','1277-9674','9413-4515'),
(10,'Microsoft','4755 Id St.','Tyler','PR','38579','8240-7280','4401-6695');

/*Table structure for table `item_pedidos` */

DROP TABLE IF EXISTS `item_pedidos`;

CREATE TABLE `item_pedidos` (
  `numero_pedido` INT(11) NOT NULL,
  `codigo_produto` INT(11) NOT NULL,
  `quantidade` INT(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_produto`,`numero_pedido`),
  KEY `codigo_produto_idx` (`codigo_produto`),
  KEY `numero_pedido_idx` (`numero_pedido`),
  CONSTRAINT `pedido_fk` FOREIGN KEY (`numero_pedido`) REFERENCES `pedidos` (`numero_pedido`),
  CONSTRAINT `produto_fk` FOREIGN KEY (`codigo_produto`) REFERENCES `produtos` (`codigo_produto`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `item_pedidos` */

INSERT  INTO `item_pedidos`(`numero_pedido`,`codigo_produto`,`quantidade`) VALUES 
(70,100,1),
(24,101,1),
(30,101,1),
(43,101,1),
(49,101,1),
(69,101,1),
(77,101,1),
(259,101,12),
(6,102,3),
(33,102,1),
(40,102,1),
(167,102,3),
(225,102,1),
(240,102,1),
(251,102,4),
(265,102,3),
(37,201,1),
(62,201,1),
(68,201,1),
(125,201,7),
(168,201,5),
(225,201,3),
(226,201,2),
(245,201,7),
(246,201,6),
(258,201,5),
(4,202,1),
(13,202,2),
(16,202,2),
(19,202,2),
(31,202,1),
(45,202,1),
(169,202,2),
(227,202,1),
(250,202,5),
(10,204,4),
(16,204,2),
(63,204,1),
(83,204,1),
(89,204,1),
(95,204,2),
(101,204,3),
(107,204,1),
(113,204,1),
(119,204,1),
(125,204,4),
(140,204,3),
(146,204,3),
(152,204,2),
(158,204,2),
(164,204,1),
(170,204,1),
(179,204,2),
(185,204,1),
(191,204,1),
(198,204,2),
(204,204,2),
(210,204,2),
(216,204,2),
(222,204,2),
(225,204,1),
(228,204,2),
(254,204,1),
(263,204,1),
(267,204,2),
(1,301,2),
(12,301,1),
(15,301,3),
(18,301,1),
(21,301,3),
(47,301,1),
(55,301,1),
(61,301,1),
(140,301,1),
(171,301,4),
(229,301,3),
(252,301,1),
(261,301,2),
(268,301,1),
(35,302,1),
(56,302,1),
(82,302,1),
(88,302,4),
(94,302,2),
(100,302,2),
(106,302,1),
(112,302,2),
(118,302,2),
(124,302,2),
(125,302,2),
(145,302,3),
(151,302,3),
(157,302,1),
(163,302,2),
(172,302,1),
(178,302,1),
(184,302,1),
(190,302,1),
(197,302,1),
(203,302,1),
(209,302,1),
(215,302,1),
(221,302,1),
(230,302,1),
(240,302,2),
(245,302,4),
(255,302,3),
(3,303,1),
(5,303,1),
(75,303,1),
(78,303,2),
(79,303,2),
(173,303,2),
(231,303,1),
(263,303,1),
(264,303,1),
(26,304,1),
(34,304,1),
(41,304,1),
(66,304,1),
(174,304,1),
(232,304,2),
(247,304,1),
(249,304,7),
(257,304,6),
(76,400,1),
(175,400,2),
(233,400,3),
(84,401,2),
(90,401,1),
(96,401,1),
(102,401,1),
(108,401,2),
(114,401,2),
(120,401,2),
(141,401,3),
(147,401,2),
(153,401,1),
(159,401,2),
(165,401,4),
(176,401,3),
(180,401,5),
(186,401,1),
(192,401,2),
(199,401,1),
(205,401,1),
(211,401,1),
(217,401,1),
(223,401,1),
(234,401,2),
(269,401,1),
(273,401,1),
(277,401,1),
(281,401,1),
(304,401,3),
(308,401,2),
(315,401,2),
(319,401,2),
(323,401,2),
(81,402,3),
(87,402,3),
(93,402,2),
(99,402,1),
(105,402,2),
(111,402,1),
(117,402,1),
(123,402,1),
(144,402,2),
(150,402,3),
(156,402,2),
(162,402,2),
(177,402,2),
(183,402,1),
(189,402,2),
(196,402,2),
(202,402,2),
(208,402,2),
(214,402,2),
(220,402,2),
(235,402,1),
(270,402,2),
(274,402,2),
(278,402,2),
(282,402,22),
(300,402,2),
(301,402,2),
(305,402,1),
(309,402,1),
(316,402,1),
(320,402,1),
(324,402,2),
(80,403,2),
(86,403,1),
(92,403,3),
(98,403,2),
(104,403,2),
(110,403,2),
(116,403,2),
(122,403,2),
(143,403,1),
(149,403,1),
(155,403,3),
(161,403,4),
(182,403,1),
(188,403,1),
(195,403,1),
(201,403,1),
(207,403,1),
(213,403,1),
(219,403,1),
(236,403,2),
(271,403,1),
(275,403,1),
(279,403,1),
(302,403,2),
(306,403,2),
(310,403,2),
(313,403,2),
(317,403,2),
(321,403,2),
(325,403,1),
(85,500,6),
(91,500,1),
(97,500,1),
(103,500,4),
(109,500,1),
(115,500,1),
(121,500,3),
(142,500,2),
(148,500,1),
(154,500,2),
(160,500,3),
(166,500,2),
(181,500,2),
(187,500,1),
(193,500,1),
(194,500,2),
(200,500,2),
(206,500,2),
(212,500,2),
(218,500,2),
(224,500,2),
(237,500,3),
(272,500,2),
(276,500,2),
(280,500,2),
(303,500,2),
(307,500,1),
(311,500,1),
(312,500,2),
(314,500,1),
(318,500,3),
(322,500,1),
(326,500,3),
(7,504,1),
(22,504,1),
(27,504,1),
(53,504,1),
(65,504,1),
(238,504,2),
(239,504,2),
(240,504,2),
(266,504,1),
(8,509,1),
(29,509,1),
(38,509,1),
(42,509,1),
(48,509,1),
(51,509,1),
(58,509,1),
(71,509,1),
(72,509,1),
(241,509,1),
(23,601,1),
(28,601,1),
(36,601,1),
(54,601,1),
(57,601,1),
(60,601,1),
(67,601,1),
(242,601,3),
(248,601,1),
(9,704,1),
(17,704,1),
(39,704,1),
(44,704,1),
(52,704,1),
(74,704,1),
(243,704,2),
(267,704,1),
(25,804,1),
(32,804,1),
(46,804,1),
(50,804,1),
(59,804,1),
(64,804,1),
(73,804,1),
(244,804,1),
(266,804,1);

/*Table structure for table `linha_produto` */

DROP TABLE IF EXISTS `linha_produto`;

CREATE TABLE `linha_produto` (
  `linha_produto` VARCHAR(5) NOT NULL,
  `descricao_linha` VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (`linha_produto`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `linha_produto` */

INSERT  INTO `linha_produto`(`linha_produto`,`descricao_linha`) VALUES 
('LP001','Passeio'),
('LP002','Utilitários'),
('LP003','Luxo');

/*Table structure for table `pedidos` */

DROP TABLE IF EXISTS `pedidos`;

CREATE TABLE `pedidos` (
  `numero_pedido` INT(11) NOT NULL DEFAULT '0',
  `codigo_cliente` INT(11) NOT NULL DEFAULT '0',
  `data_pedido` DATETIME DEFAULT NULL,
  `data_entrega` DATETIME DEFAULT NULL,
  `codigo_vendedor` VARCHAR(2) DEFAULT NULL,
  PRIMARY KEY (`numero_pedido`),
  KEY `codigo_cliente_idx` (`codigo_cliente`),
  KEY `codigo_vendedor_idx` (`codigo_vendedor`),
  CONSTRAINT `codigo_cliente` FOREIGN KEY (`codigo_cliente`) REFERENCES `clientes` (`codigo_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `codigo_vendedor` FOREIGN KEY (`codigo_vendedor`) REFERENCES `vendedores` (`codigo_vendedor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `pedidos` */

INSERT  INTO `pedidos`(`numero_pedido`,`codigo_cliente`,`data_pedido`,`data_entrega`,`codigo_vendedor`) VALUES 
(1,63,'2011-03-01 00:00:00','2011-03-01 00:00:00','02'),
(2,71,'2011-05-02 00:00:00','2011-05-02 00:00:00','03'),
(3,70,'2011-08-04 00:00:00','2011-08-04 00:00:00','05'),
(4,72,'2011-07-06 00:00:00','2011-07-06 00:00:00','06'),
(5,56,'2011-11-04 00:00:00','2011-11-04 00:00:00','04'),
(6,57,'2011-11-09 00:00:00','2011-11-24 00:00:00','05'),
(7,53,'2011-12-10 00:00:00','2011-12-28 00:00:00','06'),
(8,53,'2011-02-01 00:00:00','2011-02-21 00:00:00','04'),
(9,60,'2011-05-21 00:00:00','2011-05-22 00:00:00','03'),
(10,78,'2011-04-12 00:00:00','2011-04-24 00:00:00','03'),
(11,55,'2011-10-16 00:00:00','2011-10-29 00:00:00','02'),
(12,56,'2011-12-30 00:00:00','2009-01-20 00:00:00','05'),
(13,78,'2011-01-12 00:00:00','2011-01-08 00:00:00','01'),
(14,70,'2011-03-12 00:00:00','2011-03-20 00:00:00','01'),
(15,72,'2009-02-06 00:00:00','2009-02-22 00:00:00','04'),
(16,61,'2009-08-06 00:00:00','2009-08-30 00:00:00','03'),
(17,51,'2011-03-12 00:00:00','2011-03-29 00:00:00','04'),
(18,54,'2011-07-12 00:00:00','2011-07-29 00:00:00','03'),
(19,66,'2008-03-30 00:00:00','2010-03-17 00:00:00','05'),
(20,78,'2008-04-23 00:00:00','2010-04-15 00:00:00','06'),
(21,75,'2008-05-12 00:00:00','2010-05-30 00:00:00','02'),
(22,68,'2009-01-12 00:00:00','2009-01-14 00:00:00','02'),
(23,64,'2009-03-18 00:00:00','2009-03-19 00:00:00','01'),
(24,75,'2009-02-14 00:00:00','2009-02-14 00:00:00','01'),
(25,70,'2009-02-02 00:00:00','2009-02-03 00:00:00','05'),
(26,56,'2009-01-29 00:00:00','2009-01-30 00:00:00','04'),
(27,65,'2009-04-01 00:00:00','2009-04-04 00:00:00','06'),
(28,71,'2009-06-21 00:00:00','2009-06-24 00:00:00','06'),
(29,51,'2009-04-16 00:00:00','2009-04-17 00:00:00','05'),
(30,70,'2009-06-28 00:00:00','2009-06-29 00:00:00','02'),
(31,79,'2009-05-21 00:00:00','2009-05-22 00:00:00','04'),
(32,72,'2009-04-20 00:00:00','2009-04-22 00:00:00','03'),
(33,54,'2009-04-05 00:00:00','2009-04-07 00:00:00','05'),
(34,55,'2009-04-23 00:00:00','2009-04-25 00:00:00','03'),
(35,53,'2009-08-26 00:00:00','2009-08-27 00:00:00','05'),
(36,65,'2009-09-13 00:00:00','2009-09-14 00:00:00','01'),
(37,64,'2009-08-29 00:00:00','2009-08-30 00:00:00','01'),
(38,71,'2009-09-17 00:00:00','2009-09-19 00:00:00','02'),
(39,51,'2009-09-19 00:00:00','2009-09-20 00:00:00','04'),
(40,60,'2009-07-02 00:00:00','2009-07-04 00:00:00','02'),
(41,75,'2009-08-23 00:00:00','2009-08-25 00:00:00','03'),
(42,65,'2009-11-05 00:00:00','2009-11-07 00:00:00','04'),
(43,71,'2009-10-31 00:00:00','2009-11-01 00:00:00','01'),
(44,60,'2009-12-24 00:00:00','2009-12-26 00:00:00','05'),
(45,75,'2009-11-06 00:00:00','2009-11-07 00:00:00','03'),
(46,66,'2009-10-25 00:00:00','2009-10-26 00:00:00','02'),
(47,68,'2009-04-07 00:00:00','2009-04-08 00:00:00','05'),
(48,64,'2009-06-18 00:00:00','2009-06-19 00:00:00','04'),
(49,57,'2009-05-20 00:00:00','2009-05-22 00:00:00','04'),
(50,79,'2009-01-03 00:00:00','2009-01-05 00:00:00','01'),
(51,54,'2009-01-10 00:00:00','2009-01-11 00:00:00','03'),
(52,63,'2009-02-15 00:00:00','2009-02-16 00:00:00','02'),
(53,55,'2009-02-16 00:00:00','2009-02-17 00:00:00','02'),
(54,61,'2009-01-19 00:00:00','2009-01-20 00:00:00','05'),
(55,66,'2009-09-26 00:00:00','2009-09-27 00:00:00','06'),
(56,78,'2009-09-28 00:00:00','2009-10-01 00:00:00','04'),
(57,56,'2009-07-21 00:00:00','2009-07-25 00:00:00','04'),
(58,79,'2009-08-14 00:00:00','2009-08-15 00:00:00','03'),
(59,63,'2009-08-17 00:00:00','2009-08-16 00:00:00','01'),
(60,55,'2009-07-29 00:00:00','2009-07-30 00:00:00','01'),
(61,57,'2009-09-03 00:00:00','2009-09-04 00:00:00','02'),
(62,51,'2009-12-27 00:00:00','2009-12-27 00:00:00','06'),
(63,78,'2009-11-06 00:00:00','2009-11-07 00:00:00','05'),
(64,70,'2009-12-12 00:00:00','2009-12-13 00:00:00','05'),
(65,72,'2009-12-13 00:00:00','2009-12-16 00:00:00','02'),
(66,54,'2009-11-14 00:00:00','2009-11-17 00:00:00','01'),
(67,63,'2009-12-15 00:00:00','2009-12-16 00:00:00','02'),
(68,61,'2009-12-16 00:00:00','2009-12-17 00:00:00','05'),
(69,55,'2009-09-16 00:00:00','2009-09-17 00:00:00','05'),
(70,57,'2009-08-05 00:00:00','2009-08-07 00:00:00','02'),
(71,51,'2009-10-23 00:00:00','2009-10-25 00:00:00','03'),
(72,78,'2009-11-01 00:00:00','2009-11-02 00:00:00','04'),
(73,70,'2009-12-23 00:00:00','2009-12-24 00:00:00','01'),
(74,54,'2009-10-12 00:00:00','2009-10-14 00:00:00','01'),
(75,63,'2009-10-13 00:00:00','2009-10-15 00:00:00','04'),
(76,61,'2009-10-09 00:00:00','2009-10-14 00:00:00','03'),
(77,72,'2009-12-10 00:00:00','2009-12-11 00:00:00','02'),
(78,77,'2008-04-01 00:00:00','2010-06-10 00:00:00','03'),
(79,56,'2011-01-10 00:00:00','2011-02-02 00:00:00','03'),
(80,63,'2011-06-03 00:00:00','2011-06-03 00:00:00','02'),
(81,71,'2011-07-03 00:00:00','2011-07-03 00:00:00','03'),
(82,70,'2011-08-05 00:00:00','2011-08-05 00:00:00','05'),
(83,72,'2011-09-06 00:00:00','2011-09-06 00:00:00','06'),
(84,56,'2011-10-04 00:00:00','2011-10-04 00:00:00','04'),
(85,57,'2011-11-09 00:00:00','2011-11-09 00:00:00','01'),
(86,53,'2011-12-10 00:00:00','2011-12-10 00:00:00','02'),
(87,53,'2011-02-01 00:00:00','2011-02-01 00:00:00','02'),
(88,60,'2011-05-21 00:00:00','2011-05-21 00:00:00','03'),
(89,78,'2011-04-12 00:00:00','2011-04-12 00:00:00','05'),
(90,55,'2011-10-16 00:00:00','2011-10-16 00:00:00','06'),
(91,56,'2011-12-30 00:00:00','2011-12-30 00:00:00','04'),
(92,78,'2011-01-12 00:00:00','2011-01-12 00:00:00','01'),
(93,70,'2011-03-12 00:00:00','2011-03-12 00:00:00','02'),
(94,72,'2010-02-06 00:00:00','2010-02-06 00:00:00','02'),
(95,61,'2010-08-06 00:00:00','2010-08-06 00:00:00','03'),
(96,51,'2011-03-12 00:00:00','2011-03-12 00:00:00','05'),
(97,54,'2011-07-12 00:00:00','2011-07-12 00:00:00','06'),
(98,66,'2008-03-30 00:00:00','2008-03-30 00:00:00','04'),
(99,78,'2008-04-23 00:00:00','2008-04-23 00:00:00','01'),
(100,75,'2008-05-12 00:00:00','2008-05-12 00:00:00','02'),
(101,68,'2010-01-12 00:00:00','2010-01-12 00:00:00','02'),
(102,64,'2010-03-18 00:00:00','2010-03-18 00:00:00','03'),
(103,75,'2010-02-14 00:00:00','2010-02-14 00:00:00','05'),
(104,70,'2010-02-02 00:00:00','2010-02-02 00:00:00','06'),
(105,56,'2010-01-29 00:00:00','2010-01-29 00:00:00','04'),
(106,65,'2010-04-01 00:00:00','2010-04-01 00:00:00','01'),
(107,71,'2010-06-21 00:00:00','2010-06-21 00:00:00','02'),
(108,51,'2010-04-16 00:00:00','2010-04-16 00:00:00','02'),
(109,70,'2010-06-28 00:00:00','2010-06-28 00:00:00','03'),
(110,79,'2010-05-21 00:00:00','2010-05-21 00:00:00','05'),
(111,72,'2010-04-20 00:00:00','2010-04-20 00:00:00','06'),
(112,54,'2010-04-05 00:00:00','2010-04-05 00:00:00','04'),
(113,55,'2010-04-23 00:00:00','2010-04-23 00:00:00','01'),
(114,53,'2010-08-26 00:00:00','2010-08-26 00:00:00','02'),
(115,65,'2010-09-13 00:00:00','2010-09-13 00:00:00','02'),
(116,64,'2010-08-29 00:00:00','2010-08-29 00:00:00','03'),
(117,71,'2010-09-17 00:00:00','2010-09-17 00:00:00','05'),
(118,51,'2010-09-19 00:00:00','2010-09-19 00:00:00','06'),
(119,60,'2010-07-02 00:00:00','2010-07-02 00:00:00','04'),
(120,75,'2010-08-23 00:00:00','2010-08-23 00:00:00','01'),
(121,65,'2010-11-05 00:00:00','2010-11-05 00:00:00','02'),
(122,71,'2010-10-31 00:00:00','2010-10-31 00:00:00','02'),
(123,60,'2010-12-24 00:00:00','2010-12-24 00:00:00','03'),
(124,75,'2010-11-06 00:00:00','2010-11-06 00:00:00','05'),
(125,53,'2009-05-12 00:00:00','2009-05-27 00:00:00','03'),
(140,66,'2010-10-25 00:00:00','2010-10-25 00:00:00','06'),
(141,68,'2010-04-07 00:00:00','2010-04-07 00:00:00','04'),
(142,64,'2010-06-18 00:00:00','2010-06-18 00:00:00','01'),
(143,57,'2010-05-20 00:00:00','2010-05-20 00:00:00','02'),
(144,79,'2010-01-03 00:00:00','2010-01-03 00:00:00','02'),
(145,54,'2010-01-10 00:00:00','2010-01-10 00:00:00','03'),
(146,63,'2010-02-15 00:00:00','2010-02-15 00:00:00','05'),
(147,55,'2010-02-16 00:00:00','2010-02-16 00:00:00','06'),
(148,61,'2010-01-19 00:00:00','2010-01-19 00:00:00','04'),
(149,66,'2010-09-26 00:00:00','2010-09-26 00:00:00','01'),
(150,78,'2010-09-28 00:00:00','2010-09-28 00:00:00','02'),
(151,56,'2010-07-21 00:00:00','2010-07-21 00:00:00','02'),
(152,79,'2010-08-14 00:00:00','2010-08-14 00:00:00','03'),
(153,63,'2010-08-17 00:00:00','2010-08-17 00:00:00','05'),
(154,55,'2010-07-29 00:00:00','2010-07-29 00:00:00','06'),
(155,57,'2010-09-03 00:00:00','2010-09-03 00:00:00','04'),
(156,51,'2010-12-27 00:00:00','2010-12-27 00:00:00','01'),
(157,78,'2010-11-06 00:00:00','2010-11-06 00:00:00','02'),
(158,70,'2010-12-12 00:00:00','2010-12-12 00:00:00','02'),
(159,72,'2010-12-13 00:00:00','2010-12-13 00:00:00','03'),
(160,54,'2010-11-14 00:00:00','2010-11-14 00:00:00','05'),
(161,63,'2010-12-15 00:00:00','2010-12-15 00:00:00','06'),
(162,61,'2010-12-16 00:00:00','2010-12-16 00:00:00','04'),
(163,55,'2010-09-16 00:00:00','2010-09-16 00:00:00','01'),
(164,57,'2010-08-05 00:00:00','2010-08-05 00:00:00','02'),
(165,51,'2010-10-23 00:00:00','2010-10-23 00:00:00','02'),
(166,78,'2010-11-01 00:00:00','2010-11-01 00:00:00','03'),
(167,70,'2010-12-23 00:00:00','2010-12-23 00:00:00','05'),
(168,54,'2010-10-12 00:00:00','2010-10-12 00:00:00','06'),
(169,63,'2010-10-13 00:00:00','2010-10-13 00:00:00','04'),
(170,61,'2010-10-09 00:00:00','2010-10-09 00:00:00','01'),
(171,72,'2010-12-10 00:00:00','2010-12-10 00:00:00','02'),
(172,77,'2008-04-01 00:00:00','2008-04-01 00:00:00','02'),
(173,56,'2011-01-10 00:00:00','2011-01-10 00:00:00','03'),
(174,53,'2010-05-12 00:00:00','2010-05-12 00:00:00','05'),
(175,64,'2010-12-30 00:00:00','2010-12-30 00:00:00','06'),
(176,55,'2010-10-16 00:00:00','2010-10-16 00:00:00','04'),
(177,65,'2008-01-10 00:00:00','2008-01-10 00:00:00','01'),
(178,56,'2008-06-04 00:00:00','2008-06-04 00:00:00','02'),
(179,63,'2008-01-03 00:00:00','2008-01-03 00:00:00','02'),
(180,57,'2008-01-09 00:00:00','2008-01-09 00:00:00','03'),
(181,71,'2011-02-03 00:00:00','2011-02-03 00:00:00','05'),
(182,53,'2010-11-10 00:00:00','2010-11-10 00:00:00','06'),
(183,70,'2008-02-05 00:00:00','2008-02-05 00:00:00','04'),
(184,53,'2010-12-30 00:00:00','2010-12-30 00:00:00','01'),
(185,72,'2010-02-06 00:00:00','2010-02-06 00:00:00','02'),
(186,60,'2008-03-21 00:00:00','2008-03-21 00:00:00','02'),
(187,61,'2010-06-06 00:00:00','2010-06-06 00:00:00','03'),
(188,68,'2010-07-12 00:00:00','2010-07-12 00:00:00','05'),
(189,51,'2010-03-12 00:00:00','2010-03-12 00:00:00','06'),
(190,68,'2010-10-16 00:00:00','2010-10-16 00:00:00','04'),
(191,54,'2010-09-12 00:00:00','2010-09-12 00:00:00','01'),
(192,66,'2010-04-30 00:00:00','2010-04-30 00:00:00','02'),
(193,78,'2008-01-23 00:00:00','2008-01-23 00:00:00','02'),
(194,75,'2010-08-12 00:00:00','2010-08-12 00:00:00','03'),
(195,79,'2010-10-12 00:00:00','2010-10-12 00:00:00','05'),
(196,78,'2010-09-28 00:00:00','2010-09-28 00:00:00','06'),
(197,66,'2010-09-26 00:00:00','2010-09-26 00:00:00','04'),
(198,56,'2010-07-21 00:00:00','2010-07-21 00:00:00','01'),
(199,79,'2010-08-14 00:00:00','2010-08-14 00:00:00','02'),
(200,63,'2010-08-17 00:00:00','2010-08-17 00:00:00','02'),
(201,55,'2010-07-29 00:00:00','2010-07-29 00:00:00','03'),
(202,57,'2010-09-03 00:00:00','2010-09-03 00:00:00','05'),
(203,51,'2010-12-27 00:00:00','2010-12-27 00:00:00','06'),
(204,78,'2010-11-06 00:00:00','2010-11-06 00:00:00','04'),
(205,70,'2010-12-12 00:00:00','2010-12-12 00:00:00','01'),
(206,72,'2011-02-13 00:00:00','2011-02-13 00:00:00','02'),
(207,54,'2011-01-14 00:00:00','2011-01-14 00:00:00','01'),
(208,63,'2011-01-15 00:00:00','2011-01-15 00:00:00','01'),
(209,61,'2011-02-16 00:00:00','2011-02-16 00:00:00','01'),
(210,55,'2011-01-16 00:00:00','2011-01-16 00:00:00','02'),
(211,57,'2011-02-05 00:00:00','2011-02-05 00:00:00','02'),
(212,51,'2011-01-23 00:00:00','2011-01-23 00:00:00','02'),
(213,78,'2011-01-01 00:00:00','2011-01-01 00:00:00','02'),
(214,70,'2011-02-23 00:00:00','2011-02-23 00:00:00','02'),
(215,54,'2011-01-12 00:00:00','2011-01-12 00:00:00','02'),
(216,63,'2011-01-13 00:00:00','2011-01-13 00:00:00','02'),
(217,61,'2011-01-09 00:00:00','2011-01-09 00:00:00','02'),
(218,72,'2010-12-10 00:00:00','2010-12-10 00:00:00','02'),
(219,77,'2008-04-01 00:00:00','2008-04-01 00:00:00','02'),
(220,56,'2011-01-10 00:00:00','2011-01-10 00:00:00','04'),
(221,53,'2010-05-12 00:00:00','2010-05-12 00:00:00','03'),
(222,64,'2010-12-30 00:00:00','2010-12-30 00:00:00','02'),
(223,55,'2010-10-16 00:00:00','2010-10-16 00:00:00','02'),
(224,65,'2008-01-10 00:00:00','2008-01-10 00:00:00','02'),
(225,56,'2008-06-04 00:00:00','2008-06-04 00:00:00','02'),
(226,63,'2008-01-03 00:00:00','2008-01-03 00:00:00','02'),
(227,57,'2008-01-09 00:00:00','2008-01-09 00:00:00','02'),
(228,71,'2011-02-03 00:00:00','2011-02-03 00:00:00','02'),
(229,53,'2010-11-10 00:00:00','2010-11-10 00:00:00','02'),
(230,70,'2008-02-05 00:00:00','2008-02-05 00:00:00','02'),
(231,53,'2010-12-30 00:00:00','2010-12-30 00:00:00','02'),
(232,72,'2010-02-06 00:00:00','2010-02-06 00:00:00','02'),
(233,60,'2008-03-21 00:00:00','2008-03-21 00:00:00','01'),
(234,61,'2010-06-06 00:00:00','2010-06-06 00:00:00','01'),
(235,68,'2010-07-12 00:00:00','2010-07-12 00:00:00','02'),
(236,51,'2010-03-12 00:00:00','2010-03-12 00:00:00','02'),
(237,68,'2010-10-16 00:00:00','2010-10-16 00:00:00','02'),
(238,54,'2010-09-12 00:00:00','2010-09-12 00:00:00','02'),
(239,55,'2009-10-16 00:00:00','2009-10-30 00:00:00','01'),
(240,65,'2008-01-10 00:00:00','2010-01-29 00:00:00','04'),
(241,66,'2010-04-30 00:00:00','2010-04-30 00:00:00','02'),
(242,78,'2008-01-23 00:00:00','2008-01-23 00:00:00','01'),
(243,75,'2010-08-12 00:00:00','2010-08-12 00:00:00','01'),
(244,79,'2010-10-12 00:00:00','2010-10-12 00:00:00','01'),
(245,56,'2008-06-04 00:00:00','2010-06-19 00:00:00','05'),
(246,63,'2008-01-03 00:00:00','2010-01-24 00:00:00','06'),
(247,57,'2008-01-09 00:00:00','2010-01-24 00:00:00','03'),
(248,71,'2011-02-03 00:00:00','2011-02-27 00:00:00','05'),
(249,53,'2009-11-10 00:00:00','2009-11-28 00:00:00','04'),
(250,70,'2008-02-05 00:00:00','2010-02-20 00:00:00','02'),
(251,53,'2009-12-30 00:00:00','2010-01-30 00:00:00','04'),
(252,72,'2009-02-06 00:00:00','2009-02-26 00:00:00','02'),
(253,60,'2008-03-21 00:00:00','2010-03-31 00:00:00','05'),
(254,61,'2009-06-06 00:00:00','2009-06-30 00:00:00','03'),
(255,68,'2009-07-12 00:00:00','2009-07-24 00:00:00','01'),
(256,51,'2009-03-12 00:00:00','2009-03-29 00:00:00','04'),
(257,68,'2009-10-16 00:00:00','2009-10-29 00:00:00','03'),
(258,54,'2009-09-12 00:00:00','2009-09-29 00:00:00','06'),
(259,66,'2009-04-30 00:00:00','2009-05-17 00:00:00','05'),
(260,78,'2008-01-23 00:00:00','2010-02-15 00:00:00','05'),
(261,75,'2009-08-12 00:00:00','2009-08-30 00:00:00','05'),
(262,79,'2009-10-12 00:00:00','2009-10-28 00:00:00','01'),
(263,78,'2009-09-28 00:00:00','2009-10-01 00:00:00','01'),
(264,66,'2009-09-26 00:00:00','2009-09-27 00:00:00','01'),
(265,56,'2009-07-21 00:00:00','2009-07-25 00:00:00','01'),
(266,79,'2009-08-14 00:00:00','2009-08-15 00:00:00','01'),
(267,63,'2009-08-17 00:00:00','2009-08-16 00:00:00','01'),
(268,55,'2009-07-29 00:00:00','2009-07-30 00:00:00','01'),
(269,57,'2009-09-03 00:00:00','2009-09-04 00:00:00','01'),
(270,51,'2009-12-27 00:00:00','2009-12-27 00:00:00','01'),
(271,78,'2009-11-06 00:00:00','2009-11-07 00:00:00','01'),
(272,70,'2009-12-12 00:00:00','2009-12-13 00:00:00','01'),
(273,72,'2011-02-13 00:00:00','2011-02-16 00:00:00','01'),
(274,54,'2011-01-14 00:00:00','2011-01-17 00:00:00','01'),
(275,63,'2011-01-15 00:00:00','2011-01-16 00:00:00','01'),
(276,61,'2011-02-16 00:00:00','2011-02-17 00:00:00','01'),
(277,55,'2011-01-16 00:00:00','2011-01-17 00:00:00','01'),
(278,57,'2011-02-05 00:00:00','2011-02-07 00:00:00','01'),
(279,51,'2011-01-23 00:00:00','2011-01-25 00:00:00','01'),
(280,78,'2011-01-01 00:00:00','2011-01-02 00:00:00','01'),
(281,70,'2011-02-23 00:00:00','2011-02-24 00:00:00','01'),
(282,54,'2011-01-12 00:00:00','2011-01-14 00:00:00','01'),
(300,63,'2011-01-13 00:00:00','2011-01-15 00:00:00','01'),
(301,61,'2011-01-09 00:00:00','2011-01-14 00:00:00','01'),
(302,72,'2009-12-10 00:00:00','2009-12-11 00:00:00','01'),
(303,77,'2008-04-01 00:00:00','2010-06-10 00:00:00','01'),
(304,56,'2011-01-10 00:00:00','2011-02-02 00:00:00','04'),
(305,53,'2009-05-12 00:00:00','2009-05-27 00:00:00','03'),
(306,64,'2009-12-30 00:00:00','2010-01-20 00:00:00','02'),
(307,55,'2009-10-16 00:00:00','2009-10-30 00:00:00','01'),
(308,65,'2008-01-10 00:00:00','2010-01-29 00:00:00','01'),
(309,56,'2008-06-04 00:00:00','2010-06-19 00:00:00','01'),
(310,63,'2008-01-03 00:00:00','2010-01-24 00:00:00','01'),
(311,57,'2008-01-09 00:00:00','2010-01-24 00:00:00','01'),
(312,71,'2011-02-03 00:00:00','2011-02-27 00:00:00','01'),
(313,53,'2009-11-10 00:00:00','2009-11-28 00:00:00','01'),
(314,70,'2008-02-05 00:00:00','2010-02-20 00:00:00','01'),
(315,53,'2009-12-30 00:00:00','2010-01-30 00:00:00','01'),
(316,72,'2009-02-06 00:00:00','2009-02-26 00:00:00','01'),
(317,60,'2008-03-21 00:00:00','2010-03-31 00:00:00','01'),
(318,61,'2009-06-06 00:00:00','2009-06-30 00:00:00','01'),
(319,68,'2009-07-12 00:00:00','2009-07-24 00:00:00','01'),
(320,51,'2009-03-12 00:00:00','2009-03-29 00:00:00','01'),
(321,68,'2009-10-16 00:00:00','2009-10-29 00:00:00','01'),
(322,54,'2009-09-12 00:00:00','2009-09-29 00:00:00','01'),
(323,66,'2009-04-30 00:00:00','2009-05-17 00:00:00','01'),
(324,78,'2008-01-23 00:00:00','2010-02-15 00:00:00','01'),
(325,75,'2009-08-12 00:00:00','2009-08-30 00:00:00','01'),
(326,79,'2009-10-12 00:00:00','2009-10-28 00:00:00','07');

/*Table structure for table `produtos` */

DROP TABLE IF EXISTS `produtos`;

CREATE TABLE `produtos` (
  `codigo_produto` INT(11) NOT NULL DEFAULT '0',
  `codigo_fornecedor` INT(11) DEFAULT NULL,
  `quantidade_estoque` INT(11) DEFAULT NULL,
  `descricao` VARCHAR(20) DEFAULT NULL,
  `PRECO` FLOAT DEFAULT NULL,
  `linha_produto` VARCHAR(5) DEFAULT NULL,
  PRIMARY KEY (`codigo_produto`),
  KEY `linha_produto_idx` (`linha_produto`),
  KEY `codigo_fornecedor_idx` (`codigo_fornecedor`),
  CONSTRAINT `codigo_fornecedor` FOREIGN KEY (`codigo_fornecedor`) REFERENCES `fornecedores` (`codigo_fornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `linha_produto` FOREIGN KEY (`linha_produto`) REFERENCES `linha_produto` (`linha_produto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `produtos` */

INSERT  INTO `produtos`(`codigo_produto`,`codigo_fornecedor`,`quantidade_estoque`,`descricao`,`PRECO`,`linha_produto`) VALUES 
(100,2,4,'Ford Fiesta',13950,'LP001'),
(101,6,5,'Toyota Hilux',91000,'LP002'),
(102,3,5,'Hyundai Azera',118895,'LP003'),
(201,1,8,'Hiundai Tucson',85900,'LP002'),
(202,6,9,'Toyota Corolla',156990,'LP003'),
(204,2,6,'Chevrolet Vectra',55800,'LP001'),
(301,4,10,'Citroen C5',190000,'LP003'),
(302,1,14,'Fiat Linea',54999,'LP001'),
(303,1,5,'KIA Sportge',83450,'LP002'),
(304,3,5,'Fiat Palio',14900,'LP001'),
(400,2,7,'Volkswagem Jetta',56900,'LP001'),
(401,6,5,'Ford Edge',84580,'LP002'),
(402,1,10,'Chevrolet Omega',128875,'LP003'),
(403,2,7,'Volkswagem Gol',14500,'LP001'),
(500,3,13,'Ford Focus',53320,'LP001'),
(504,5,8,'BMW X3',129990,'LP003'),
(509,1,5,'Honda Civic',140000,'LP003'),
(601,1,5,'Chevrolet Corsa',14300,'LP001'),
(704,5,3,'Volkswagem Passat',119999,'LP003'),
(804,3,1,'Jeep Gran Cherokee',80000,'LP002');

/*Table structure for table `regioes` */

DROP TABLE IF EXISTS `regioes`;

CREATE TABLE `regioes` (
  `codigo_regiao` VARCHAR(2) NOT NULL DEFAULT '',
  `nome_regiao` VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (`codigo_regiao`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `regioes` */

INSERT  INTO `regioes`(`codigo_regiao`,`nome_regiao`) VALUES 
('01','Sudeste'),
('02','Nordeste'),
('03','Norte'),
('04','Centro-Oeste'),
('05','Sul');

/*Table structure for table `vendedores` */

DROP TABLE IF EXISTS `vendedores`;

CREATE TABLE `vendedores` (
  `codigo_vendedor` VARCHAR(2) NOT NULL,
  `nome_vendedor` VARCHAR(20) DEFAULT NULL,
  `percentual_comissao` FLOAT DEFAULT NULL,
  `codigo_regiao` VARCHAR(2) DEFAULT NULL,
  PRIMARY KEY (`codigo_vendedor`),
  KEY `codigo_regiao_idx` (`codigo_regiao`),
  CONSTRAINT `codigo_regiao_fk` FOREIGN KEY (`codigo_regiao`) REFERENCES `regioes` (`codigo_regiao`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `vendedores` */

INSERT  INTO `vendedores`(`codigo_vendedor`,`nome_vendedor`,`percentual_comissao`,`codigo_regiao`) VALUES 
('01','Marcio',10,'01'),
('02','Gisele',15,'02'),
('03','Michele',12,'05'),
('04','Viviane',9,'03'),
('05','Rafaela',8,'04'),
('06','Institucional',1,'05'),
('07','Matheus',8,'04');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
