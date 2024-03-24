CREATE DATABASE mydatabase;
use mydatabase;
CREATE TABLE UserInfo(
	userID INT PRIMARY KEY AUTO_INCREMENT,
	userName NVARCHAR(50) NOT NULL,
	userPwd VARCHAR(20) NOT NULL,
	userSex ENUM('男','女') DEFAULT '男',
	userAge INT,
	userTel VARCHAR(20) UNIQUE,
	userAdd NVARCHAR(100)
);
INSERT INTO userinfo VALUES(1,'张三','zs','男',18,'13000','湖南');
#插入指定列
INSERT INTO userinfo(username,userpwd,usersex,userage,usertel,useradd) 
VALUES('李四','ls','女',20,'13666','湖南');
#插入默认值和空值
INSERT INTO userinfo(username,userpwd,usersex,userage,usertel,useradd) 
VALUES('王五','ww',DEFAULT,19,'13888',NULL);
#插入多条数据
INSERT INTO userinfo(username,userpwd,usersex,userage,usertel,useradd) 
VALUES('赵六','zl',DEFAULT,21,'13999',NULL),('孙七','sq',DEFAULT,22,'13222',NULL);
INSERT INTO userinfo VALUES(0,'李博','libo','男',18,'9438','139');
INSERT INTO userinfo VALUES(0,'李圣安','lishengan','男',18,'2222','143');
INSERT INTO userinfo VALUES(0,'王志翔','wangzhiixang','男',18,'333','138');

SELECT * FROM UserInfo AS B WHERE B.userAge>18 AND B.userSex='男';
SELECT USERINFO.userAge AS 年龄 , userinfo.userSex AS 性别 FROM userinfo;
SELECT * FROM userinfo ORDER BY userage DESC;
SELECT * FROM userinfo ORDER BY userinfo.userAge ASC,userinfo.userID DESC;
SELECT U.userTel AS 电话,u.userAge 年龄,u.userPwd as 密码 FROM userinfo AS U ORDER BY 年龄 ASC,电话 DESC ,密码 DESC;
SELECT SUM(userage) FROM userinfo;
SELECT avg(userage) FROM userinfo;
SELECT max(userage) FROM userinfo;
SELECT min(userage) FROM userinfo;
SELECT count(userage) FROM userinfo;
#分组查询
SELECT count(userSex),userSex FROM userinfo GROUP BY userSex;
SELECT AVG(userage),useradd FROM userinfo GROUP BY useradd HAVING AVG(userage)>19;
#限制查询
SELECT * FROM userinfo LIMIT 3;
SELECT * FROM userinfo LIMIT 3,2;
SELECT CURDATE() FROM userinfo;
SELECT CURTIME() FROM userinfo;
SELECT SYSDATE() FROM userinfo;
SELECT LENGTH(useradd),useradd FROM userinfo ;
UPDATE userinfo SET useradd=CONCAT('湖南','143') WHERE userid=3;
SELECT username,CASE 
	WHEN userage<20 THEN
		'这个人的年龄小于20'
	ELSE
		'这个人的年龄小于20'
END '判断年龄'FROM userinfo;
