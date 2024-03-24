-- 创建音乐表
CREATE DATABASE mu;
USE mu;
CREATE TABLE MusicInfo
(
  MusicID INT AUTO_INCREMENT PRIMARY KEY,
  TypeName VARCHAR(50),
	Type VARCHAR(50),
  SingerID INT,
  ShelfTime DATETIME,
	Br VARCHAR(20)
);
INSERT INTO musicinfo(MusicID,TypeName,Type,SingerID,ShelfTime,Br) 
VALUES(1,'青藏高原','流行',1,'2004-1-1','测试值'),
(2,'九儿','摇滚',1,'2005-1-1',NULL),
(3,'双节棍','流行',2,'2008-1-1',NULL),
(4,'彩虹','欢乐',2,'2006-1-1',NULL),
(5,'青花瓷','流行',2,'2007-1-1',NULL);

SELECT * FROM MusicInfo;
SELECT * FROM MusicInfo WHERE TypeName='青花瓷';
SELECT * FROM MusicInfo WHERE TypeName IN ('青花瓷','彩虹');
SELECT * FROM musicinfo WHERE Shelftime>'2005-01-01';
SELECT * FROM musicinfo WHERE Br IS NOT NULL;
UPDATE musicinfo SET Br='真好听' WHERE MusicID IN(3)

SELECT DISTINCT singerID FROM MusicInfo;
SELECT *FROM musicinfo WHERE TypeName LIKE '青%';
SELECT *FROM musicinfo WHERE TypeName NOT LIKE '青%';
SELECT * FROM musicinfo WHERE Type='流行' AND ShelfTime>20070501;