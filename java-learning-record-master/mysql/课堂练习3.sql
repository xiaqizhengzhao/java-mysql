CREATE DATABASE MU;

USE MU;

CREATE TABLE musicinfo (
  MusicID int(11) NOT NULL AUTO_INCREMENT,
  TypeID int(11) DEFAULT NULL,
  Title varchar(50) NOT NULL,
  SingerID int(11) DEFAULT NULL,
  ShelfTime datetime DEFAULT NULL,
  Remark varchar(200) DEFAULT NULL,
  PRIMARY KEY (MusicID)
)

/*Data for the table musicinfo */

insert  into musicinfo(MusicID,TypeID,Title,SingerID,ShelfTime,Remark) values (1,1,'青藏高原',1,'2004-01-01 00:00:00','1'),(2,1,'九九',1,'2005-01-01 00:00:00','2'),(3,2,'双节棍',2,'2008-01-01 00:00:00',NULL),(4,2,'彩虹',2,'2006-01-01 00:00:00',NULL),(5,2,'青花瓷',2,'2007-01-01 00:00:00',NULL),(6,3,'美声歌曲',1,'2002-01-01 00:00:00',NULL);

SELECT * FROM musicinfo ORDER BY ShelfTime DESC;
SELECT COUNT(SingerID) FROM musicinfo;
SELECT * FROM musicinfo LIMIT 1,2;
