#创建案例数据库
CREATE DATABASE JOINDB CHARSET=utf8;
USE JOINDB;
CREATE TABLE LX
(
lxid INT PRIMARY KEY AUTO_INCREMENT,
lxmc VARCHAR(50) NOT NULL
)AUTO_INCREMENT=1001;
CREATE TABLE SP
(
spid INT PRIMARY KEY AUTO_INCREMENT,
lxid INT,
spmc VARCHAR(50) NOT NULL
);
#初始化
INSERT INTO lx(lxmc) VALUES('水果'),('蔬菜'),('肉类');
INSERT INTO sp(lxid,spmc) VALUE
(1001,'苹果'),(1002,'辣椒'),(1004,'小龙虾');


SELECT lx.*,sp.spid,sp.spmc FROM lx INNER JOIN sp on lx.lxid=sp.lxid;
SELECT lx.*,sp.spid,sp.spmc FROM lx,sp WHERE lx.lxid=sp.lxid;
SELECT lx.*,sp.spid,sp.spmc FROM lx LEFT JOIN sp on lx.lxid=sp.lxid;