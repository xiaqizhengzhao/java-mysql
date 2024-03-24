CREATE DATABASE KEDB;
USE KEDB;
CREATE TABLE Class(
classno INT PRIMARY KEY AUTO_INCREMENT NOT NULL COMMENT '班级编号',
classname VARCHAR(20) not NULL UNIQUE COMMENT '班级名称',
number int NOT NULL COMMENT '班级人数'
)
CREATE TABLE Student(
stuno INT PRIMARY KEY AUTO_INCREMENT NOT NULL COMMENT '学生编号',
stuname VARCHAR(8) NOT NULL COMMENT '学生姓名',
sex VARCHAR(2) COMMENT '学生性别',
age int COMMENT '学生年龄',
address VARCHAR(30) COMMENT '家庭所在城市',
classno INT NOT NULL COMMENT '班级编号',
FOREIGN KEY (classno) REFERENCES Class(classno)
)AUTO_INCREMENT=101;
INSERT INTO Class VALUES (1,'软件技术2301',45),(2,'软件技术2302',44);
INSERT INTO Student VALUES (0,'liu','男',18,'hunan',1),(0,'chang','男',19,'zz',2);
DELETE FROM Student WHERE age=18 AND sex='男';
UPDATE Student SET age=18 WHERE age>=21 OR age<18;
SELECT * FROM Student WHERE age<18 AND age>20;
SELECT * FROM Student WHERE stuname LIKE '_小%';
SELECT * FROM Student WHERE LIMIT 0,5;
SELECT * FROM Student WHERE address='洛阳' AND sex='女';
SELECT SUM(number) FROM Class;