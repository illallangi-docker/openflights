CREATE TABLE `airports` (
  `name` text NOT NULL,
  `city` text,
  `country` text,
  `iata` varchar(3) default NULL,
  `icao` varchar(4) default NULL,
  `x` double NOT NULL,
  `y` double NOT NULL,
  `elevation` int(11) default NULL,
    `apid` int(11) NOT NULL auto_increment,
  `uid` int(11) default NULL,
  `timezone` float default NULL,
  `dst` char(1) default NULL,
  `tz_id` text,
  PRIMARY KEY  (`apid`),
  KEY `x` (`x`),
  KEY `y` (`y`),
  KEY `iata` (`iata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE UNIQUE INDEX `iata_idx` ON airports(iata);
CREATE UNIQUE INDEX `icao_idx` ON airports(icao);

CREATE TABLE `airports_dafif` (
  `name` text NOT NULL,
  `city` text,
  `code` text,
  `iata` varchar(3) default NULL,
  `icao` varchar(4) NOT NULL,
  `x` double NOT NULL,
  `y` double NOT NULL,
  `elevation` int(11) default NULL,
  PRIMARY KEY  (`icao`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `airports_gad` (
  `name` text NOT NULL,
  `city` text,
  `country` text,
  `iata` varchar(3) default NULL,
  `icao` varchar(4) NOT NULL,
  `x` double NOT NULL,
  `y` double NOT NULL,
  `elevation` int(11) default NULL,
  PRIMARY KEY  (`icao`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;