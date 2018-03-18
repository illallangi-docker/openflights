CREATE TABLE `planes` (
  `name` text,
  `abbr` text,
  `speed` double default NULL,
  `plid` int(11) NOT NULL auto_increment,
  `public` char(1) default NULL,
  PRIMARY KEY  (`plid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;