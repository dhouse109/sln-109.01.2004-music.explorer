CREATE TABLE `tblLUGenres` (
  `ID` int(11) NOT NULL auto_increment,
  `Genre` varchar(50) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `ID` (`ID`)
) TYPE=MyISAM; 

CREATE TABLE `tblLUSubGenres` (
  `ID` int(11) NOT NULL auto_increment,
  `SubGenre` varchar(50) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `ID` (`ID`)
) TYPE=MyISAM; 

CREATE TABLE `tblLULocations` (
  `ID` int(11) NOT NULL auto_increment,
  `Location` varchar(100) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `ID` (`ID`)
) TYPE=MyISAM; 

CREATE TABLE `tblLUPrice` (
  `ID` int(11) NOT NULL auto_increment,
  `Price` double default NULL,
  PRIMARY KEY  (`ID`),
  KEY `ID` (`ID`)
) TYPE=MyISAM; 

CREATE TABLE `tblLURecLabels` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordLabel` varchar(100) default NULL,
  `LabelWebsiteURL` varchar(255) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `ID` (`ID`)
) TYPE=MyISAM; 