CREATE DATABASE ZGT;
USE ZGT;
CREATE TABLE zgb(
BH INT PRIMARY KEY COMMENT '教工编号',
XM VARCHAR(50) COMMENT '教工姓名',
XB VARCHAR(10) COMMENT '性别',
CSNY DATETIME COMMENT '出生年月',
ZC VARCHAR(40) COMMENT '职称',
SZBM VARCHAR(50) COMMENT '所在部门'
);

CREATE TABLE kcb(
KCH VARCHAR(50) COMMENT '课程号',
KCM VARCHAR(40) COMMENT '课程名称',
ZGBH INT COMMENT '职工编号'
);

INSERT INTO zgb VALUES(804,'李诚','男',19581202,'副教授','计算机系'),
(856,'张旭','男',19690312,'讲师','电子工程系'),
(825,'王萍','女',19720505,'助教','计算机系'),
(831,'刘冰','女',19770814,'助教','电子工程系');
INSERT INTO kcb VALUES ('3-105','计算机导论',825),
('3-245','操作系统',804),
('6-166','数字电路',856),
('9-888','高等数学',831);
SELECT * FROM kcb;
SELECT t1.*,t2.KCM,t2.KCH FROM zgb t1 LEFT JOIN kcb t2 ON t1.BH=t2.ZGBH;
SELECT t1.*,t2.CSNY,t2.SZBM,t2.XB,t2.XM,t2.ZC FROM kcb t1 RIGHT JOIN zgb t2 ON t2.BH=t1.ZGBH;
