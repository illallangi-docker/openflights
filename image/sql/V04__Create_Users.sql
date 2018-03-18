CREATE TABLE `users` (
  `name` text,
  `password` text,
  `uid` int(11) NOT NULL auto_increment,
  `public` text,
  `email` text,
  `count` int(11) default '0',
  `editor` varchar(1) default 'B',
  `elite` varchar(1) default '',
  `validity` date default NULL,
  `guestpw` text,
  `startpane` varchar(1) default 'H',
  `locale` varchar(5) default 'en_US',
  `units` varchar(1) default 'M',
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;