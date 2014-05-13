-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 07, 2013 at 08:28 PM
-- Server version: 5.5.28
-- PHP Version: 5.3.10-1ubuntu3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

-- --------------------------------------------------------

--
-- Table structure for table `pays`
--

CREATE TABLE IF NOT EXISTS `pays` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `code` int(3) NOT NULL,
  `alpha2` varchar(2) NOT NULL,
  `alpha3` varchar(3) NOT NULL,
  `nom_en_gb` varchar(45) NOT NULL,
  `nom_fr_fr` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alpha2` (`alpha2`),
  UNIQUE KEY `alpha3` (`alpha3`),
  UNIQUE KEY `code_unique` (`code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=242 ;

--
-- Dumping data for table `pays`
--

INSERT INTO `pays` (`id`, `code`, `alpha2`, `alpha3`, `nom_en_gb`, `nom_fr_fr`) VALUES
(1, 4, 'AF', 'AFG', 'Afghanistan', 'Afghanistan'),
(2, 8, 'AL', 'ALB', 'Albania', 'Albanie'),
(3, 10, 'AQ', 'ATA', 'Antarctica', 'Antarctique'),
(4, 12, 'DZ', 'DZA', 'Algeria', 'Algérie'),
(5, 16, 'AS', 'ASM', 'American Samoa', 'Samoa Américaines'),
(6, 20, 'AD', 'AND', 'Andorra', 'Andorre'),
(7, 24, 'AO', 'AGO', 'Angola', 'Angola'),
(8, 28, 'AG', 'ATG', 'Antigua and Barbuda', 'Antigua-et-Barbuda'),
(9, 31, 'AZ', 'AZE', 'Azerbaijan', 'Azerbaïdjan'),
(10, 32, 'AR', 'ARG', 'Argentina', 'Argentine'),
(11, 36, 'AU', 'AUS', 'Australia', 'Australie'),
(12, 40, 'AT', 'AUT', 'Austria', 'Autriche'),
(13, 44, 'BS', 'BHS', 'Bahamas', 'Bahamas'),
(14, 48, 'BH', 'BHR', 'Bahrain', 'Bahreïn'),
(15, 50, 'BD', 'BGD', 'Bangladesh', 'Bangladesh'),
(16, 51, 'AM', 'ARM', 'Armenia', 'Arménie'),
(17, 52, 'BB', 'BRB', 'Barbados', 'Barbade'),
(18, 56, 'BE', 'BEL', 'Belgium', 'Belgique'),
(19, 60, 'BM', 'BMU', 'Bermuda', 'Bermudes'),
(20, 64, 'BT', 'BTN', 'Bhutan', 'Bhoutan'),
(21, 68, 'BO', 'BOL', 'Bolivia', 'Bolivie'),
(22, 70, 'BA', 'BIH', 'Bosnia and Herzegovina', 'Bosnie-Herzégovine'),
(23, 72, 'BW', 'BWA', 'Botswana', 'Botswana'),
(24, 74, 'BV', 'BVT', 'Bouvet Island', 'Île Bouvet'),
(25, 76, 'BR', 'BRA', 'Brazil', 'Brésil'),
(26, 84, 'BZ', 'BLZ', 'Belize', 'Belize'),
(27, 86, 'IO', 'IOT', 'British Indian Ocean Territory', 'Territoire Britannique de l''Océan Indien'),
(28, 90, 'SB', 'SLB', 'Solomon Islands', 'Îles Salomon'),
(29, 92, 'VG', 'VGB', 'British Virgin Islands', 'Îles Vierges Britanniques'),
(30, 96, 'BN', 'BRN', 'Brunei Darussalam', 'Brunéi Darussalam'),
(31, 100, 'BG', 'BGR', 'Bulgaria', 'Bulgarie'),
(32, 104, 'MM', 'MMR', 'Myanmar', 'Myanmar'),
(33, 108, 'BI', 'BDI', 'Burundi', 'Burundi'),
(34, 112, 'BY', 'BLR', 'Belarus', 'Bélarus'),
(35, 116, 'KH', 'KHM', 'Cambodia', 'Cambodge'),
(36, 120, 'CM', 'CMR', 'Cameroon', 'Cameroun'),
(37, 124, 'CA', 'CAN', 'Canada', 'Canada'),
(38, 132, 'CV', 'CPV', 'Cape Verde', 'Cap-vert'),
(39, 136, 'KY', 'CYM', 'Cayman Islands', 'Îles Caïmanes'),
(40, 140, 'CF', 'CAF', 'Central African', 'République Centrafricaine'),
(41, 144, 'LK', 'LKA', 'Sri Lanka', 'Sri Lanka'),
(42, 148, 'TD', 'TCD', 'Chad', 'Tchad'),
(43, 152, 'CL', 'CHL', 'Chile', 'Chili'),
(44, 156, 'CN', 'CHN', 'China', 'Chine'),
(45, 158, 'TW', 'TWN', 'Taiwan', 'Taïwan'),
(46, 162, 'CX', 'CXR', 'Christmas Island', 'Île Christmas'),
(47, 166, 'CC', 'CCK', 'Cocos (Keeling) Islands', 'Îles Cocos (Keeling)'),
(48, 170, 'CO', 'COL', 'Colombia', 'Colombie'),
(49, 174, 'KM', 'COM', 'Comoros', 'Comores'),
(50, 175, 'YT', 'MYT', 'Mayotte', 'Mayotte'),
(51, 178, 'CG', 'COG', 'Republic of the Congo', 'République du Congo'),
(52, 180, 'CD', 'COD', 'The Democratic Republic Of The Congo', 'République Démocratique du Congo'),
(53, 184, 'CK', 'COK', 'Cook Islands', 'Îles Cook'),
(54, 188, 'CR', 'CRI', 'Costa Rica', 'Costa Rica'),
(55, 191, 'HR', 'HRV', 'Croatia', 'Croatie'),
(56, 192, 'CU', 'CUB', 'Cuba', 'Cuba'),
(57, 196, 'CY', 'CYP', 'Cyprus', 'Chypre'),
(58, 203, 'CZ', 'CZE', 'Czech Republic', 'République Tchèque'),
(59, 204, 'BJ', 'BEN', 'Benin', 'Bénin'),
(60, 208, 'DK', 'DNK', 'Denmark', 'Danemark'),
(61, 212, 'DM', 'DMA', 'Dominica', 'Dominique'),
(62, 214, 'DO', 'DOM', 'Dominican Republic', 'République Dominicaine'),
(63, 218, 'EC', 'ECU', 'Ecuador', 'Équateur'),
(64, 222, 'SV', 'SLV', 'El Salvador', 'El Salvador'),
(65, 226, 'GQ', 'GNQ', 'Equatorial Guinea', 'Guinée Équatoriale'),
(66, 231, 'ET', 'ETH', 'Ethiopia', 'Éthiopie'),
(67, 232, 'ER', 'ERI', 'Eritrea', 'Érythrée'),
(68, 233, 'EE', 'EST', 'Estonia', 'Estonie'),
(69, 234, 'FO', 'FRO', 'Faroe Islands', 'Îles Féroé'),
(70, 238, 'FK', 'FLK', 'Falkland Islands', 'Îles (malvinas) Falkland'),
(71, 239, 'GS', 'SGS', 'South Georgia and the South Sandwich Islands', 'Géorgie du Sud et les Îles Sandwich du Sud'),
(72, 242, 'FJ', 'FJI', 'Fiji', 'Fidji'),
(73, 246, 'FI', 'FIN', 'Finland', 'Finlande'),
(74, 248, 'AX', 'ALA', 'Åland Islands', 'Îles Åland'),
(75, 250, 'FR', 'FRA', 'France', 'France'),
(76, 254, 'GF', 'GUF', 'French Guiana', 'Guyane Française'),
(77, 258, 'PF', 'PYF', 'French Polynesia', 'Polynésie Française'),
(78, 260, 'TF', 'ATF', 'French Southern Territories', 'Terres Australes Françaises'),
(79, 262, 'DJ', 'DJI', 'Djibouti', 'Djibouti'),
(80, 266, 'GA', 'GAB', 'Gabon', 'Gabon'),
(81, 268, 'GE', 'GEO', 'Georgia', 'Géorgie'),
(82, 270, 'GM', 'GMB', 'Gambia', 'Gambie'),
(83, 275, 'PS', 'PSE', 'Occupied Palestinian Territory', 'Territoire Palestinien Occupé'),
(84, 276, 'DE', 'DEU', 'Germany', 'Allemagne'),
(85, 288, 'GH', 'GHA', 'Ghana', 'Ghana'),
(86, 292, 'GI', 'GIB', 'Gibraltar', 'Gibraltar'),
(87, 296, 'KI', 'KIR', 'Kiribati', 'Kiribati'),
(88, 300, 'GR', 'GRC', 'Greece', 'Grèce'),
(89, 304, 'GL', 'GRL', 'Greenland', 'Groenland'),
(90, 308, 'GD', 'GRD', 'Grenada', 'Grenade'),
(91, 312, 'GP', 'GLP', 'Guadeloupe', 'Guadeloupe'),
(92, 316, 'GU', 'GUM', 'Guam', 'Guam'),
(93, 320, 'GT', 'GTM', 'Guatemala', 'Guatemala'),
(94, 324, 'GN', 'GIN', 'Guinea', 'Guinée'),
(95, 328, 'GY', 'GUY', 'Guyana', 'Guyana'),
(96, 332, 'HT', 'HTI', 'Haiti', 'Haïti'),
(97, 334, 'HM', 'HMD', 'Heard Island and McDonald Islands', 'Îles Heard et Mcdonald'),
(98, 336, 'VA', 'VAT', 'Vatican City State', 'Saint-Siège (état de la Cité du Vatican)'),
(99, 340, 'HN', 'HND', 'Honduras', 'Honduras'),
(100, 344, 'HK', 'HKG', 'Hong Kong', 'Hong-Kong'),
(101, 348, 'HU', 'HUN', 'Hungary', 'Hongrie'),
(102, 352, 'IS', 'ISL', 'Iceland', 'Islande'),
(103, 356, 'IN', 'IND', 'India', 'Inde'),
(104, 360, 'ID', 'IDN', 'Indonesia', 'Indonésie'),
(105, 364, 'IR', 'IRN', 'Islamic Republic of Iran', 'République Islamique d''Iran'),
(106, 368, 'IQ', 'IRQ', 'Iraq', 'Iraq'),
(107, 372, 'IE', 'IRL', 'Ireland', 'Irlande'),
(108, 376, 'IL', 'ISR', 'Israel', 'Israël'),
(109, 380, 'IT', 'ITA', 'Italy', 'Italie'),
(110, 384, 'CI', 'CIV', 'Côte d''Ivoire', 'Côte d''Ivoire'),
(111, 388, 'JM', 'JAM', 'Jamaica', 'Jamaïque'),
(112, 392, 'JP', 'JPN', 'Japan', 'Japon'),
(113, 398, 'KZ', 'KAZ', 'Kazakhstan', 'Kazakhstan'),
(114, 400, 'JO', 'JOR', 'Jordan', 'Jordanie'),
(115, 404, 'KE', 'KEN', 'Kenya', 'Kenya'),
(116, 408, 'KP', 'PRK', 'Democratic People''s Republic of Korea', 'République Populaire Démocratique de Corée'),
(117, 410, 'KR', 'KOR', 'Republic of Korea', 'République de Corée'),
(118, 414, 'KW', 'KWT', 'Kuwait', 'Koweït'),
(119, 417, 'KG', 'KGZ', 'Kyrgyzstan', 'Kirghizistan'),
(120, 418, 'LA', 'LAO', 'Lao People''s Democratic Republic', 'République Démocratique Populaire Lao'),
(121, 422, 'LB', 'LBN', 'Lebanon', 'Liban'),
(122, 426, 'LS', 'LSO', 'Lesotho', 'Lesotho'),
(123, 428, 'LV', 'LVA', 'Latvia', 'Lettonie'),
(124, 430, 'LR', 'LBR', 'Liberia', 'Libéria'),
(125, 434, 'LY', 'LBY', 'Libyan Arab Jamahiriya', 'Jamahiriya Arabe Libyenne'),
(126, 438, 'LI', 'LIE', 'Liechtenstein', 'Liechtenstein'),
(127, 440, 'LT', 'LTU', 'Lithuania', 'Lituanie'),
(128, 442, 'LU', 'LUX', 'Luxembourg', 'Luxembourg'),
(129, 446, 'MO', 'MAC', 'Macao', 'Macao'),
(130, 450, 'MG', 'MDG', 'Madagascar', 'Madagascar'),
(131, 454, 'MW', 'MWI', 'Malawi', 'Malawi'),
(132, 458, 'MY', 'MYS', 'Malaysia', 'Malaisie'),
(133, 462, 'MV', 'MDV', 'Maldives', 'Maldives'),
(134, 466, 'ML', 'MLI', 'Mali', 'Mali'),
(135, 470, 'MT', 'MLT', 'Malta', 'Malte'),
(136, 474, 'MQ', 'MTQ', 'Martinique', 'Martinique'),
(137, 478, 'MR', 'MRT', 'Mauritania', 'Mauritanie'),
(138, 480, 'MU', 'MUS', 'Mauritius', 'Maurice'),
(139, 484, 'MX', 'MEX', 'Mexico', 'Mexique'),
(140, 492, 'MC', 'MCO', 'Monaco', 'Monaco'),
(141, 496, 'MN', 'MNG', 'Mongolia', 'Mongolie'),
(142, 498, 'MD', 'MDA', 'Republic of Moldova', 'République de Moldova'),
(143, 500, 'MS', 'MSR', 'Montserrat', 'Montserrat'),
(144, 504, 'MA', 'MAR', 'Morocco', 'Maroc'),
(145, 508, 'MZ', 'MOZ', 'Mozambique', 'Mozambique'),
(146, 512, 'OM', 'OMN', 'Oman', 'Oman'),
(147, 516, 'NA', 'NAM', 'Namibia', 'Namibie'),
(148, 520, 'NR', 'NRU', 'Nauru', 'Nauru'),
(149, 524, 'NP', 'NPL', 'Nepal', 'Népal'),
(150, 528, 'NL', 'NLD', 'Netherlands', 'Pays-Bas'),
(151, 530, 'AN', 'ANT', 'Netherlands Antilles', 'Antilles Néerlandaises'),
(152, 533, 'AW', 'ABW', 'Aruba', 'Aruba'),
(153, 540, 'NC', 'NCL', 'New Caledonia', 'Nouvelle-Calédonie'),
(154, 548, 'VU', 'VUT', 'Vanuatu', 'Vanuatu'),
(155, 554, 'NZ', 'NZL', 'New Zealand', 'Nouvelle-Zélande'),
(156, 558, 'NI', 'NIC', 'Nicaragua', 'Nicaragua'),
(157, 562, 'NE', 'NER', 'Niger', 'Niger'),
(158, 566, 'NG', 'NGA', 'Nigeria', 'Nigéria'),
(159, 570, 'NU', 'NIU', 'Niue', 'Niué'),
(160, 574, 'NF', 'NFK', 'Norfolk Island', 'Île Norfolk'),
(161, 578, 'NO', 'NOR', 'Norway', 'Norvège'),
(162, 580, 'MP', 'MNP', 'Northern Mariana Islands', 'Îles Mariannes du Nord'),
(163, 581, 'UM', 'UMI', 'United States Minor Outlying Islands', 'Îles Mineures Éloignées des États-Unis'),
(164, 583, 'FM', 'FSM', 'Federated States of Micronesia', 'États Fédérés de Micronésie'),
(165, 584, 'MH', 'MHL', 'Marshall Islands', 'Îles Marshall'),
(166, 585, 'PW', 'PLW', 'Palau', 'Palaos'),
(167, 586, 'PK', 'PAK', 'Pakistan', 'Pakistan'),
(168, 591, 'PA', 'PAN', 'Panama', 'Panama'),
(169, 598, 'PG', 'PNG', 'Papua New Guinea', 'Papouasie-Nouvelle-Guinée'),
(170, 600, 'PY', 'PRY', 'Paraguay', 'Paraguay'),
(171, 604, 'PE', 'PER', 'Peru', 'Pérou'),
(172, 608, 'PH', 'PHL', 'Philippines', 'Philippines'),
(173, 612, 'PN', 'PCN', 'Pitcairn', 'Pitcairn'),
(174, 616, 'PL', 'POL', 'Poland', 'Pologne'),
(175, 620, 'PT', 'PRT', 'Portugal', 'Portugal'),
(176, 624, 'GW', 'GNB', 'Guinea-Bissau', 'Guinée-Bissau'),
(177, 626, 'TL', 'TLS', 'Timor-Leste', 'Timor-Leste'),
(178, 630, 'PR', 'PRI', 'Puerto Rico', 'Porto Rico'),
(179, 634, 'QA', 'QAT', 'Qatar', 'Qatar'),
(180, 638, 'RE', 'REU', 'Réunion', 'Réunion'),
(181, 642, 'RO', 'ROU', 'Romania', 'Roumanie'),
(182, 643, 'RU', 'RUS', 'Russian Federation', 'Fédération de Russie'),
(183, 646, 'RW', 'RWA', 'Rwanda', 'Rwanda'),
(184, 654, 'SH', 'SHN', 'Saint Helena', 'Sainte-Hélène'),
(185, 659, 'KN', 'KNA', 'Saint Kitts and Nevis', 'Saint-Kitts-et-Nevis'),
(186, 660, 'AI', 'AIA', 'Anguilla', 'Anguilla'),
(187, 662, 'LC', 'LCA', 'Saint Lucia', 'Sainte-Lucie'),
(188, 666, 'PM', 'SPM', 'Saint-Pierre and Miquelon', 'Saint-Pierre-et-Miquelon'),
(189, 670, 'VC', 'VCT', 'Saint Vincent and the Grenadines', 'Saint-Vincent-et-les Grenadines'),
(190, 674, 'SM', 'SMR', 'San Marino', 'Saint-Marin'),
(191, 678, 'ST', 'STP', 'Sao Tome and Principe', 'Sao Tomé-et-Principe'),
(192, 682, 'SA', 'SAU', 'Saudi Arabia', 'Arabie Saoudite'),
(193, 686, 'SN', 'SEN', 'Senegal', 'Sénégal'),
(194, 690, 'SC', 'SYC', 'Seychelles', 'Seychelles'),
(195, 694, 'SL', 'SLE', 'Sierra Leone', 'Sierra Leone'),
(196, 702, 'SG', 'SGP', 'Singapore', 'Singapour'),
(197, 703, 'SK', 'SVK', 'Slovakia', 'Slovaquie'),
(198, 704, 'VN', 'VNM', 'Vietnam', 'Viet Nam'),
(199, 705, 'SI', 'SVN', 'Slovenia', 'Slovénie'),
(200, 706, 'SO', 'SOM', 'Somalia', 'Somalie'),
(201, 710, 'ZA', 'ZAF', 'South Africa', 'Afrique du Sud'),
(202, 716, 'ZW', 'ZWE', 'Zimbabwe', 'Zimbabwe'),
(203, 724, 'ES', 'ESP', 'Spain', 'Espagne'),
(204, 732, 'EH', 'ESH', 'Western Sahara', 'Sahara Occidental'),
(205, 736, 'SD', 'SDN', 'Sudan', 'Soudan'),
(206, 740, 'SR', 'SUR', 'Suriname', 'Suriname'),
(207, 744, 'SJ', 'SJM', 'Svalbard and Jan Mayen', 'Svalbard etÎle Jan Mayen'),
(208, 748, 'SZ', 'SWZ', 'Swaziland', 'Swaziland'),
(209, 752, 'SE', 'SWE', 'Sweden', 'Suède'),
(210, 756, 'CH', 'CHE', 'Switzerland', 'Suisse'),
(211, 760, 'SY', 'SYR', 'Syrian Arab Republic', 'République Arabe Syrienne'),
(212, 762, 'TJ', 'TJK', 'Tajikistan', 'Tadjikistan'),
(213, 764, 'TH', 'THA', 'Thailand', 'Thaïlande'),
(214, 768, 'TG', 'TGO', 'Togo', 'Togo'),
(215, 772, 'TK', 'TKL', 'Tokelau', 'Tokelau'),
(216, 776, 'TO', 'TON', 'Tonga', 'Tonga'),
(217, 780, 'TT', 'TTO', 'Trinidad and Tobago', 'Trinité-et-Tobago'),
(218, 784, 'AE', 'ARE', 'United Arab Emirates', 'Émirats Arabes Unis'),
(219, 788, 'TN', 'TUN', 'Tunisia', 'Tunisie'),
(220, 792, 'TR', 'TUR', 'Turkey', 'Turquie'),
(221, 795, 'TM', 'TKM', 'Turkmenistan', 'Turkménistan'),
(222, 796, 'TC', 'TCA', 'Turks and Caicos Islands', 'Îles Turks et Caïques'),
(223, 798, 'TV', 'TUV', 'Tuvalu', 'Tuvalu'),
(224, 800, 'UG', 'UGA', 'Uganda', 'Ouganda'),
(225, 804, 'UA', 'UKR', 'Ukraine', 'Ukraine'),
(226, 807, 'MK', 'MKD', 'The Former Yugoslav Republic of Macedonia', 'L''ex-République Yougoslave de Macédoine'),
(227, 818, 'EG', 'EGY', 'Egypt', 'Égypte'),
(228, 826, 'GB', 'GBR', 'United Kingdom', 'Royaume-Uni'),
(229, 833, 'IM', 'IMN', 'Isle of Man', 'Île de Man'),
(230, 834, 'TZ', 'TZA', 'United Republic Of Tanzania', 'République-Unie de Tanzanie'),
(231, 840, 'US', 'USA', 'United States', 'États-Unis'),
(232, 850, 'VI', 'VIR', 'U.S. Virgin Islands', 'Îles Vierges des États-Unis'),
(233, 854, 'BF', 'BFA', 'Burkina Faso', 'Burkina Faso'),
(234, 858, 'UY', 'URY', 'Uruguay', 'Uruguay'),
(235, 860, 'UZ', 'UZB', 'Uzbekistan', 'Ouzbékistan'),
(236, 862, 'VE', 'VEN', 'Venezuela', 'Venezuela'),
(237, 876, 'WF', 'WLF', 'Wallis and Futuna', 'Wallis et Futuna'),
(238, 882, 'WS', 'WSM', 'Samoa', 'Samoa'),
(239, 887, 'YE', 'YEM', 'Yemen', 'Yémen'),
(240, 891, 'CS', 'SCG', 'Serbia and Montenegro', 'Serbie-et-Monténégro'),
(241, 894, 'ZM', 'ZMB', 'Zambia', 'Zambie');

-- --------------------------------------------------------

--
-- Table structure for table `organisme_sante`
--

CREATE TABLE IF NOT EXISTS `organisme_sante` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `code_pays` smallint(5) NOT NULL,
  `ville` varchar(30) NOT NULL,
  `nom_centre` varchar(100) NOT NULL,
  `type_prestation` varchar(45) NOT NULL,
  `telephone1` varchar(45),
  `telephone2` varchar(45),
  `code_postal` varchar(45),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=001 ;

INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Cabinet du Dr Ndayisaba Venant', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Centre Hospitalo-universitaire de Kamenge', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Centre Medico-chirurgical de Kinindo (C.M.C.K)', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Clinique Prince Louis Rwagasore', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Hepital Bumerec', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Hepital Militaire de Kamenge', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Hepital Prince Regent  Charles', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Maison Medicale de Bujumbura', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Polyclinique Centrale de BUJUMBURA', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Polyclinique Saint Marc', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Centre Medico-chirurgical de Kinindo', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Polyclinique Genima', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Centre Hospitalo-universitaire de Kamenge', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Centre Medico-chirurgical de Kinindo', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Clinique Prince Louis Rwagasore', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Hepital Bumerec', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Hepital Militaire de Kamenge', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Hepital Prince Regent  Charles', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Maison Medicale de Bujumbura', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Polyclinique Centrale de Bujumbura', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Polyclinique Saint Marc', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Centre de Kine et de Reeducation fonctionnelle', 'Kinesitherapeutes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Centre Hospitalo-universitaire de Kamenge', 'Kinesitherapeutes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Centre Medico-chirurgical de Kinindo (C.M.C.K)', 'Kinesitherapeutes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Hepital Militaire de Kamenge', 'Kinesitherapeutes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Hepital Prince Regent  Charles', 'Kinesitherapeutes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Polyclinique Centrale de Bujumbura', 'Kinesitherapeutes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'BACTALAB', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'I.N.S.P (Institut National de Sante Publique)', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'LABM (Laboratoire d''Analyse de Biologie Medicale)', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Centre Optique', 'Opticiens', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Clinique de l''Oeil', 'Opticiens', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Lunetterie Amarori', 'Opticiens', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Modern Optic', 'Opticiens', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Optique de Luxe', 'Opticiens', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Polyclinique Cenima', 'Opticiens', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Pharmacie de La Chaussee', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Pharmacie du Rond Point', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Pharmacie Epapharma', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Pharmacie Horizon', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Pharmacie Interlacustre', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Pharmacie La Permanence', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Pharmacie La Rosiere', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Pharmacie L''arc-en-ciel', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Pharmacie Nilpharma', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Pharmacie PiP', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Pharmacie Plaza', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Pharmacie Ramba', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Pharmacie Salama', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Pharmacie Sante Pour Tous', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Pharmacie Socophar', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Cabinet du Dr Ndayisaba Venant', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Centre Hospitalo-universitaire de Kamenge', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Centre Medico-chirurgical de Kinindo (C.M.C.K)', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Clinique Prince Louis Rwagasore', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Hepital Bumerec', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Hepital Militaire de Kamenge', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Hepital Prince Regent  Charles', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Maison Medicale de Bujumbura', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Polyclinique Centrale de Bujumbura', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'BUJUMBURA', 'Polyclinique Saint Marc', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de BUJUMBURA', 'Cabinet de Gynecologie Obstetrique  Jeanne Odette Niyongere', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de BUJUMBURA', 'Cabinet de Gynecologie Obstetrique  Jeanne Odette Niyongere', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de BUJUMBURA', 'Cabinet de Gynecologie Obstetrique  Jeanne Odette Niyongere', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de BURURI', 'Clinique Saint David de Rumonge', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de BURURI', 'Hepital Rumonge', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de BURURI', 'Clinique Saint David de Rumonge', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de BURURI', 'Hepital Rumonge', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de BURURI', 'Clinique Saint David de Rumonge', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de BURURI', 'Hepital Rumonge/(Province Bururi)', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de BURURI', 'Clinique Saint David de Rumonge', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de BURURI', 'Hepital Rumonge', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de BURURI', 'Clinique Saint David de Rumonge', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de BURURI', 'Hepital Rumonge', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de CIBITOKE', 'Hepital Centre Medicale SOS Cibitoke', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de CIBITOKE', 'Hepital Ebenezer Shalom', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de CIBITOKE', 'Hepital Centre Medicale SOS Cibitoke', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de CIBITOKE', 'Hepital Ebenezer Shalom', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de CIBITOKE', 'Hepital Centre Medicale SOS Cibitoke', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de CIBITOKE', 'Hepital Ebenezer Shalom', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de CIBITOKE', 'Hepital Centre Medicale SOS Cibitoke', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de CIBITOKE', 'Hepital Ebenezer Shalom', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de CIBITOKE', 'Hepital Centre Medicale SOS Cibitoke', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de CIBITOKE', 'Hepital Ebenezer Shalom', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de GITEGA', 'Centre de Sante NDUMUMWAMI', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de GITEGA', 'Clinique Vison Sante GITEGA', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de GITEGA', 'SOS Children''s Organisation-Centre of GITEGA', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de GITEGA', 'Centre de Sante NDUMUMWAMI', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de GITEGA', 'Clinique Vison Sante GITEGA', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de GITEGA', 'SOS Children''s Organisation-Centre of GITEGA', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de GITEGA', 'Centre de Sante NDUMUMWAMI', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de GITEGA', 'Clinique Vison Sante GITEGA', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de GITEGA', 'SOS Children''s Organisation-Centre of GITEGA', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de GITEGA', 'Centre de Sante NDUMUMWAMI', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de GITEGA', 'Clinique Vison Sante GITEGA', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de GITEGA', 'SOS Children''s Organisation-Centre of GITEGA', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de GITEGA', 'Clinique Vison Sante GITEGA', 'Opticiens', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de GITEGA', 'Centre de Sante NDUMUMWAMI', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de GITEGA', 'Clinique Vison Sante GITEGA', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de GITEGA', 'SOS Children''s Organisation-Centre of GITEGA', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de KAYANZA', 'Cabinet du Dr Jean Nepomucene Gahungu', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de KAYANZA', 'Hepital Kayanza', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de KAYANZA', 'Cabinet du Dr Jean Nepomucene Gahungu', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de KAYANZA', 'Hepital Kayanza', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de KAYANZA', 'Hepital Kayanza', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de KAYANZA', 'Cabinet du Dr Jean Nepomucene Gahungu', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de KAYANZA', 'Hepital Kayanza', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de KAYANZA', 'Cabinet du Dr Jean Nepomucene Gahungu', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de KAYANZA', 'Hepital Kayanza', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de KIRUNDO', 'Hepital de Kirundo', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de KIRUNDO', 'Hepital de Kirundo', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de KIRUNDO', 'Hepital de Kirundo', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de KIRUNDO', 'Hepital de Kirundo', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de KIRUNDO', 'Pharmacie du Saint Sauveur  de Kirundo', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de KIRUNDO', 'Hepital de Kirundo', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MAKAMBA', 'Centre Medical Espour de Kayogoro', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MAKAMBA', 'Hepital Makamba', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MAKAMBA', 'Centre Medical Espour de Kayogoro', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MAKAMBA', 'Hepital Makamba', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MAKAMBA', 'Centre Medical Espour de Kayogoro', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MAKAMBA', 'Hepital Makamba', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MAKAMBA', 'Centre Medical Espour de Kayogoro', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MAKAMBA', 'Hepital Makamba', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MAKAMBA', 'Centre Medical Espour de Kayogoro', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MAKAMBA', 'Hepital Makamba', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MURAMVYA', 'Hepital Muramvya', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MURAMVYA', 'Hepital Muramvya', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MURAMVYA', 'Hepital Muramvya', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MURAMVYA', 'Hepital Muramvya', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MURAMVYA', 'Hepital Muramvya', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MUYINGA', 'Centre de Sante la Lumiere de Muyinga', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MUYINGA', 'Centres Michel Ange de Muyinga', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MUYINGA', 'Hepital Muyinga', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MUYINGA', 'Centre de Sante la Lumiere de Muyinga', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MUYINGA', 'Centres Michel Ange de Muyinga', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MUYINGA', 'Hepital Muyinga', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MUYINGA', 'Hepital Muyinga', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MUYINGA', 'Centre de Sante la Lumiere de Muyinga', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MUYINGA', 'Centres Michel Ange de Muyinga', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MUYINGA', 'Hepital Muyinga', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MUYINGA', 'Centre de Sante la Lumiere de Muyinga', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MUYINGA', 'Centres Michel Ange de Muyinga', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de MUYINGA', 'Hepital Muyinga', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de NGOZI', 'Centre Medical Don Cesar de Ngozi', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de NGOZI', 'Centre Medico-Technique de Ngozi', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de NGOZI', 'Hepital de Ngozi', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de NGOZI', 'Centre Medical Don Cesar de Ngozi', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de NGOZI', 'Centre Medico-Technique de Ngozi', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de NGOZI', 'Hepital de Ngozi', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de NGOZI', 'Centre Medical Don Cesar de Ngozi', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de NGOZI', 'Centre Medico-Technique de Ngozi', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de NGOZI', 'Hepital de Ngozi', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de NGOZI', 'Centre Medical Don Cesar de Ngozi', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de NGOZI', 'Centre Medico-Technique de Ngozi', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de NGOZI', 'Hepital de Ngozi', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de NGOZI', 'Centre Medical Don Cesar de Ngozi', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de NGOZI', 'Centre Medico-Technique de Ngozi', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de NGOZI', 'Hepital de Ngozi', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de RUTANA', 'Hepital Gihofi/Rutana', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de RUTANA', 'Hepital Gihofi/Rutana', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de RUTANA', 'Hepital Gihofi/Rutana', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de RUTANA', 'Hepital Gihofi/Rutana', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de RUTANA', 'Hepital Gihofi/Rutana', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de RUYIGI', 'Hepital Rema Ryugi', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de RUYIGI', 'Hepital Rema Ryugi', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de RUYIGI', 'Hepital Rema Ryugi', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de RUYIGI', 'Hepital Rema Ryugi', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province de RUYIGI', 'Hepital Rema Ryugi', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province GITEGA', 'Pharmacie Salama-Agence Gitega', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province KAYANZA', 'Pharmacie Salama-Agence Kayanza', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province KIRUNDO', 'Pharmacie Horizon de Kirundo', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province MAKAMBA', 'Pharmacie Amagara Meza', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province MAKAMBA', 'Pharmacie Rema-Agence Makamba', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province MAKAMBA', 'Pharmarcie Salama-Agence Makamba', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province MUYINGA', 'Pharmacie Generale de Muyinga', '', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province MUYINGA', 'Pharmacie Girubuzima de Muyinga', '', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province NGOZI', 'Pharmacie Salama-Agence Ngozi', '', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (33, 'Province RUYIGI', 'Pharmacie Salama-Agence Ruyigi', '', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'BOBO-DIOULASSO', '', 'CLINIQUE LORENTIA', '226 20 97 58 99', '', 'BOBO -DIOULASSO LAFIABOUGOU');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'BOBO-DIOULASSO', '', 'CLINIQUE ROSETA', '226 20 98 31 31', '', 'BOBO-DIOULASSO PETIT PARIS RUE 9.42');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'BOBO-DIOULASSO', '', 'CLINIQUE SAINT LEOPOLD', '226 20 97 54 12', '', 'BOBO-DIOULASSO SARFALAO.SECTEUR 17');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'BOBO-DIOULASSO', '', 'ESPACE MEDICAL SYA', '226 20 97 0048', '', 'BOBO -DIOULASSO SECTEUR 4');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'BOBO-DIOULASSO', '', 'EXALAB LABORATOIRE D''ANALYSES', '226 20 97 65 73', '', 'BOBO -DIOULASSO SECTEUR 4');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'BOBO-DIOULASSO', '', 'HOPITAL SANOU SOUROU', '226 20 97 00 44', '', 'BOBO- DIOULASSO');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'BOBO-DIOULASSO', '', 'PHARMACIE BANKUY(DEDOUGOU)', '226 20 52 04 25', '', 'DEDOUGOU');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'BOBO-DIOULASSO', '', 'PHARMACIE DU LEVANT', '226 20 97 03 33', '', 'BOBO-DIOULASSO SIKASSO SIRA SECTEUR 8');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'BOBO-DIOULASSO', '', 'PHARMACIE MEDINE', '226 20 97 09 10', '', 'BOBO-DIOULASSO FACE GARE TCV');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'BOBO-DIOULASSO', '', 'PHARMACIE VITALIS', '226 20 98 12 17', '', 'BOBO -DIOULASSO');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'BOBO-DIOULASSO', '', 'PHARMACIE WOBY SARL', '226 20 97 36 97', '', 'BOBO-DIOULASSO DIARADOUGOU SECTEUR 2');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'CONSULTATIONS ET SOINS', 'CLINIQUE CENTRE D''OR (GYNeCOLOGUE)', '226 50 38 80 58', '', 'PATTE D''OIE (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'CONSULTATIONS ET SOINS', 'CLINIQUE EL FATEH SOUKA', '226 50 43 06 01', '', 'PISSY 2 (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'CONSULTATIONS ET SOINS', 'CLINIQUE LES GENETS', '226 50 37 43 83', '', 'OUAGA 2000');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'CONSULTATIONS ET SOINS', 'CLINIQUE LES TISSERINS (PeDIATRE)', '226 50 36 97 79', '', '338 RUE PALEG -NOABGA /SECTEUR 28 (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'CONSULTATIONS ET SOINS', 'CLINIQUE NOTRE DAME DE LA PAIX', '226 50 35 61 53', '', '55 TANGHIN SECTEUR 23 (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'CONSULTATIONS ET SOINS', 'CLINIQUE SAINT JEAN', '226 50 33 56 22', '', 'SECTEUR 2 (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'CONSULTATIONS ET SOINS', 'CLINIQUE SAINT MARC', '226 50 36 35 01', '', '1200 LOGEMENTS (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'CONSULTATIONS ET SOINS', 'CLINIQUE TANGA ( ORL)', '226 50 43 56 17', '', 'PISSY 2 SECTEUR 17 (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'CONSULTATIONS ET SOINS', 'HOPITAL PROTESTANT SHIPRAH', '226 50 33 32 29', '', 'TANGHIN (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'CONSULTATIONS ET SOINS', 'POLYCLINIQUE DU CENTRE', '226 50 48 17 17', '', 'DERRIERE L''ENAREF ( OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'CONSULTATIONS ET SOINS', 'POLYCLINIQUE INTERNATIONALE DE OUAGA (PCIO)', '226 50 48 35 28', '', '29 OUAGA 2000 FACE ANASER (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'CONSULTATIONS ET SOINS', 'POLYCLINIQUE PHILADEPHIE', '226 50 33 28 71', '', 'KOULOUBA (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'DENTISTES', 'SYMPADENT', '226 50 36 20 80', '', '1200 LOGEMENTS (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'HOSPITALISATIONS', 'CLINIQUE CENTRE D''OR (GYNeCOLOGUE)', '226 50 38 80 58', '', 'PATTE D''OIE (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'HOSPITALISATIONS', 'CLINIQUE EL FATEH SOUKA', '226 50 43 06 01', '', 'PISSY 2 (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'HOSPITALISATIONS', 'CLINIQUE LES GENETS', '226 50 37 43 83', '', 'OUAGA 2000');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'HOSPITALISATIONS', 'CLINIQUE NOTRE DAME DE LA PAIX', '226 50 35 61 53/55', '', 'TANGHIN SECTEUR 23 (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'HOSPITALISATIONS', 'CLINIQUE SAINT JEAN', '226 50 33 56 22', '', 'SECTEUR 2 (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'HOSPITALISATIONS', 'CLINIQUE SAINT MARC', '226 5036 35 01', '', '1200 LOGEMENTS (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'HOSPITALISATIONS', 'HOPITAL PROTESTANT SHIPRAH', '226 50 33 32 29', '', 'TANGHIN (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'HOSPITALISATIONS', 'POLYCLINIQUE DU CENTRE', '226 50 48 17 17', '', 'DERRIERE L''ENAREF ( OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'HOSPITALISATIONS', 'POLYCLINIQUE INTERNATIONALE DE OUAGA (PCIO)', '226 50 48 35 28/29', '', 'OUAGA 2000 FACE ANASER (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'HOSPITALISATIONS', 'POLYCLINIQUE PHILADEPHIE', '226 50 33 28 71', '', 'KOULOUBA (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'LABORATOIRE', 'LABORATOIRE SAINTE ELISABETH', '226 50 33 21 33', '', 'AVENUE KWAME N''KRUMAH ZONE ZAKA (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'OPHTALMOLOGUES', 'CLINIQUE OPHTALMOLOGIQUE LA LUMIERE', '226 50 33 50 74', '', 'SECTEUR 5 RUE 45 (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'OPHTALMOLOGUES', 'CLINIQUE OPHTALMOLOGIQUE SIMIGNA', '226 50 36 27 87', '', '1200 LGTS SECTEUR 14 (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'OPTICIENS', 'LUNO OPTIQUE', '226 50 45 25 84', '', '1200 LGMTS SECTEUR 14 (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'OPTICIENS', 'OPTIC ALIZE', '226 50 30 42 87', '', 'AGENCE PRESTIGE (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'OPTICIENS', 'SAM BELLO OPTIQUE', '226 50 39 95 30', '', 'SECTEUR 4 AVENUE DE LA LIBERTE (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'OPTICIENS', 'ZANDAS OPTIQUE', '226 50 45 00 51', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'PHARMACIES', 'PHARMACIE DE KOULOUBA', '226 50 31 19 18', '', 'KOULOUBA (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'PHARMACIES', 'PHARMACIE DE LA TRYPANO 24/24', '226 50 33 29 41', '', 'AVENUE DE LA LIBERTE- SECTEUR 4 ( OUAGA )');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'PHARMACIES', 'PHARMACIE DE L''AEROPORT', '226 50 31 42 22', '', '753 AVENUE DE LA REVOLUTION FACE ASECNA(OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'PHARMACIES', 'PHARMACIE DU PROGRES', '226 50 43 01 62', '', 'PISSY SECTEUR 17 (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'PHARMACIES', 'PHARMACIE DU SUD 24/24', '226 50 30 65 37', '', 'CENTRE COMMERCIAL OUAGA 2000');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'PHARMACIES', 'PHARMACIE LE SAHEL', '226 50 31 81 95', '', 'KOULOUBA (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'PHARMACIES', 'PHARMACIE NAAB RAGA', '226 50 30 06 27', '', 'SAMANDIN (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'PHARMACIES', 'PHARMACIE NAABA KOOM', '226 50 35 70 46', '', 'TANGHIN SECTEUR 23 (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'PHARMACIES', 'PHARMACIE SILOE', '226 50 31 50 68', '', 'FACE CHeTEAU MORO NAABA (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAGADOUGOU', 'RADIOLOGIE', 'RADIOLOGIE DU CENTRE', '226 50 31 13 09', '', 'CENTRE VILLE (OUAGA)');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAHIGOUYA', '', 'CABINET DE SOINS ELZO SANTE', '226 40 55 48 01', '', 'OUAHIGOUYA');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAHIGOUYA', '', 'PHARMACIE DU NORD', '226 40 55 44 41', '', 'OUAHIGOUYA');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (233, 'OUAHIGOUYA', '', 'PHARMACIE WEND PEDRE', '226 40 55 14 22', '', 'OUAHIGOUYA');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'BAFOUSSAM', 'SOS OUEST SANTE', 'Consultations & Soins', '33 44 64 47', '77 75 09 25', 'BP 134');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'BAFOUSSAM', 'CLINIQUE DE L''OUEST', 'Consultations & Soins', '99 81 72 66', '99 58 32 48', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'BAFOUSSAM', 'SOS OUEST SANTE', 'Hospitalisation', '33 44 64 47', '99 81 72 66', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'BAFOUSSAM', 'CLINIQUE DE L''OUEST', 'Hospitalisation', '99 81 72 66', '99 58 32 48', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'BAFOUSSAM', 'PHARMACIE  SALVIA', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'BAFOUSSAM', 'PHARMACIE DE L''ESPERANCE', 'Pharmacies', '33 44 52 00', '', 'ROUTE MAIRIE RURALE');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'BAFOUSSAM', 'PHARMACIE DE LA GRACE', 'Pharmacies', '34 44 30 80', '', 'BP 27');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'BAMENDA', 'CAMEROON BAPTIST CONVENTION', 'Hospitalisation', '72 64 92 32', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'BAMENDA', 'MEZAM POLYCLINIC', 'Hospitalisation', '33 03 54 12', '77 77 28 27', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'BAMENDA', 'ALPHA ROYAL CLINIC', 'Hospitalisation', '33 07 22 40', '77 43 28 83', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'BAMENDA', 'CRYSTAL PHARMACY', 'Pharmacies', '33 36 21 55', '77 76 05 08', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'BAMENDA', 'NOBLE PHARMACY', 'Pharmacies', '33 36 40 11', '77 36 30 70', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'BERTOUA', 'CENTRE MEDICAL DE LA CNPS', 'Consultations & Soins', '77 09 72 55', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'BERTOUA', 'POLYCLINIQUE MAEH', 'Consultations & Soins', '22 12 41 29', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'BERTOUA', 'HOPITAL REGIONAL BERTOUA', 'Consultations & Soins', '77 70 45 33', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'BERTOUA', 'POLYCLINIQUE MAEH', 'Hospitalisation', '22 12 41 29', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'BERTOUA', 'CENTRE MEDICAL DE LA CNPS', 'Hospitalisation', '77 09 72 55', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'BERTOUA', 'Centre de sante catholique de NKOLBIKON', 'Hospitalisation', '94 38 22 65', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'BERTOUA', 'HOPITAL REGIONAL BERTOUA', 'Hospitalisation', '77 70 45 33', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'BERTOUA', 'HOPITAL REGIONAL BERTOUA', 'Imagerie medicale', '77 70 45 33', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'BERTOUA', 'HOPITAL REGIONAL BERTOUA', 'Laboratoires', '77 70 45 33', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'BERTOUA', 'LABORATOIRE VIGNY LABO', 'Laboratoires', '22 81 11 61', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'BERTOUA', 'PHARMACIE BRUXELLOIS', 'Pharmacies', '96 39 93 23', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'BERTOUA', 'PHARMACIE DE MOKOLO', 'Pharmacies', '99 96 39 55', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'BERTOUA', 'PHARMACIE GALLIEN', 'Pharmacies', '99 92 04 50', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HOPITAL GENERAL DE DOUALA', 'Consultations & Soins', '33 37 02 50', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE D''OPHTALMOLOGIE JOLINOM', 'Consultations & Soins', '33 41 49 36', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE LA BETHANIE', 'Consultations & Soins', '77 76 07 82', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'P.M.I JEAN PAUL II', 'Consultations & Soins', '33 37 06 15', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE DE BONABERI', 'Consultations & Soins', '99 67 34 01', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE DES CITES', 'Consultations & Soins', '33 42 89 87', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE NECKER', 'Consultations & Soins', '33 47 55 31', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE GAP SANTE', 'Consultations & Soins', '33 47 59 10', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'POLYCLINIQUE DU ROND POINT', 'Consultations & Soins', '33 47 37 16', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE RAPHA CLINIC', 'Consultations & Soins', '99 92 09 31', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE MEDICAL D''OPHTALMOLOGIE DE DOUALA NORD', 'Consultations & Soins', '33 00 42 05', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HOPITAL AD LUCEM DE BONABERI', 'Consultations & Soins', '33 39 12 01', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'POLYCLINIQUE DE POITIERS', 'Consultations & Soins', '33 42 33 22', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HOPITAL AD LUCEM BONAMOUSSADI', 'Consultations & Soins', '33 47 37 25', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE MEDICAL CMD COSA', 'Consultations & Soins', '33 42 67 00', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE MEDICAL DES ROSEAUX', 'Consultations & Soins', '33 42 57 50', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE L''OLIVERAIE', 'Consultations & Soins', '99 18 01 68', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HOPITAL LAQUINTINIE', 'Consultations & Soins', '33 42 15 40', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'JOSS MEDIC CLINIC', 'Consultations & Soins', '33 42 18 91', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIC LECHING', 'Consultations & Soins', '33 37 84 94', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE LOUIS PASTEUR', 'Consultations & Soins', '33 37 99 39', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE DE L''ESPERANCE', 'Consultations & Soins', '33 37 49 69', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HePITAL DE DISTRICT CITE DES PALMIERS', 'Consultations & Soins', '33 37 06 06', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE DE MATERNITE SAINT PAUL DE NYLON', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE DU BERCEAU', 'Consultations & Soins', '33 42 82 72', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'MEDICARE', 'Consultations & Soins', '33 02 47 47', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE KOUMASSI', 'Consultations & Soins', '33 42 72 33', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE DU GROS CHENE', 'Consultations & Soins', '33 43 32 65', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE DR BOUM', 'Consultations & Soins', '33 42 60 13', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE MEDICAL BONDEKO', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE BETHESDA', 'Consultations & Soins', '33 08 96 44', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'POLYCLINIQUE J & E MEMORIAL', 'Consultations & Soins', '33 47 87 69', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'POLYCLINIQUE DE BONANJO', 'Consultations & Soins', '33 42 79 36', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CABINET MEDICAL KING DAVID', 'Consultations & Soins', '33 43 72 91', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CABINET MEDICAL SANTA MARIA DIAZ', 'Consultations & Soins', '99 83 03 40', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE MEDICAL KOUAM SAMUEL', 'Consultations & Soins', '33 42 59 61', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE LA GRANDE ILE', 'Consultations & Soins', '99 99 84 94', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HOPITAL AD LUCEM BALI', 'Consultations & Soins', '33 42 86 03', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE MEDICAL DU PALAIS', 'Consultations & Soins', '33 43 05 16', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CTRE DES MALADIES RESPIRATOIRES DE DLA', 'Consultations & Soins', '94 19 73 14', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE MEDICAL LA CLOSERIE', 'Consultations & Soins', '33 42 04 04', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'POLYCLINIQUE MARIE- O', 'Consultations & Soins', '33 43 88 86', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'DOUALA INTERNATIONAL EYE CENTER', 'Consultations & Soins', '33 43 23 59', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE C2T', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE MEDICAL ODYSSEE', 'Consultations & Soins', '33 42 82 20', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE MEDICO CHIRURGICAL DE NEUROLOGIE', 'Consultations & Soins', '74 06 89 88', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE D''ENDOCRINOLOGIE DIABETOLOGIE & MESOTHERAPIE', 'Consultations & Soins', '33 42 24 11', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE LE METROPOLOTAIN', 'Consultations & Soins', '33433070', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE DE BONAPRISO', 'Consultations & Soins', '33 42 70 61', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE MEDICAL COMED', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE MEDICAL DES CAPUCINES', 'Consultations & Soins', '33 42 55 72', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE CARDIOVASCULAIRE DE DOUALA', 'Consultations & Soins', '33 00 32 67', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE MEDICAL DES PALMIERS', 'Consultations & Soins', '33 42 01 75', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE MEDICAL MEDICO SA', 'Consultations & Soins', '33 43 97 15', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE DE L'' AEROPORT', 'Consultations & Soins', '33 42 92 36', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE IDIMED', 'Consultations & Soins', '33 42 65 29', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE HOSPITALIER PANAFRICAIN (GSA)', 'Consultations & Soins', '99 41 10 31', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE MEDICAL C.M.U.R.D', 'Consultations & Soins', '33 42 73 53', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CABINET DENTAIRE DE POITIERS', 'Dentiste', '33 42 33 22', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CABINET DENTAIRE LES ALIZEES', 'Dentiste', '33 43 74 72', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CABINET DENTAIRE HIBISCUS', 'Dentiste', '33 43 24 36', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CABINET DENTAIRE NGONYA EMMANUEL', 'Dentiste', '33 42 65 29', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CABINET DENTAIRE SANTE & FAMILLE', 'Dentiste', '33 42 29 36', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HOPITAL AD LUCEM BONAMOUSSADI', 'Dentiste', '33 47 37 25', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CABINET DENTAIRE DR S.MUVANDIMWE', 'Dentiste', '99 83 54 30', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CABINET DENTAIRE AZUR', 'Dentiste', '33 43 83 43', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CABINET DENTAIRE LES FRANGIPANIERS', 'Dentiste', '33 43 49 51', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HOPITAL AD LUCEM BALI', 'Dentiste', '33 42 86 03', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CABINET DENTAIRE CERAM', 'Dentiste', '33 42 79 25', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CABINET DENTAIRE D''AKWA', 'Dentiste', '33 42 58 65', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CABINET DENTAIRE LA GRACE', 'Dentiste', '22 05 39 50', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CABINET DENTAIRE DR NGOULLA', 'Dentiste', '33 43 78 44', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CABINET DENTAIRE DR DZOKEM', 'Dentiste', '33 43 32 65', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CABINET DENTAIRE SYMPADENT', 'Dentiste', '33 42 22 03', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CABINET DENTAIRE KILO FORCE', 'Dentiste', '33 01 32 88', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HOPITAL LAQUINTINIE', 'Dentiste', '33 42 15 40', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CABINET DENTAIRE L''APEX', 'Dentiste', '33 42 32 64', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CABINET DR BEHLE ZOUNG-KANYI', 'Dentiste', '33 42 72 33', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CABINET DENTAIRE LE SOURIRE', 'Dentiste', '33 43 14 11', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CABINET DENTAIRE LA ROCHERELLE', 'Dentiste', '99 95 16 85', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE DE BONAPRISO', 'Hospitalisation', '33 42 70 61', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'POLYCLINIQUE J & E MEMORIAL', 'Hospitalisation', '33 47 87 69', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'FONDATION SARAH EBOUMBOU', 'Hospitalisation', '3347 03 89', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'POLYCLINIQUE DU ROND POINT', 'Hospitalisation', '33 47 37 16', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE RAPHA CLINIC', 'Hospitalisation', '99 92 09 31', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE GAP SANTE', 'Hospitalisation', '33 47 59 10', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE LOUIS PASTEUR', 'Hospitalisation', '33 37 99 39', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HePITAL DE DISTRICT CITE DES PALMIERS', 'Hospitalisation', '33 37 06 06', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE MEDICO CHIRURGICAL ST MARTIN', 'Hospitalisation', '33 06 08 32', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE NECKER', 'Hospitalisation', '33 47 55 31', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE MEDICAL PEKUITE', 'Hospitalisation', '33 40 21 42', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIC LECHING', 'Hospitalisation', '33 37 84 94', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE MEDICAL ODYSSEE', 'Hospitalisation', '33 42 82 20', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE MEDICAL DES CAPUCINES', 'Hospitalisation', '33 42 55 72', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE DE L''ESPERANCE', 'Hospitalisation', '33 37 49 69', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HOPITAL AD LUCEM BONAMOUSSADI', 'Hospitalisation', '33 47 37 25', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE DES CITES', 'Hospitalisation', '33 42 89 87', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HOPITAL GENERAL DE DOUALA', 'Hospitalisation', '33 37 02 53', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'POLYCLINIQUE MARIE O', 'Hospitalisation', '33 43 88 86', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'P.M.I JEAN PAUL II', 'Hospitalisation', '33 37 06 15', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE BETHESDA', 'Hospitalisation', '33 08 96 44', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE MEDICAL ST GEORGES', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE MEDICAL SOLIDARITE', 'Hospitalisation', '99 06 72 44', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE MEDICAL LA BETHANIE', 'Hospitalisation', '77 76 07 82', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HOPITAL AD LUCEM BONABeRI', 'Hospitalisation', '99 36 92 66', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE DE BONABERI', 'Hospitalisation', '99 67 34 01', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE MEDICO-CHIRURGICALE DE DOUALA', 'Hospitalisation', '33 42 67 00', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE DE MATERNITE SAINT PAUL DE NYLON', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE LE METROPOLITAIN', 'Hospitalisation', '33 43 30 70', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE LA REGENERECENCE', 'Hospitalisation', '33 41 05 31', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE MEDICAL KOUAM SAMUEL', 'Hospitalisation', '33 42 59 61', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE L''OLIVERAIE', 'Hospitalisation', '99 18 01 68', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE CARDIOVASCULAIRE DE DOUALA', 'Hospitalisation', '33 00 32 67', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE DU GROS CHENE', 'Hospitalisation', '33 43 32 65', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HOPITAL LAQUINTIINE', 'Hospitalisation', '33 42 15 40', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE MEDICAL DES ROSEAUX', 'Hospitalisation', '33 42 57 50', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE DU BERCEAU', 'Hospitalisation', '33 42 82 72', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE DR BOUM', 'Hospitalisation', '33 42 60 13', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'RIVER SIDE MEDICAL CENTER BONAMOUANG', 'Hospitalisation', '33 40 82 84', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE KOUMASSI', 'Hospitalisation', '33 42 72 33', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE LA GRANDE ILE', 'Hospitalisation', '99 99 84 94', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HOPITAL AD LUCEM BALI', 'Hospitalisation', '33 42 86 03', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'POLYCLINIQUE DE BONANJO', 'Hospitalisation', '33 42 79 36', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'JOSS MEDIC CLINIC', 'Hospitalisation', '33 42 18 91', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HOPITAL MILITAIRE DE REGION DE DLA', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE IDIMED', 'Hospitalisation', '33 42 65 29', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'POLICLINIQUE LE MAeMONIDE', 'Hospitalisation', '33 43 78 44', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CLINIQUE DE L''AEROPORT', 'Hospitalisation', '33 42 92 36', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CENTRE MEDICAL C.M.U.R.D', 'Hospitalisation', '33 42 73 53', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'POLYCLINIQUE DE POITIERS', 'Hospitalisation', '33 42 33 22', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HOPITAL GENERAL DE DOUALA', 'Imagerie medicale', '33 37 02 50', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HOPITAL AD LUCEM BALI', 'Imagerie medicale', '33 42 86 03', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HOPITAL LAQUINTINIE', 'Imagerie medicale', '33 42 15 40', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CABINET DE RADIOLOGIE CAMERA', 'Imagerie medicale', '33 01 41 80', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CABINET DE RADIOLOGIE LE FARAFY', 'Imagerie medicale', '33 02 05 73', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HOPITAL AD LUCEM BONAMOUSSADI', 'Imagerie medicale', '33 47 37 25', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'IMAGERIE MEDICALE CIMD', 'Imagerie medicale', '33 43 76 55', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'IMAGERIE MEDICALE CERAD', 'Imagerie medicale', '33 40 12 31', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'POLYCLINIQUE DE BONANJO', 'Imagerie medicale', '33 42 15 40', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CABINET DE KINeSITHeRAPIE NYAMSI D. VICTORINE', 'Kinesitherapie', '79 12 68 72', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'MEDICAL REHAB &LIFE EXTENSION', 'Kinesitherapie', '75 29 32 16', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HOPITAL GENERAL DE DOUALA', 'Laboratoires', '33 37 02 50', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'LABORATOIRE LITTO LABO', 'Laboratoires', '33 42 00 78', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'LABORATOIRE GALLENCAMNK', 'Laboratoires', '77 43 06 12', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'LABORATOIRE DIAGMED', 'Laboratoires', '33 39 05 33', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'UNILABO', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'LABORATOIRE LE BON DIAGNOSTIC', 'Laboratoires', '33 02 45 80', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HePITAL DE DISTRICT CITE DES PALMIERS', 'Laboratoires', '33 37 06 06', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'LABORATOIRE YONDJA ANALYSE', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HOPITAL AD LUCEM BONAMOUSSADI', 'Laboratoires', '33 47 37 25', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'LABORATOIRE DOUALA LABO', 'Laboratoires', '33 42 49 92', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'LABORATOIRE NIVA LABO', 'Laboratoires', '33 43 40 85', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'LABORATOIRE SCIENTILABO', 'Laboratoires', '33 42 21 68', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'COROT', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'LABORATOIRE LABORATOIRE DROUOT', 'Laboratoires', '33 43 22 40', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'LABORATOIRE LOUIS PASTEUR', 'Laboratoires', '33 01 43 83', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HOPITAL LAQUINTINIE', 'Laboratoires', '33 42 15 40', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'LABORATOIRE LABTAG', 'Laboratoires', '33 42 16 37', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'LABORATOIRE BIODIAGNOSTICS', 'Laboratoires', '33 43 17 54', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HOPITAL AD LUCEM BALI', 'Laboratoires', '33 42 86 03', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'POLYCLINIQUE DE BONANJO', 'Laboratoires', '33 42 70 61', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'LABORATOIRE BIOMEDICAM', 'Laboratoires', '33 42 95 92', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'LABORATOIRE DU RAIL', 'Laboratoires', '33 43 86 17', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'LIGHT OPTIQUE', 'Opticiens', '33 07 14 37', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'OPTIC-SWISS', 'Opticiens', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'OPTIQUE DE LA PROVINCE', 'Opticiens', '77 67 22 00', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PAGROT OPTIQUE', 'Opticiens', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'UNIVERS OPTIQUE', 'Opticiens', '33 18 33 08', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HOPITAL AD LUCEM BALI', 'Opticiens', '33 42 86 03', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CAPELLO', 'Opticiens', '99 67 73 93', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'GLOBE OPTIQUE', 'Opticiens', '77 72 47 05', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'AMBASSADOR VISION', 'Opticiens', '33 42 96 45', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'DLA OPTIC MEDICAL', 'Opticiens', '33 42 97 26', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'OPTIMAT VISION SARL', 'Opticiens', '33 42 15 26', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'AVENIR OPTIQUE MEDICALE', 'Opticiens', '33 43 37 05', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'AFRIK OPTIK SERVICE', 'Opticiens', '99 58 65 61', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'TCHAYA OPTIQUE', 'Opticiens', '33 42 94 85', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'OPTIKA', 'Opticiens', '33 43 16 48', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'MAFF OPTIQUE', 'Opticiens', '33 43 72 83', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'SKY OPTICS', 'Opticiens', '33 42 75 00', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'MEGA OPTIC', 'Opticiens', '33 43 84 66', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'ORMA OPTIQUE', 'Opticiens', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'OPTIC LASER MEDICAL SARL', 'Opticiens', '33 43 93 57', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CODEDIG OPTIQUE MEDICAL', 'Opticiens', '33 43 28 99', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CONFORT OPTIQUE', 'Opticiens', '33 43 69 54', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'COMPLEXE OPTIQUE', 'Opticiens', '33 13 14 53', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'LA BINOCLERIE', 'Opticiens', '33 42 81 06', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'BELY OPTIQUE', 'Opticiens', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'MEDINA OPTIQUE', 'Opticiens', '33 43 12 52', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'LE CRISTALLIN', 'Opticiens', '22 65 12 65', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'SILOE OPTIQUE', 'Opticiens', '99 03 26 62', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'CRITALLYS OPTIQUE', 'Opticiens', '33 43 04 30', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'LUX OPTIC', 'Opticiens', '33 42 10 69', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'ESPACE VISION', 'Opticiens', '33 43 68 40', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HOPITAL AD LUCEM BALI', 'Opticiens', '33 42 86 03', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'L''OPTICIEN', 'Opticiens', '32 15 70 24', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PRISM OPTIQUE', 'Opticiens', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'OCEAN OPTIQUE', 'Opticiens', '33 19 37 16', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PLAZZA OPTICS', 'Opticiens', '33 40 92 17', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HORIZON OPTIQUE', 'Opticiens', '33 02 18 49', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'HUBLOT OPTIQUE MEDICALE', 'Opticiens', '33 13 11 62', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'O.ME.LI', 'Opticiens', '33 43 72 83', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'GLOBAL TCHAYA', 'Opticiens', '33 09 04 16', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PLANETE OPTIC', 'Opticiens', '33 06 16 25', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'ORMA VISON', 'Opticiens', '33 05 61 44', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'WORLD VISION', 'Opticiens', '33 16 00 86', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'GILLES ANDRE VISION', 'Opticiens', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE DE BONAMOUSSADI', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE DE LA CHARITE', 'Pharmacies', '96 68 02 19', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE DE DOUALA', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE SAAS', 'Pharmacies', '33 11 15 14', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE DE L''HARMONIE', 'Pharmacies', '33 40 95 45', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE D''AKWA NORD', 'Pharmacies', '33 40 77 02', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE CITE DES PALMIERS', 'Pharmacies', '33 37 24 84', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE DE KOUMASSI', 'Pharmacies', '33 15 81 18', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE ST JAMES', 'Pharmacies', '33 43 00 75', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE DE BONAPRISO', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE DE LA RIVE', 'Pharmacies', '33 40 36 49', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE DE LA BOURSE', 'Pharmacies', '33 08 28 92', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE UNIVERS SANTE', 'Pharmacies', '33 40 39 94', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE LA COUPOLE', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE DE LA COTE', 'Pharmacies', '33 42 02 38', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE DE GAULLE', 'Pharmacies', '33 43 37 29', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE LES GLYCINES', 'Pharmacies', '33 42 97 99', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE LA PERSEVERANCE', 'Pharmacies', '77 13 10 51', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE DE L''AEROPORT', 'Pharmacies', '33 42 28 76', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE HOTEL DE L''AIR', 'Pharmacies', '33 42 61 38', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE SANTE ET NATURE', 'Pharmacies', '33 13 19 25', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE LES MIRACLES', 'Pharmacies', '33 13 74 25', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE DE BONADOUMA', 'Pharmacies', '33 42 82 19', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE DU CENTRE', 'Pharmacies', '33 42 78 31', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE DES ARTS ET DES FLEURS', 'Pharmacies', '33 42 80 41', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE DE LA TRINITE', 'Pharmacies', '33 42 46 44', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE LA JOUVENCE', 'Pharmacies', '33 42 47 79', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE LA CONCORDE', 'Pharmacies', '33 43 49 29', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'NOUVELLE PHARMACIE D''AKWA', 'Pharmacies', '33 43 25 36', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE GABELOU', 'Pharmacies', '22 79 16 13', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE DU PLATEAU', 'Pharmacies', '33 42 05 80', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE KOTTO', 'Pharmacies', '33 05 55 91', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE DE LA PATIENCE', 'Pharmacies', '33 47 21 33', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE LE FLEURON', 'Pharmacies', '33 47 12 22', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE NJO NJO', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE DE MAKEPE', 'Pharmacies', '33 47 55 55', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE DE BONABERI', 'Pharmacies', '33 39 11 05', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE DE L''AMOUR', 'Pharmacies', '33 39 38 48', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE  SODIKO', 'Pharmacies', '33 39 03 74', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE DE BONAMBAPPE', 'Pharmacies', '22 22 73 55', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE SAINT NICOLAS', 'Pharmacies', '33 42 10 49', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE LA SHEKINAH', 'Pharmacies', '33 00 36 60', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE  SHAMMAH', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE DU SALUT', 'Pharmacies', '99 94 66 69', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE GALLENCAMNK', 'Pharmacies', '77 43 06 12', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE DU MARCHE', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE FRIENDSHIP PHARMACY', 'Pharmacies', '33 39 45 45', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE SACRE COEUR', 'Pharmacies', '33 78 69 90', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE AXIALE', 'Pharmacies', '33 02 87 37', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE NKOUGFI', 'Pharmacies', '33 42 07 98', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE DE NDOGBONG', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE DE L''ALLIANCE', 'Pharmacies', '33 42 99 15', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'DOUALA', 'PHARMACIE PK8', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'EDEA', 'HOPITAL REGIONAL ANNEXE', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'EDEA', 'CABINET MEDICAL T. CHARLES', 'Consultations & Soins', '33 46 48 31', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'EDEA', 'HOPITAL REGIONAL ANNEXE', 'Dentiste', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'EDEA', 'CABINET MEDICAL T. CHARLES', 'Hospitalisation', '33 46 48 31', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'EDEA', 'HOPITAL REGIONAL ANNEXE EDEA', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'EDEA', 'FONDATION SUZANNE MPOUMA', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'EDEA', 'FONDATION AD LUCEM EDEA', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'EDEA', 'HOPITAL REGIONAL ANNEXE', 'Imagerie medicale', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'EDEA', 'HOPITAL REGIONAL ANNEXE', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'EDEA', 'PHARMACIE ARC EN CIEL', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'GAROUA', 'CMS DE GAROUA (HOPITAL CNPS', 'Consultations & Soins', '99841539', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'GAROUA', 'CENTRE MEDICAL JESUS SAUVE ET GUERIT', 'Consultations & Soins', '22e271e093', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'GAROUA', 'CLINIQUE  SOUTHIA', 'Consultations & Soins', '22 27 21 33', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'GAROUA', 'CLINIQUE  SOUTHIA', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'GAROUA', 'CMS DE GAROUA (HOPITAL CNPS)', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'GAROUA', 'CENTRE MEDICAL JESUS SAUVE ET GUERIT', 'Hospitalisation', '22e271e093', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'GAROUA', 'CMS DE GAROUA (HOPITAL CNPS)', 'Laboratoires', '99841539', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'GAROUA', 'PHARMACIE DU GRAND MARCHE', 'Pharmacies', '22 27 27 09', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'GAROUA', 'PHARMACIE PROVINCIALE', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'GAROUA', 'PHARMACIE DIAMBOUTOU', 'Pharmacies', '22 27 31 39', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'GAROUA', 'PHARMACIE DE L''AMITIE', 'Pharmacies', '22 27 25 96', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'LIMBE / BUEA', 'HOPITAL REGIONAL DE LIMBE', 'Consultations & Soins', '33 33 22 50', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'LIMBE / BUEA', 'HOPITAL REGIONAL BUEA', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'LIMBE / BUEA', 'YUFANYI MEDICAL CLINIC', 'Consultations & Soins', '33 33 25 26', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'LIMBE / BUEA', 'SOLIDARITY CLINIC', 'Consultations & Soins', '77 61 57 57', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'LIMBE / BUEA', 'HILLCREST GROUP CLINIC', 'Consultations & Soins', '33 02 68 44', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'LIMBE / BUEA', 'FAMILY HEALTH CARE FOUNDATION', 'Consultations & Soins', '33 33 25 21', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'LIMBE / BUEA', 'HOPITAL REGIONAL BUEA', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'LIMBE / BUEA', 'HOPITAL REGIONAL LIMBE', 'Consultations & Soins', '33 33 22 50', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'LIMBE / BUEA', 'YUFANYI MEDICAL CLINIC', 'Hospitalisation', '33 33 52 26', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'LIMBE / BUEA', 'HILLCREST GROUP CLINIC', 'Hospitalisation', '33 02 68 44', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'LIMBE / BUEA', 'HOPITAL REGIONAL LIMBE', 'Hospitalisation', '33 33 22 50', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'LIMBE / BUEA', 'HOPITAL REGIONAL BUEA', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'LIMBE / BUEA', 'ST VERONICA''S MEDICAL OTTO', 'Hospitalisation', '33 32 23 58', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'LIMBE / BUEA', 'SOLIDARITY CLINIC', 'Hospitalisation', '77 61 57 57', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'LIMBE / BUEA', 'FAMILY HEALTH CARE FOUNDATION', 'Hospitalisation', '33 33 25 21', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'LIMBE / BUEA', 'HOPITAL REGIONAL LIMBE', 'Imagerie medicale', '33 33 22 50', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'LIMBE / BUEA', 'HOPITAL REGIONAL BUEA', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'LIMBE / BUEA', 'HOPITAL REGIONAL LIMBE', 'Laboratoires', '33 33 22 50', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'LIMBE / BUEA', 'LIMBE PHARMACIE', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'LIMBE / BUEA', 'FAKO ATLANTIC PHARMACY', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'LIMBE / BUEA', 'ROYAL PHARMACY', 'Pharmacies', '33 32 23 85', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'LIMBE / BUEA', 'PHARMACY PRIME', 'Pharmacies', '33 323 29 28', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'LIMBE / BUEA', 'AMAZING PHARMACY', 'Pharmacies', '33 32 32 24', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'MAROUA', 'CLINIQUE DU DIAMARE', 'Consultations & Soins', '99 84 00 84', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'MAROUA', 'CLINIQUE ROMAH', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'MAROUA', 'CABINET DENTAIRE LE CACTUS', 'Dentiste', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'MAROUA', 'CLINIQUE ROMAH', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'MAROUA', 'CLINIQUE DU DIAMARE', 'Hospitalisation', '99 84 00 84', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'MAROUA', 'CENTRE MEDICAL SOLIDARITE', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'MAROUA', 'CABINET D''OPTIQUE MEDICALE', 'Opticiens', '22 69 65 11', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'MAROUA', 'OPTICIENS LUNETIERS SANS FRONTIERES', 'Opticiens', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'MAROUA', 'PHARMACIE DU CENTRE', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'NGAOUNDERE', 'HOPITAL PROTESTANT N''DERE', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'NGAOUNDERE', 'CLINIQUE  STALINGRAD', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'NGAOUNDERE', 'CLINIQUE DENTAIRE - HOPITAL PROTESTANT N''DERE', 'Dentiste', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'NGAOUNDERE', 'HOPITAL PROTESTANT', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'NGAOUNDERE', 'CLINIQUE  STALINGRAD', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'NGAOUNDERE', 'GIFT OPTICAL', 'Opticiens', '75 52 17 35', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'NGAOUNDERE', 'PHARMACIE DE L''ENTENTE', 'Pharmacies', '99 94 83 07', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'NGAOUNDERE', 'PHARMACIE DE L''ESPERANCE', 'Pharmacies', '77 20 60 46', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'NGAOUNDERE', 'PHARMACIE DE LA GARE', 'Pharmacies', '22 25 16 88', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'NKONGSAMBA', 'CENTRE DE SANTE PRIVE DE NKONGSAMBA', 'Consultations & Soins', '33 49 34 35', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'NKONGSAMBA', 'HOPITAL REGIONAL DE NKONGSAMBA', 'Consultations & Soins', '33 49 11 03', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'NKONGSAMBA', 'HOPITAL PROTESTANT DE NDOUNGUE', 'Consultations & Soins', '75 90 15 22', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'NKONGSAMBA', 'HOPITAL REGIONAL DE NKONGSAMBA', 'Dentiste', '33 49 11 03', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'NKONGSAMBA', 'HOPITAL REGIONAL DE NKONGSAMBA', 'Hospitalisation', '33 49 11 03', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'NKONGSAMBA', 'CENTRE MEDICALISE DE NLONAKO', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'NKONGSAMBA', 'HOPITAL PROTESTANT DE NDOUNGUE', 'Hospitalisation', '75 90 15 22', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'NKONGSAMBA', 'CENTRE DE SANTE PRIVE DE NKONGSAMBA', 'Hospitalisation', '33 49 34 35', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'NKONGSAMBA', 'HOPITAL REGIONAL DE NKONGSAMBA', 'Imagerie medicale', '33 49 11 03', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'NKONGSAMBA', 'CENTRE DE SANTE PRIVE DE NKONGSAMBA', 'Kinesitherapie', '33 49 34 35', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'NKONGSAMBA', 'HOPITAL REGIONAL DE NKONGSAMBA', 'Laboratoires', '33 49 11 03', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'NKONGSAMBA', 'PHARMACIE DU TEMPLE', 'Pharmacies', '96 03 08 93', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CABINET MEDICAL LAMAT', 'Consultations & Soins', '22 21 28 40', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CAMEROON  SPECIALIST''S ASSO CSA', 'Consultations & Soins', '22 20 51 18', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CABINET MEDICAL DE LA CATHEDRALE', 'Consultations & Soins', '22 01 35 46', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CLINIQUE ANNEXE SAINTE MARTHE', 'Consultations & Soins', '22 20 74 23', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'FONDATION AD LUCEM OBOBOGO', 'Consultations & Soins', '22 01 98 96', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'POLYCLINIQUE  SENDE', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'POLYCLINIQUE TSINGA', 'Consultations & Soins', '22 20 23 37', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CLINIQUE SEMMEL WEI CLINIC', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CENTRE MEDICO PEDIATRIQUE FRANTZ FANON', 'Consultations & Soins', '22 00 17 27', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CLINIQUE DE BASTOS', 'Consultations & Soins', '22 21 12 84', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CLINIQUE BETHESDA', 'Consultations & Soins', '22 69 91 40', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'AD LUCEM EFOK', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'HOPITAL CNPS', 'Consultations & Soins', '22 23 60 34', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'HOPITAL CENTRAL YAOUNDE', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'FONDATION AD LUCEM OBOBOGO', 'Dentiste', '22 01 98 96', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CABINET DENTAIRE MALCOLM X', 'Dentiste', '97 87 83 74', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CABINET MEDICAL LA CATHEDRALE', 'Dentiste', '22 60 20 81', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CABINET DENTAIRE LA PULPITE', 'Dentiste', '22 70 53 75', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CABINET DENTAIRE DR NIAT ODETTE', 'Dentiste', '22 23 13 26', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CABINET DENTAIRE DR NGUEJIP', 'Dentiste', '22 68 62 05', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CABINET DENTAIRE DR NGUEJIP', 'Dentiste', '22 21 59 68', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CABINET DENTAIRE DR SOUNDJOCK', 'Dentiste', '22 00 89 96', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CABINET DENTAIRE DE BASTOS', 'Dentiste', '22 21 95 22', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CABINET DENTAIRE ETOA MEKI', 'Dentiste', '22 21 39 20', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CABINET DENTAIRE EFFILA EBE', 'Dentiste', '22 23 51 39', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CABINET DENTAIRE ETOILE', 'Dentiste', '22 23 20 78', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CABINET DENTAIRE DE L''ESTUAIRE', 'Dentiste', '22 22 76 24', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CABINET DENTAIRE DE LA CITE VERTE', 'Dentiste', '77 69 78 55', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CABINET DENTAIRE ST CHARLES', 'Dentiste', '22 21 55 68', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CABINET DENTAIRE DE L''OMNISPORT', 'Dentiste', '22 21 21 95', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CABINET DENTAIRE ELIG EDZOA', 'Dentiste', '22 20 32 94', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CABINET DENTAIRE LA MADONE', 'Dentiste', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CENTRE MEDICO PEDIATRIQUE FRANTZ FANON', 'Hospitalisation', '22 00 17 27', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'FONDATION MEDICO JEAN LOUIS ANDRE', 'Hospitalisation', '33 00 53 54', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CLINIQUE DU GOLF', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CLINIQUE SEMMEL WEI CLINIC', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'POLYCLINIQUE  SENDE', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CLINIQUE BETHESDA', 'Hospitalisation', '22 69 91 40', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'AD LUCEM  EFOK', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'HOPITAL CNPS', 'Hospitalisation', '22 23 60 34', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'FONDATION AD LUCEM OBOBOGO', 'Hospitalisation', '22 01 98 96', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CABINET MEDICAL LAMAT', 'Hospitalisation', '22 21 28 40', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CLINIQUE DE BASTOS', 'Hospitalisation', '22 21 12 84', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'POLYCLINIQUE TSINGA', 'Hospitalisation', '22 20 23 37', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CABINET MEDICAL DE LA CATHEDRALE', 'Hospitalisation', '22 01 35 46', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CAMEROON SPECIALIST''S ASSO CSA', 'Hospitalisation', '22 20 51 18', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'HOPITAL CENTRAL YAOUNDE', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CLINIQUE ANNEXE  SAINTE MARTHE', 'Hospitalisation', '22 20 74 23', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CENTRE DE RADIOLOGIE', 'Imagerie medicale', '22 23 07 09', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CABINET IMAGERIE DR HELL', 'Imagerie medicale', '22 03 60 58', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CABINET DE LA CATHEDRALE', 'Imagerie medicale', '22 01 35 46', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'FONDATION AD LUCEM OBOBOGO', 'Imagerie medicale', '22 01 98 96', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'LABORATOIRE DE MOKOLO', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'LABORATOIRE DU LAC', 'Laboratoires', '22 22 20 80', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'LABORATOIRE CENTRE PASTEUR', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'LABORATOIRE DU CENTRE', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'LABORATOIRE PRIMA LABO', 'Laboratoires', '22 22 53 75', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'FONDATION AD LUCEM OBOBOGO', 'Laboratoires', '22 01 98 96', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'KAMER LABO', 'Laboratoires', '22 03 57 92', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'LABORATOIRE BIOSANTE INTERNATIONAL', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'LABORATOIRE BIO-DIAGNOSTICA', 'Laboratoires', '22 04 88 07', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'LABORATOIRE GT LABO', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'AFRICA OPTIQUE', 'Opticiens', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'EVA OPTIQUE', 'Opticiens', '99 66 32 12', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'ART OPTIQUE', 'Opticiens', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'VISION OPTICAM', 'Opticiens', '22 23 49 80', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'ESPOIR OPTIQUE', 'Opticiens', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'TCHAYA OPTIQUE 2000', 'Opticiens', '22 22 05 20', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'LUX OPTIC', 'Opticiens', '22 23 07 99', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PRISM OPTIQUE', 'Opticiens', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'OPTIQUE DE LA CITE', 'Opticiens', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'KIM''S OPTIQUE', 'Opticiens', '22 06 71 88', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'TRANSPARENCES', 'Opticiens', '22 03 39 58', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'LA CAMEROUNAISE  D''OPTIQUE', 'Opticiens', '22 22 39 92', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'BOULEVARD OPTIQUE', 'Opticiens', '99 90 70 81', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PLANET OPTIC', 'Opticiens', '99 74 97 21', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'ESPACE LUNETTERIE', 'Opticiens', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CABINET D''OPTIQUE MEDICAL', 'Opticiens', '22 22 67 35', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'OPTIQUE PLUS', 'Opticiens', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'OEIL VIF OPTIQUE', 'Opticiens', '22 06 13 29', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'EMERAUDE OPTIQUE', 'Opticiens', '22 21 79 95', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'EMIA OPTIQUE', 'Opticiens', '77 62 57 91', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CLAIR OPTIC', 'Opticiens', '77 67 56 24', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'ITALIA OPTIQUE', 'Opticiens', '22 20 24 06', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'CATHEDRAL''S OPTIC', 'Opticiens', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PHARMACIE DE TONGOLO', 'Pharmacies', '22 20 94 85', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PHARMACIE JOUVENCE', 'Pharmacies', '22 31 72 24', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PHARMACIE DU SOLEIL', 'Pharmacies', '99 96 79 18', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PHARMACIE DU LAC', 'Pharmacies', '22 22 20 80', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PHARMACIE LES PETALLES', 'Pharmacies', '99 66 82 46', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PHARMACIE MVOG ATANGANA MBALLA', 'Pharmacies', '22 30 67 85', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PHARMACIE DU BOULEVARD', 'Pharmacies', '99 93 74 12', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PHARMACIE DE  SION', 'Pharmacies', '77 73 74 50', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PHARMACIE ST MARTIN', 'Pharmacies', '22 23 18 69', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PHARMACIE 2000', 'Pharmacies', '22 23 95 93', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PHARMACIE DE LA VIE', 'Pharmacies', '22 22 67 87', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PHARMACIE  SOTOWNEK', 'Pharmacies', '22 67 51 15', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PHARMACIE FRANCAISE', 'Pharmacies', '22 22 14 76', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PHARMACIE DE LA GRACE', 'Pharmacies', '22 04 15 61', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PHARMACIE URBAINE', 'Pharmacies', '22 23 49 11', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PHARMACIE MONGALE', 'Pharmacies', '22 23 42 41', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PHARMACIE AUMACHA', 'Pharmacies', '22 11 17 63', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'LA GRANDE PHARMACIE DES LUMIERES', 'Pharmacies', '22 20 58 55', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PHARMACIE LA REFERENCE', 'Pharmacies', '22 20 36 97', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PHARMACIE LE CYGNE', 'Pharmacies', '22 22 29 68', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PHARMACIE BETHESDA', 'Pharmacies', '22 31 39 97', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PHARMACIE PRINCIPALE', 'Pharmacies', '22 31 49 08', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PHARMACIE CAMEROUNAISE', 'Pharmacies', '22 22 13 21', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PHARMACIE SAINTE BERNADETTE', 'Pharmacies', '22 23 13 53', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PHARMACIE DE LA BRIQUE', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (36, 'YAOUNDE', 'PHARMACIE DU CARREFOUR EMIA', 'Pharmacies', '22 23 42 07', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'BITAM', 'Depet Pharmacie eeADAee', 'Pharmacies', '61 16 39', 'Quartier Monaco', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'BOOUE', 'Depet Pharmaceutique de la Liberte', 'Pharmacies', '11 60 21', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'FRANCEVILLE', 'Hepital de l''Amitie Sino-Gabonaise', 'Consultations & Soins', '67 70 64', 'Quartier Dialogue', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'FRANCEVILLE', 'Centre Hospitalier Regional A.B.', 'Consultations & Soins', '06 27 07 59', 'Quartier Menaye Epila', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'FRANCEVILLE', 'Cabinet Medical Ste Honore de Moanda', 'Dentistes', '06 43 38', 'Quartier Montagne Sainte', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'FRANCEVILLE', 'Cabinet du Dr.Abas', 'Hospitalisation', '67 70 64', 'Quartier de l''Hepital', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'FRANCEVILLE', 'Hepital de l''Amitie Sino-Gabonaise', 'Hospitalisation', '67 06 86', 'Quartier Dialogue', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'FRANCEVILLE', 'Clinique des Specialites', 'Hospitalisation', '67 72 82', 'Quartier Matebele', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'FRANCEVILLE', 'Centre Hospitalier Regional A.B.', 'Laboratoires', '67 72 82', 'Quartier Menaye Epila', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'FRANCEVILLE', 'Centre Hospitalier Regional A.B.', 'Laboratoires', '67 74 64', 'Quartier Menaye Epila', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'FRANCEVILLE', 'CIRMF', 'Laboratoires', '13 61 47', 'Domaine du CIRMF', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'FRANCEVILLE', 'Hepital de l''Amitie Sino-Gabonaise', 'Laboratoires', '67 12 30', 'Quartier Dialogue', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'FRANCEVILLE', 'Laboratoire le Menaye', 'Pharmacies', '66 19 99', 'Quartier Poto-Poto', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'FRANCEVILLE', 'Depet Pharmacie  eOlivier Okikadiee', 'Pharmacies', '67 75 02', 'Quartier Poto-Poto', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'FRANCEVILLE', 'Depet Pharmacie eeCentraleee', 'Pharmacies', '59 12 69', 'Quartier Montagne Sainte', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'FRANCEVILLE', 'Pharmacie du Plateau', 'Radiologie', '67 70 64', 'Centre Commercial', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'FRANCEVILLE', 'Hepital Schweitzer', 'Radiologie', '59 12 69', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'FRANCEVILLE', 'Hepital de l''Amitie Sino-Gabonaise', 'Radiologie', '67 70 64', 'Quartier Dialogue', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'FRANCEVILLE', 'Centre Hospitalier Regional A.B.', 'Consultations & Soins', '67 72 82', 'Quartier Menaye Epila', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'KOULAMOUTOU', 'Centre Hospitalier Regional P.M.', 'Consultations & Soins', '65 56 31', 'Quartier Mikoumou', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'KOULAMOUTOU', 'Centre de Sante Urbain K/M', 'Consultations & Soins', '65 50 35', 'Quartier Dakar', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'KOULAMOUTOU', 'Centre Hospitalier Regional P.M.', 'Dentistes', '65 56 31', 'Quartier Mikoumou', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'KOULAMOUTOU', 'Centre Hospitalier Regional P.M.', 'Hospitalisation', '65 56 31', 'Quartier Mikoumou', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'KOULAMOUTOU', 'Centre de Sante Urbain K/M', 'Pharmacies', '58 12 69', 'Quartier Dakar', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'KOULAMOUTOU', 'Centre Hospitalier Regional P.M.', 'Laboratoires', '58 12 69', 'Quartier Mikoumou', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'KOULAMOUTOU', 'Centre de Sante Urbain K/M', 'Laboratoires', '58 12 69', 'Quartier Dakar', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'KOULAMOUTOU', 'Depet Pharmaceutique Libighu', 'Pharmacies', '06 06 15 26', 'Quartier Silence', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'KOULAMOUTOU', 'Hepital Provincial de Makokou', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LAMBARENE', 'Hepital Schweitzer', 'Consultations & Soins', '58 12 69', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LAMBARENE', 'Hepital Schweitzer', 'Dentistes', '58 12 69', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LAMBARENE', 'Hepital Schweitzer', 'Hospitalisation', '58 12 69', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LAMBARENE', 'Hepital Schweitzer', 'Laboratoires', '58 12 69', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LAMBARENE', 'Depet Pharmaceutique Saint Jean', 'Pharmacies', '08 08 53', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LAMBARENE', 'Centre Medico-Social (CNSS)', 'Radiologie', '98 60 36', 'Centre Ville', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LASTROUVILLE', 'Depet Pharmaceutique de K/M', 'Pharmacies', '07  36 62 16', 'Quartier Mandji', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LASTROUVILLE', 'Depet Pharmaceutique Binanga', 'Pharmacies', '64 00 44', 'Face Marche', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Polyclinique El Rapha', 'Consultations & Soins', '44 70 00', 'Trois Quartiers', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Clinique Biyoghe', 'Consultations & Soins', '74 29 63', 'Montagne Sainte', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Clinique Union Medicale', 'Consultations & Soins', '73 70 85', 'Ancienne Sobraga', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Centre Medico-Chirurgical C.O. (CUMC-CO)', 'Consultations & Soins', '72 24 60', 'Glass', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Hepital d''Instruction des Armees OBO', 'Consultations & Soins', '72 02 38', 'Pk 9', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Clinique de la Paix', 'Consultations & Soins', '72 14 69', 'Rond-Point Democratie', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet Malaika', 'Consultations & Soins', '77 42 54', 'Bord de Mer', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Clinique SoS Medecins', 'Consultations & Soins', '74 08 80', 'Sotega', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet Ophtalmologique Likouala (COLI)', 'Consultations & Soins', '05 33 83 09', 'Likouala', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet Medical du Dr. Eric Baye', 'Consultations & Soins', '44 54 08', 'Ancienne Sobraga', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet Medical Nombie', 'Consultations & Soins', '07 82 06 06', 'Montagne Sainte', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Clinique Medivision', 'Consultations & Soins', '44 57 00', 'Bas de Gue-Gue', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet Gabon Vision 2000', 'Consultations & Soins', '76 84 70', 'Montagne Sainte', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Groupe Medical de Nzeng Ayong', 'Consultations & Soins', '71 10 16', 'Face Dispensaire Nzeng Ayong', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet d''Ophtalmologie de l''Universite', 'Consultations & Soins', '44 53 64', 'BD Leon MBA', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Clinique 5 Palmiers', 'Consultations & Soins', '74 31 40', 'Carrefour Hassan', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet Medical du Dr.Gerard Valeri', 'Consultations & Soins', '76 66 58', 'Centre Ville', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet Medical de Batterie IV', 'Consultations & Soins', '73 71 42', 'Batterie IV', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet Guglielmi', 'Consultations & Soins', '74 26 59', 'Quartier Glass', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet de Groupe', 'Consultations & Soins', '74 31 31', 'Montagne Sainte', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Clinique Amiel', 'Consultations & Soins', '70 58 01', 'ACAE', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet Medical ISIS', 'Consultations & Soins', '72 98 97', 'Centre Ville', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Clinique MIA', 'Consultations & Soins', '77 25 45', 'Plaine Niger', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet Medical de l''Universite', 'Consultations & Soins', '73 67 42', 'Face Universite', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Centre Medical Inter-Entreprises', 'Consultations & Soins', '72 88 00', 'BAS DE GUe-GUe,  ENTReE LYCeE FRANeAIS', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet Dentaire du Docteur E.V VILLENEUVE', 'Dentistes', '44 57 08', '9 eTAGES,  PReS DE CELTEL', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet Dentaire Staub & Baraglioli', 'Dentistes', '74 48 48', 'QUARTIER BATTERIE IV', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet Dentaire de Batterie IV', 'Dentistes', '44 41 05', 'Pk 9', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Hepital d''Instruction des Armees OBO', 'Dentistes', '72 02 38', 'Quartier Glass', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet Dentaire Poujol', 'Dentistes', '76 34 74', 'Face Ascoma', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet du Docteur Malanda', 'Dentistes', '72 08 72', 'AU DESSUS SEEG MBOLO', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet Dentaire Nyangone', 'Dentistes', '74 73 02', 'QUARTIER LOUIS', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet Dentaire du Dr Avomo Mistoul', 'Dentistes', '44 70 44', '#REF!', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet Dentaire du Docteur E.V VILLENEUVE (El Rapha)', 'Dentistes', '76 30 25', 'IMMEUBLE LE PReSIDENT', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet Dentaire du Docteur Charafe', 'Dentistes', '76 30 25', 'Face Presidence', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet Dentaire du Docteur Atzeni', 'Dentistes', '76 62 69', 'Quartier Louis', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet Dentaire du Docteur Zella Vovan', 'Dentistes', '73 20 94', 'AVENUE DE COINTET,  FACE AU MIN. DE L''INTeRIEUR', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet Dentaire Ayile', 'Dentistes', '76 29 35', 'ACAE', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Clinique Amiel', 'Hospitalisation', '70 50 01', 'Sotega', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Clinique SoS Medecins', 'Hospitalisation', '74 08 80', 'Bord de Mer', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Fondation Jeanne Ebori', 'Hospitalisation', '71 10 16', 'Face Dispensaire Nzeng Ayong', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Groupe Medical de Nzeng Ayong', 'Hospitalisation', '74 29 63', 'Montagne Sainte', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Clinique Biyoghe', 'Hospitalisation', '44 70 00', 'Trois Quartiers', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Polyclinique El Rapha', 'Hospitalisation', '77 25 45', 'Plaine Niger', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Clinique Mi=', 'Hospitalisation', '73 70 85', 'Ancienne Sobraga', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Clinique Union Medicale', 'Hospitalisation', '72 24 60', 'Glass', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Centre Medico-Chirurgical C.O. (CUMC-CO)', 'Hospitalisation', '72 14 69', 'Rond-Point Democratie', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Clinique de la Paix', 'Hospitalisation', '74 31 40', 'Carrefour Hassan', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Clinique 5 Palmiers', 'Hospitalisation', '73 27 17', 'Centre Ville', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet Medical ISIS', 'Hospitalisation', '72 02 38', 'Pk 9', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Hepital Pediatrique D''Owendo', 'Hospitalisation', '73 27 11', 'Bord de Mer Montee', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Maternite Josephine Bongo', 'Hospitalisation', '72 10 80', 'Glass', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Centre Hospitalier de Libreville', 'Hospitalisation', '72 12 83', 'NOMBAKeLe FACE MAIRIE 3eME ARR.', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Hepital d''Instruction des Armees OBO', 'Hospitalisation', '72 10 80', 'ZONE INDUSTRIELLE D''OLOUMI FACE CEDOC', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Fondation Jeanne Ebori', 'Kinesitherapeutes', '72 50 50', 'VERS L''AVENUE DE COINTET', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet Martel', 'Kinesitherapeutes', '', 'Pk 9', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Laboratoire d''Analyses Medicales Nombakele', 'Laboratoires', '44 70 00', 'NOMBAKeLe FACE MAIRIE 3eME ARR.', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Centre Medical Inter-Entreprises', 'Laboratoires', '77 29 68', 'ZONE INDUSTRIELLE D''OLOUMI FACE CEDOC', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Laboratoire Central d''Analyses Medicales', 'Laboratoires', '74 00 62', 'FACE MBOLO (INTeGRe e LA PHARMACIE STE MARIE)', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Hepital d''Instruction des Armees OBO', 'Laboratoires', '72 14 29', 'IMM. SONAGAR,  PReS CONSULAT DE FRANCE', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Polyclinique El Rapha', 'Laboratoires', '73 88 39', 'Louis', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'UNILAB', 'Laboratoires', '77 88 90', 'CENTRE VILLE PReS UGB', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Laboratoire  d''Analyses Medicales Sainte Marie', 'Laboratoires', '87 10 28', 'CENTRE VILLE PReS UGB', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'BIOLAB', 'Laboratoires', '72 14 88', 'CENTRE VILLE (GALERIES GALLICI)', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Labo Louis Bio Mercure', 'Laboratoires', '72 46 83', 'FACE e GIPA AVANT LE PMUG', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'centre Optic Gabonais eeCOGee', 'Opticiens', '76 05 28', 'CENTRE VILLE PReS UGB', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Optivision', 'Opticiens', '72 45 45', 'CENTRE VILLE (GALERIES GALLICI)', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Optical OHO', 'Opticiens', '48 03 90', 'CENTRE VILLE PReS UGB', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Opti''Conseil', 'Opticiens', '72 46 83', 'CENTRE VILLE (GALERIES GALLICI)', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Optic Gabon', 'Opticiens', '76 05 28', 'FACE UGB CENTRE VILLE', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Fred Optique', 'Opticiens', '72 45 45', 'GALERIE DE MBOLO', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Afric Vision', 'Opticiens', '48 03 90', 'Face e MBOLO', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Pharmacie d''Oloumi', 'Pharmacies', '75 15 86', 'OLOUMI', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Pharmacie Arambo', 'Pharmacies', '76 97 96', 'ROND POINT DE NKEMBO', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Grande Pharmacie de Glass', 'Pharmacies', '74 87 98', 'FEUX ROUGES DE GLASS', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Pharmacie Orety', 'Pharmacies', '73 28 91', 'CARREFOUR LOUIS-OReTY', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Pharmacie la Meridionale', 'Pharmacies', '74 87 13', 'MINDOUBe I', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Pharmacie Carrefour GP', 'Pharmacies', '71 30 30', 'CARREFOUR GP', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Pharmacie du Rond Point de la Plaine', 'Pharmacies', '74 70 50', 'AKeBe PLAINE', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Pharmacie de Ntoum', 'Pharmacies', '42 01 18', 'NTOUM', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Pharmacie des Jardins de la Peyrie', 'Pharmacies', '72 33 33', 'JARDINS DE LA PEYRIE', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Pharmacie de Plaine Niger', 'Pharmacies', '06 27 35 88', 'CARREFOUR BOULINGUI', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Pharmacie d''Awendje', 'Pharmacies', '72 64 65', 'AWENDJE', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Pharmacie des Facultes', 'Pharmacies', '44 37 38', 'FACE BIBLIOTHeQUE UNIVERSITAIRE', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Pharmacie d''Akebe', 'Pharmacies', '72 01 38', 'A COTe DE LA POSTE D''AKEBE', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Pharmacie du PK 6', 'Pharmacies', '77 21 52', 'FACE STATION PK 6', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Pharmacie du NZENG AYONG', 'Pharmacies', '71 06 16', 'FACE AU DISPENSAIRE', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Pharmacie de La Poste', 'Pharmacies', '72 83 30', 'IMMEUBLE HOLLANDO', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Pharmacie de la SNI OWENDO', 'Pharmacies', '70 27 80', 'CENTRE COMMERCIAL SNI', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Pharmacie Centrale de Garde', 'Pharmacies', '77 38 77', 'IMMEUBLE LE PReSIDENT', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Pharmacie Sainte Marie', 'Pharmacies', '74 00 51/52', 'BD TRIOMPHAL (FACE MBOLO)', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Grande Pharmacie des forestiers', 'Pharmacies', '72 23 52', 'MBOLO', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Pharmacie Le President', 'Pharmacies', '76 55 93', 'IMMEUBLE LE PReSIDENT', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Pharmacie de Derriere l''Hepital', 'Pharmacies', '74 68 46', 'DERRIeRE L''HOPITAL', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Pharmacie Marie Jeanne', 'Pharmacies', '77 58 09', 'NOMBAKeLe FACE CINeMA LE GABON', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Radiologie Emilie', 'Radiologie', '74 26 39', 'FACE MBOLO', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Cabinet de Groupe', 'Radiologie', '74 31 31', 'Montagne Sainte', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Polyclinique El Rapha', 'Radiologie', '44 70 00', 'Trois Quartiers', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Centre Medical Inter-Entreprises', 'Radiologie', '72 88 00', 'Face CEDOC', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Hepital d''Instruction des Armees OBO', 'Radiologie', '72 02 38', 'Pk 9', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Hepital Provincial de Makokou', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'MAKOKOU', 'Hepital Provincial de Makokou', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'MAKOKOU', 'Hepital Provincial de Makokou', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'MAKOKOU', 'Hepital Provincial de Makokou', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'MAKOKOU', 'Depet Pharmaceutique de la Gare', 'Pharmacies', '84 13 46', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'MAKOKOU', 'Pharmacie Centrale du Marche', 'Pharmacies', '20 23 41', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Hepital Provincial de Tchibanga', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Hepital Provincial de Tchibanga', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'LIBREVILLE', 'Hepital Provincial de Tchibanga', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'MAYUMBA', 'Hepital Provincial de Tchibanga', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'MAYUMBA', 'Hepital Provincial de Tchibanga', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'MAYUMBA', 'Depet Pharmaceutique La Banio', 'Pharmacies', '24 16e87', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'MAYUMBA', 'Pharmaba', '', '26 53 73', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'MAYUMBA', 'Depet Pharmaceutique du Bac', '', '35 71 30', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'MAYUMBA', 'Clinique Medico-Chirurgicale Ayile', '', '56 51 61', 'Roger Buttin', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'MAYUMBA', 'Clinique des Specialistes', 'Consultations & Soins', '67 08 86', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'MAYUMBA', 'Cabinet Medicale eeSainte Thereseee', 'Consultations & Soins', '66 19 00', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'MOANDA', 'Cabinet du Dr.Abbas', 'Dentistes', '67 07 22', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'MOANDA', 'Depet Pharmaceutique eeBoundamaee', 'Pharmacies', '06 11 19', 'Quartier Commercial', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'MOANDA', 'Pharmacie Moderne', 'Pharmacies', '67 70 71', 'Centre Commercial', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'MOANDA', 'Depet Pharmacie eeSource de Vieee', 'Pharmacies', '64 00 44', 'Quartier Montagne Sainte', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'NDJOLE', 'Depet Pharmaceutique eeIssemoee', 'Pharmacies', '58 20 69', 'Quartier Ndava', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'OYEM', 'Clinique du 8 Decembre', 'Hospitalisation', '98 61 56', 'CARREFOUR MONT MIYELE', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'OYEM', 'Centre Hospitalier Regional', 'Laboratoires', '98 64 41', 'Quartier Ndava', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'OYEM', 'Laboratoire d''Akouakam', 'Pharmacies', '98 68 78', 'Akouakam', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'OYEM', 'Depet Pharmacie ee8 Decembreee', 'Pharmacies', '98 66 06', 'MONT MIYELE', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'OYEM', 'Depet Pharmacie eeAdzougouee', 'Pharmacies', '', 'CARREFOUR ADZOUGOU', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'OYEM', 'Pharmacie de leEsperance', 'Pharmacies', '98 69 47', 'AKOAKAM', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'OYEM', 'Pharmacie P.M Nfounou', 'Pharmacies', '96 83 17', 'Centre Ville', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'OYEM', 'DEPOT PHARMACIE "NOTRE PHARMACIE"', 'Radiologie', '65 56 31', 'Marche de Bitam', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'OYEM', 'Centre Hospitalier Regional P.M.', 'Consultations & Soins', '', 'QUARTIER MIKOUMOU', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'OYEM', 'Centre Hospitalier Regional', 'Consultations & Soins', '98 61 56', 'Quartier Ndava', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'OYEM', 'Clinique Medico-Chirurgicale Ayile', 'Consultations & Soins', '56 51 61', 'roger Buttin', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'OYEM', 'Polyclinique Bilie', 'Consultations & Soins', '55 19 11', 'littoral', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'OYEM', 'Polyclinique Saint Pierre', 'Consultations & Soins', '55 18 56', 'CARREFOUR LeON MBA / CITe SATOM', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'OYEM', 'Clinique Medico-Chirurgicale du Littoral', 'Consultations & Soins', '56 50 13', 'CENTRE VILLE', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'OYEM', 'Cabinet de Groupe', 'Consultations & Soins', '55 28 46', 'CARREFOUR TOBIA', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'OYEM', 'Clinique Medico-Chirurgicale Mandji', 'Consultations & Soins', '55 35 56', 'ANCIENNE MARINE', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'PORT GENTIL', 'Cabinet Dentaire du Dr.Meroux', 'Dentistes', '55 36 69', 'PORT - GENTIL', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'PORT GENTIL', 'Cabinet Dentaire du Dr.Borie', 'Dentistes', '55 29 70', 'FACE BICIG', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'PORT GENTIL', 'Clinique Medico-Chirurgicale Ayile', 'Dentistes', '56 51 61', 'roger Buttin', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'PORT GENTIL', 'Clinique Medico-Chirurgicale du Littoral', 'Hospitalisation', '56 50 13', 'CENTRE VILLE', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'PORT GENTIL', 'Hepital Paul Igamba', 'Hospitalisation', '55 33 65', 'FACE UGB', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'PORT GENTIL', 'Clinique Medico-Chirurgicale Ayile', 'Hospitalisation', '56 51 61', 'ROGER BUTTIN', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'PORT GENTIL', 'Clinique Medico-Chirurgicale Mandji', 'Hospitalisation', '55 35 56', 'ANCIENNE MARINE', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'PORT GENTIL', 'Polyclinique Saint Pierre', 'Laboratoires', '55 18 56', 'CARREFOUR LeON MBA / CITe SATOM', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'PORT GENTIL', 'Look Optic', 'Opticiens', '55 19 11', 'CARREFOUR LeON MBA / CITe SATOM', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'PORT GENTIL', 'Optic 2000', 'Opticiens', '', 'NTCHENGUE', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'PORT GENTIL', 'Jean''s Optics', 'Opticiens', '73 36 40', 'Ancienne Sobraga', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'PORT GENTIL', 'Pharmacie Von Okuwa', 'Pharmacies', '57 35 30', 'CENTRE VILLE', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'PORT GENTIL', 'Pharmacie Centrale', 'Pharmacies', '55 19 11', 'littoral', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'PORT GENTIL', 'Pharmacie du Cap', 'Pharmacies', '55 28 46', 'CARREFOUR TOBIA', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'PORT GENTIL', 'Pharmacie du Boulevard', 'Pharmacies', '55 35 56', 'ANCIENNE MARINE', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'PORT GENTIL', 'Pharmacie du Grand Village', 'Pharmacies', '55 18 56', 'CARREFOUR LeON MBA / CITe SATOM', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'PORT GENTIL', 'Polyclinique Bilie', 'Radiologie', '55 32 59', 'FACE CABINET BILIe', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'PORT GENTIL', 'Polyclinique Saint Pierre', 'Radiologie', '55 06 63', 'Score', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'PORT GENTIL', 'Hepital Departemental', 'Consultations & Soins', '83 52 29', 'CENTRE VILLE', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'PORT GENTIL', 'Hepital Departemental', 'Dentistes', '83 52 29', 'CENTRE VILLE', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'TCHIBANGA', 'Hepital Departemental', 'Hospitalisation', '83 52 29', 'CENTRE VILLE', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'TCHIBANGA', 'Hepital Departemental', 'Laboratoires', '83 52 29', 'CENTRE VILLE', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (80, 'TCHIBANGA', 'Hepital Departemental', 'Radiologie', '83 52 29', 'CENTRE VILLE', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Clinique Rayua', 'Consultations et Soins', '20 74 35 35', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Clinique Kaba', 'Consultations et Soins', '20 73 21 08', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Clinique Barka', 'Consultations et Soins', '20 72 26 50', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Clinique Pasteur', 'Consultations et Soins', '20 72 50 16', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Clinique Pro Sante', 'Consultations et Soins', '20 72 26 56', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Clinique De la Cite', 'Consultations et Soins', '20 74 07 42', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Clinique Lahiya', 'Consultations et Soins', '20 74 09 68', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Clinique Gamkalley', 'Consultations et Soins', '20 73 20 33', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Clinique Magori', 'Consultations et Soins', '20 74 12 91', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Cabinet Dentaire Ivoire', 'Dentistes', '20 73 24 91', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Cabinet Dentaire Couronne', 'Dentistes', '96 96 32 23', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Cabinet Dentaire Kara', 'Dentistes', '96 98 38 92', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Cabinet Dentaire Koberet', 'Dentistes', '20 72 40 29', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Clinique Rayua', 'Hospitalisation', '20 74 35 35', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Clinique Kaba', 'Hospitalisation', '20 73 21 08', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Clinique Barka', 'Hospitalisation', '20 72 26 50', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Clinique Pasteur', 'Hospitalisation', '20 76 50 16', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Clinique Pro Sante', 'Hospitalisation', '20 72 26 56', '90 00 10 43', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Clinique De la Cite', 'Hospitalisation', '20 74 07 42', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Clinique Lahiya', 'Hospitalisation', '20 74 09 68', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Clinique Gamkalley', 'Hospitalisation', '20 73 20 33', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Clinique Magori', 'Hospitalisation', '20 74 12 91', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Tsoho Labo', 'Laboratoires', '20 72 23 47', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Walio Labo', 'Laboratoires', '20 72 55 56', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Cristal Optique', 'Opticiens', '90 48 80 55', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Pharmacie Vogue', 'Pharmacies', '20 72 58 58', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Pharmacie Des Arenes', 'Pharmacies', '20 74 16 11', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Pharmacie Du Point D', 'Pharmacies', '20 15 18 18', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Pharmacie Carrefour Sixieme', 'Pharmacies', '20 72 41 99', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Pharmacie de l''Aeroport', 'Pharmacies', '20  74 18 18', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Pharmacie Recasement', 'Pharmacies', '20 34 03 49', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Pharmacie Route Tillabery', 'Pharmacies', '91 45 15 46', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (157, 'NIAMEY', 'Pharmacie du Plateau', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Clinique Sainte Blandine', 'Consultations & Soins', '72 74 18 15', '77 75 09 25', 'B.P. 1314');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Sante Plus', 'Consultations & Soins', '', '99 58 32 48', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Groupe Medical Laennec', 'Consultations & Soins', '21 61 59 46', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Cabinet Medical Hibicus', 'Consultations & Soins', '72 25 09 00', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Clinique Dr Chouaib', 'Consultations & Soins', '21 61 21 62', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Cabinet Dentaire Kenou', 'Dentistes', '21  61 82 66', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Cabinet Dentaire  Ingamba', 'Dentistes', '75 75 21 63', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Laboratoire  Pour Tous', 'Dentistes', '75 50 13 46', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Groupe Medical Laennec', 'Dentistes', '21  61 59 46', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Clinque Dr Chouaib', 'Hospitalisations', '72 74 18 15', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Clinique Sainte Blandine', 'Hospitalisations', '75 50 58 39', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Hepitaux Publics (Communautaire,  CNHUB,  Pediatrie)', 'Hospitalisations', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Cabinet de Kinesitherapie et Massage BETHZATA', 'Kinesitherapie et Reeducation', '75 50 58 39', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Laboratoire  Pour Tous', 'Laboratoire', '75 50 13 46', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Laboratoire Groupe Medical Laennec', 'Laboratoire', '21 61 06 74', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Laboratoire  Pharmacie Notre Dame', 'Laboratoire', '21 61 09 62', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Institut Pasteur', 'Laboratoires', '21 61 89 96', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Pharmacie Optique Diamant', 'Opticiens', '21 61 65 15', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Centre Medical Optique', 'Opticiens', '75 50 32 02', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Optique Maison Dorcas', 'Opticiens', '75 24 86 96', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Pharmacie Optique Awa', 'Opticiens', '21 61 84 85', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Pharmacie du Port', 'Pharmacies', '21 61 09 83', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Pharmacie Le Relais', 'Pharmacies', '21 61 88 99', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Pharmacie Notre Dame', 'Pharmacies', '21 61 09 62', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Pharmacie Le Diamant', 'Pharmacies', '21 61 65 15', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Pharmacie Paco', 'Pharmacies', '21 61 07 34', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Pharmacie Sambo', 'Pharmacies', '21 61 03 43', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Pharmacie de l''Amitie', 'Pharmacies', '75 50 17 21', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Pharmacie La Paloma', 'Pharmacies', '21 61 21 00', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Pharmacie Awa', 'Pharmacies', '21 61 84 85', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Pharmacie Centre Ville', 'Pharmacies', '21 61 59 39', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Prise en Charge e retirer chez Ascoma', 'Radiologie', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'CERIM (Groupe Medical Laennec)', 'Radiologie', '21 61 59 46', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (40, 'BANGUI', 'Clinique Dr Chouaib', 'Radiologie', '21 61 21 62', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (42, 'N''DJAMENA', 'Clinique La Sauvegarde', 'Consultations & Soins', '22 53 34 64', '', 'B.P. 1314');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (42, 'N''DJAMENA', 'Clinique Le SAO', 'Consultations & Soins', '22 51 58 40', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (42, 'N''DJAMENA', 'Clinique La Rose', 'Consultations & Soins', '66 32 17 56', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (42, 'N''DJAMENA', 'Clinique La Providence', 'Consultations & Soins', '22 51 75 33', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (42, 'N''DJAMENA', 'Clinique Medico-chirurgicale  eeLa Graceee', 'Consultations & Soins', '66 27 13 12', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (42, 'N''DJAMENA', 'Hepital de l''Amitie', 'Consultations & Soins', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (42, 'N''DJAMENA', 'Cabinet Dentaire Acropolis', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (42, 'N''DJAMENA', 'Cabinet Dentaire Le Berger', 'Dentistes', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (42, 'N''DJAMENA', 'Clinique La Providence', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (42, 'N''DJAMENA', 'Clinique La Sauvegarde', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (42, 'N''DJAMENA', 'Hepital de l''Amitie', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (42, 'N''DJAMENA', 'Clinique Le SAO', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (42, 'N''DJAMENA', 'Clinique Medico-chirurgicale  eeLa Graceee', 'Hospitalisation', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (42, 'N''DJAMENA', 'ETS etalon Biomedical Medical', 'Laboratoires', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (42, 'N''DJAMENA', 'Cabinet N''Djamena Optique Medicale', 'Opticiens', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (42, 'N''DJAMENA', 'Pharmacie du Chari Logone', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (42, 'N''DJAMENA', 'Pharmacie Le Bugunage', 'Pharmacies', '22 52 40 66', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (42, 'N''DJAMENA', 'Pharmacie du Salut', 'Pharmacies', '', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (42, 'N''DJAMENA', 'Pharmacie Taroum', 'Pharmacies', '66 55 66 28', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (42, 'N''DJAMENA', 'Pharmacie du Centre', 'Pharmacies', '22 51 49 30', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (42, 'N''DJAMENA', 'Pharmacie Le Kabia', 'Pharmacies', '22 51 63 75', '', '');
INSERT INTO organisme_sante(code_pays, ville, nom_centre, type_prestation, telephone1, telephone2, code_postal) VALUES (42, 'N''DJAMENA', 'Pharmacie Face TiT', 'Pharmacies', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
