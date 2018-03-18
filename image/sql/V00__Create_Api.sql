CREATE TABLE `api` (
  `apiid` int(11) NOT NULL auto_increment,
  `tab` varchar(64) NOT NULL,
  `col` varchar(64) default NULL,
  `cmd` varchar(32) NOT NULL,
  `result` enum('T','F') NOT NULL,
  PRIMARY KEY  (`apiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;