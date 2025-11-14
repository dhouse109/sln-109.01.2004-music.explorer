# Host: localhost
# Database: db109
# Table: 'tblMems_Connects'
# 
CREATE TABLE `tblMems_Connects` (
  `Mem_ID` int(11) NOT NULL default '0',
  `Connect_Mem_ID` int(11) NOT NULL default '0',
  `Connect_EMail` char(50) default NULL,
  `ConnectPending` tinyint(4) default NULL,
  PRIMARY KEY  (`Mem_ID`,`Connect_Mem_ID`),
  KEY `Mem_ID` (`Mem_ID`),
  KEY `Connect_Mem_ID` (`Connect_Mem_ID`),
  KEY `Connect_EMail` (`Connect_EMail`)
) TYPE=MyISAM; 