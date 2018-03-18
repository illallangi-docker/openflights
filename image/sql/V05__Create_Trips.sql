CREATE TABLE `trips` (
  `name` text,
  `url` text,
  `uid` int(11) default NULL,
  `trid` int(11) NOT NULL auto_increment,
  `public` text,
  `note` text,
  PRIMARY KEY  (`trid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;