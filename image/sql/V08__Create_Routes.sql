CREATE TABLE `routes` (
  `airline` varchar(3) default NULL,
  `alid` int(11) default NULL,
  `src_ap` varchar(4) default NULL,
  `src_apid` int(11) default NULL,
  `dst_ap` varchar(4) default NULL,
  `dst_apid` int(11) default NULL,
  `codeshare` text,
  `stops` text,
  `equipment` text,
  `added` varchar(1) default NULL,
  `rid` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`rid`),
  UNIQUE KEY `alid` (`alid`,`src_apid`,`dst_apid`),
  KEY `src_apid` (`src_apid`),
  KEY `dst_apid` (`dst_apid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;