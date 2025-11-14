# Host: localhost
# Database: db109
# Table: 'tblLUMessageTo'
# 
CREATE TABLE `tblLUMessageTo` (
  `ID` int(11) NOT NULL auto_increment,
  `MessageTo` varchar(50) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `ID` (`ID`)
) TYPE=MyISAM; 