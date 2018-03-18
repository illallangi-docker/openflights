CREATE TABLE `countries` (
  `junk` text,
  `code` varchar(2) NOT NULL,
  `name` text,
  `oa_code` varchar(2) default NULL,
  `dst` char(1) default NULL,
  PRIMARY KEY  (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `countries_oa` (
  `oacode` text,
  `country` text,
  `continent` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;