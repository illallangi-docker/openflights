CREATE TABLE `locales` (
  `locale` varchar(5) NOT NULL,
  `name` text,
  PRIMARY KEY  (`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `facebook` (
  `uid` int(11) default NULL,
  `fbuid` int(11) NOT NULL,
  `updated` datetime default NULL,
  `sessionkey` text,
  `pref_onfly` varchar(1) default 'Y',
  `pref_onnew` varchar(1) default 'Y',
  PRIMARY KEY  (`fbuid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `tripit_tokens` (
  `uid` int(11) NOT NULL,
  `auth_token` char(40) NOT NULL,
  `auth_token_secret` char(40) NOT NULL,
  `active` enum('N','Y') NOT NULL DEFAULT 'Y',
  KEY `uid_idx` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;