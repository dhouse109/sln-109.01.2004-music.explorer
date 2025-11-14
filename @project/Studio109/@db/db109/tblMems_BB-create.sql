# Host: localhost
# Database: db109
# Table: 'tblMems_BB'
# 
CREATE TABLE `tblMems_BB` (
  `ID` int(11) NOT NULL auto_increment,
  `Mem_ID` int(11) default NULL,
  `BBDatePosted` date default NULL,
  `BBTimePosted` time default '00:00:00',
  `BBTitle` char(50) default NULL,
  `BBMessage` char(255) default NULL,
  `BBMessageTo_ID` int(11) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `ID` (`ID`),
  KEY `Mem_ID` (`Mem_ID`),
  KEY `BBMessageTo_ID` (`BBMessageTo_ID`)
) TYPE=MyISAM; 