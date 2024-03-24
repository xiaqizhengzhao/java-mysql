#夏启政诏
CREATE DATABASE BookDB;
USE BookDB;
CREATE TABLE UserMsg(
UserId int primary key AUTO_INCREMENT COMMENT '用户ID',
UserName VARCHAR(50) UNIQUE not null COMMENT '用户名',
UserPwd VARCHAR(50) NOT NUll COMMENT '用户密码',
UserState ENUM('开启','禁用') DEFAULT'开启' NOT NUll COMMENT '用户状态'
);

CREATE TABLE BookType(
BookTypeId int PRIMARY KEY auto_increment COMMENT '图书类型ID',
BookTypeName VARCHAR(50) COMMENT '图书类型名称',
BookTypeRemark VARCHAR(50) COMMENT '图书类型说明'
);
CREATE TABLE Book(
BookId int primary key AUTO_increment COMMENT '图书ID',
BookName VARCHAR(50) not NULL COMMENT '图书名称',
BookTypeId int COMMENT '图书类型ID',
BookAuthor VARCHAR(50) COMMENT '作者',
BookPess VARCHAR(50) COMMENT '出版社',
BookPrice DECIMAL(9,2) COMMENT '单价',
BookPage int COMMENT '页码',
Createtime datetime COMMENT '上架时间',
UserID int COMMENT '操作员ID',
IsBorrov ENUM('是','否') DEFAULT('否') COMMENT '是否借阅',
Borrover VARCHAR(50) COMMENT '借阅人',
BorrovTine DATETIME COMMENT '借阅时间',
FOREIGN KEY (BookTypeId) REFERENCES BookType(BookTypeId),
FOREIGN KEY (UserID) REFERENCES UserMsg(UserId)
);
SELECT * FROM UserMsg WHERE UserName LIKE '王%';
SELECT * FROM BookType WHERE BookTypeRemark IS NOT NULL;
SELECT * FROM Book WHERE BookPage<100;
SELECT * FROM Book WHERE BookPrice BETWEEN 50 AND 100;
SELECT * FROM Book ORDER BY BorrovTine DESC;
SELECT * FROM Book ORDER BY BookPrice ASC LIMIT 0,3;
SELECT MAX(BookPrice) FROM Book;
SELECT MIN(BookPrice) FROM Book;
SELECT AVG(BookPrice) FROM Book;
SELECT SUM(BookPrice) FROM Book WHERE SUM(BookPrice)*10;
SELECT BookTypeId FROM Book GROUP BY BookTypeId;
