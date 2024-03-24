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

SELECT * FROM UserInfo;
SELECT * FROM UserInfo WHERE userAdd='湖南';
SELECT * FROM UserInfo WHERE userAdd IS NULL;
SELECT * FROM UserInfo WHERE userAdd IS NOT NULL;
SELECT * FROM UserInfo WHERE userAge>20;
SELECT * FROM UserInfo WHERE userID>2;
SELECT * FROM UserInfo WHERE userTel IS NOT NULL;
SELECT * FROM UserInfo WHERE userAge IN(18,20);
SELECT * FROM UserInfo WHERE userAge NOT IN(18,20);
SELECT * FROM UserInfo WHERE userAge BETWEEN 18 AND 20;
SELECT * FROM UserInfo WHERE userAge not BETWEEN 20 AND 21;

SELECT DISTINCT userSex FROM UserInfo;
SELECT DISTINCT userAdd FROM UserInfo;
SELECT DISTINCT userAdd,userSex FROM UserInfo;
SELECT * FROM UserInfo WHERE userName LIKE '王_'
SELECT * FROM UserInfo WHERE userName LIKE '__'
SELECT * FROM UserInfo WHERE userName LIKE '_六'
select * FROM UserInfo WHERE userName='王五' AND userSex='男'
select * FROM UserInfo WHERE userAge=20 OR userSex='男'
