#课堂作业4
CREATE DATABASE userdb;
USE userdb;
CREATE TABLE userinfo(
ID INT PRIMARY KEY AUTO_INCREMENT COMMENT '编号',
username VARCHAR(50) COMMENT '用户编号',
sexid INT COMMENT '性别编号',
age int COMMENT '用户年龄'
);

CREATE TABLE usersex(
id INT PRIMARY KEY AUTO_INCREMENT COMMENT '编号',
sex VARCHAR(40) COMMENT '性别'
);


INSERT INTO userinfo(username,sexid,age) VALUES ('张三',1,33),('李四',2,32),('王五',1,23),('赵六',1,26),('田七',2,31),('吴八',1,43),('朝九',2,41),('赤十',1,88);
INSERT INTO usersex VALUES (1,'男'),(2,'女');


SELECT t1.ID,t1.age,t1.username,t2.sex FROM userinfo AS T1 LEFT JOIN usersex AS t2 ON t1.sexid=t2.id;

SELECT t2.ID,t1.sex,t2.age,t2.username FROM usersex AS T1 RIGHT JOIN userinfo AS t2 ON t2.sexid=t1.id;