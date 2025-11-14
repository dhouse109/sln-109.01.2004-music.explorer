# Exported from MS Access to MySQL
# (C) 1997-98 CYNERGI - www.cynergi.net, info@cynergi.net
#
# EXPORT DATE/TIME: 8/20/2004 8:01:15 PM
# SOURCE DATA BASE: C:\Documents and Settings\dhouse.109STUDIOS\Desktop\dbIggBobNET.mdb  (Created by Access V.4.0)
# USER            : admin
# EXPORTED BY     : exportSQLD 2.1 (on Access V.3.6)
#
#  TABLE  (* means name changed)        DESCRIPTION
#  -----------------------------------  ----------------------------------------
#  tblAlbums                            N/A
#  tblArtists                           N/A
#  tblFiles                             N/A
#  tblMems_DL                           N/A
#  tblMems_Fav                          N/A
#  tblTracks                            N/A
#


#------------------------------------------------------------------------------
# TABLE: tblAlbums
#
#   FIELD (* means field name changed)  DESCRIPTION
#  -----------------------------------  ----------------------------------------
#  ID                                   N/A
#  Artist_ID                            N/A
#  AlbumName                            N/A
#  AlbumLabel                           N/A
#  DateReleased                         N/A
#  TotalTracks                          N/A
#  TotalLength                          N/A
#  AlbumGenre                           N/A
#  AlbumIsMix                           N/A
#

CREATE TABLE tblAlbums
     (
     ID                   INT(11) NOT NULL AUTO_INCREMENT,
     Artist_ID            INT(11) DEFAULT NULL,
     AlbumName            VARCHAR(255) DEFAULT NULL,
     AlbumLabel           VARCHAR(100) DEFAULT NULL,
     DateReleased         date NOT NULL default '0000-00-00',
     TotalTracks          INT(11) DEFAULT NULL,
     TotalLength          VARCHAR(20) DEFAULT NULL,
     AlbumGenre           VARCHAR(100) DEFAULT NULL,
     AlbumIsMix           TINYINT(4) DEFAULT NULL,
     PRIMARY KEY (ID),
     KEY (ID),
     KEY (Artist_ID)
     );
# Warning: In new field 'Artist_ID', MySQL needs NOT NULL to support default values! - it won't be set a default.
# Warning: In new field 'TotalTracks', MySQL needs NOT NULL to support default values! - it won't be set a default.


# This table has no data

#------------------------------------------------------------------------------
# TABLE: tblArtists
#
#   FIELD (* means field name changed)  DESCRIPTION
#  -----------------------------------  ----------------------------------------
#  ID                                   N/A
#  ArtistName                           N/A
#  BasedIn                              N/A
#  ArtistLabel                          N/A
#  Affiliation                          N/A
#  ArtistWeb                            N/A
#  JoinDate                             N/A
#

CREATE TABLE tblArtists
     (
     ID                   INT(11) NOT NULL AUTO_INCREMENT,
     ArtistName           VARCHAR(100) DEFAULT NULL,
     BasedIn              VARCHAR(255) DEFAULT NULL,
     ArtistLabel          VARCHAR(100) DEFAULT NULL,
     Affiliation          VARCHAR(100) DEFAULT NULL,
     ArtistWeb            VARCHAR(255) DEFAULT NULL,
     JoinDate             date NOT NULL default '0000-00-00',
     PRIMARY KEY (ID),
     KEY (ID)
     );

# This table has no data

#------------------------------------------------------------------------------
# TABLE: tblFiles
#
#   FIELD (* means field name changed)  DESCRIPTION
#  -----------------------------------  ----------------------------------------
#  ID                                   N/A
#  FileName                             N/A
#  DateAdded                            N/A
#  STPath                               N/A
#  DLPath                               N/A
#  STServer                             N/A
#  DLServer                             N/A
#  FileSize                             N/A
#  FileSizeText                         N/A
#  PartOfMix                            N/A
#  Active                               N/A
#

CREATE TABLE tblFiles
     (
     ID                   INT(11) NOT NULL AUTO_INCREMENT,
     FileName             VARCHAR(255) DEFAULT NULL,
     DateAdded            date NOT NULL default '0000-00-00',
     STPath               VARCHAR(255) DEFAULT NULL,
     DLPath               VARCHAR(255) DEFAULT NULL,
     STServer             VARCHAR(100) DEFAULT NULL,
     DLServer             VARCHAR(100) DEFAULT NULL,
     FileSize             INT(11) DEFAULT NULL,
     FileSizeText         VARCHAR(50) DEFAULT NULL,
     PartOfMix            TINYINT(4) DEFAULT NULL,
     Active               TINYINT(4) DEFAULT NULL,
     PRIMARY KEY (ID),
     KEY (ID)
     );
# Warning: In new field 'FileSize', MySQL needs NOT NULL to support default values! - it won't be set a default.


# This table has no data

#------------------------------------------------------------------------------
# TABLE: tblMems_DL
#
#   FIELD (* means field name changed)  DESCRIPTION
#  -----------------------------------  ----------------------------------------
#  ID                                   N/A
#  Mem_ID                               N/A
#  DateCreated                          N/A
#  Track_ID                             N/A
#

CREATE TABLE tblMems_DL
     (
     ID                   INT(11) DEFAULT NULL,
     Mem_ID               INT(11) DEFAULT NULL,
     DateCreated          date NOT NULL default '0000-00-00',
     Track_ID             INT(11) DEFAULT NULL,
     PRIMARY KEY (ID),
     KEY (ID),
     KEY (Mem_ID),
     KEY (Track_ID)
     );
# Warning: In new field 'ID', MySQL needs NOT NULL to support default values! - it won't be set a default.
# Warning: In new field 'Mem_ID', MySQL needs NOT NULL to support default values! - it won't be set a default.
# Warning: In new field 'Track_ID', MySQL needs NOT NULL to support default values! - it won't be set a default.


# This table has no data

#------------------------------------------------------------------------------
# TABLE: tblMems_Fav
#
#   FIELD (* means field name changed)  DESCRIPTION
#  -----------------------------------  ----------------------------------------
#  ID                                   N/A
#  Mem_ID                               N/A
#  DateCreated                          N/A
#  Artist_ID                            N/A
#  Memo                                 N/A
#

CREATE TABLE tblMems_Fav
     (
     ID                   INT(11) DEFAULT NULL,
     Mem_ID               INT(11) DEFAULT NULL,
     DateCreated          date NOT NULL default '0000-00-00',
     Artist_ID            INT(11) DEFAULT NULL,
     Memo                 VARCHAR(255) DEFAULT NULL,
     PRIMARY KEY (ID),
     KEY (ID),
     KEY (Mem_ID),
     KEY (Artist_ID)
     );
# Warning: In new field 'ID', MySQL needs NOT NULL to support default values! - it won't be set a default.
# Warning: In new field 'Mem_ID', MySQL needs NOT NULL to support default values! - it won't be set a default.
# Warning: In new field 'Artist_ID', MySQL needs NOT NULL to support default values! - it won't be set a default.


# This table has no data

#------------------------------------------------------------------------------
# TABLE: tblTracks
#
#   FIELD (* means field name changed)  DESCRIPTION
#  -----------------------------------  ----------------------------------------
#  ID                                   N/A
#  Album_ID                             N/A
#  TrackNum                             N/A
#  TrackTitle                           N/A
#  TrackLength                          N/A
#  Genre                                N/A
#  SubGenre                             N/A
#  File_ID                              N/A
#

CREATE TABLE tblTracks
     (
     ID                   INT(11) NOT NULL AUTO_INCREMENT,
     Album_ID             INT(11) DEFAULT NULL,
     TrackNum             INT(11) DEFAULT NULL,
     TrackTitle           VARCHAR(255) DEFAULT NULL,
     TrackLength          VARCHAR(20) DEFAULT NULL,
     Genre                VARCHAR(100) DEFAULT NULL,
     SubGenre             VARCHAR(100) DEFAULT NULL,
     File_ID              INT(11) DEFAULT NULL,
     PRIMARY KEY (ID),
     KEY (ID),
     KEY (Album_ID),
     KEY (TrackNum),
     KEY (File_ID)
     );
# Warning: In new field 'Album_ID', MySQL needs NOT NULL to support default values! - it won't be set a default.
# Warning: In new field 'TrackNum', MySQL needs NOT NULL to support default values! - it won't be set a default.
# Warning: In new field 'File_ID', MySQL needs NOT NULL to support default values! - it won't be set a default.


# This table has no data
