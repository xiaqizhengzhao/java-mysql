-- 夏启政诏
CREATE DATABASE STU_Cou;
use STU_Cou;
CREATE TABLE Student(
    Sno int PRIMARY KEY AUTO_INCREMENT COMMENT '学号',
    Sname VARCHAR(50) NOT NULL COMMENT '姓名',
    Ssex ENUM('男','女') NOT NULL COMMENT '性别',
    Sbirthday VARCHAR(50) NOT NULL COMMENT '出生日期',
    Sage INT NOT NULL COMMENT '年龄',
    Sdept VARCHAR(50) COMMENT '所在系'
);
CREATE TABLE Coures(
    Cno INT PRIMARY KEY AUTO_INCREMENT COMMENT '课程号',
    Cname VARCHAR(50) NOT NULL COMMENT '课程名',
    Cpno VARCHAR(20) COMMENT '选修课号',
    Ccredit VARCHAR(10) COMMENT '学分'
);
CREATE TABLE SC(
    Sno INT PRIMARY KEY AUTO_INCREMENT COMMENT '学号',
    Cno INT COMMENT '课程号',
    Grade VARCHAR(20) COMMENT '成绩',
    FOREIGN KEY (Cno) REFERENCES Coures(Cno)
);
-- 插入 Student 表数据
INSERT INTO Student (Sno, Sname, Ssex, Sbirthday, Sage, Sdept)
VALUES
(95001, '张三', '男', '2000-01-01', 20, '计算机系'),
(95002, '李四', '女', '1999-05-15', 23, '数学系'),
(95003, '欧阳迅', '男', '2001-03-20', 34, '信息系'),
(95004, '欧阳昆昆', '女', '2000-09-10', 30, '化学系'),
(95005, '刘希尔', '男', '1999-11-25', 19, '计算机系');

-- 插入 Coures 表数据
INSERT INTO Coures (Cno, Cname, Cpno, Ccredit)
VALUES
(1, '数据库', 2301, '3'),
(2, '数据结构', 2302, '4'),
(3, '计算机网络', 2303, '3'),
(4, 'Harmony operating system', 2304, '4'),
(5, '编译原理', 2305, '3');

-- 插入 SC 表数据
INSERT INTO SC (Sno, Cno, Grade)
VALUES
(95001, 1, '78'),
(95002, 3, '88'),
(95003, null, '66'),
(95004, 3, '59'),
(95005, 3, '89');
#1
SELECT Sno,Grade FROM SC WHERE Cno=3 ORDER BY Grade ASC;
#2
SELECT Sname,Sno,Sdept FROM student;
#3
SELECT * FROM student;
#4
SELECT Sname as 姓名,Sbirthday as 出生日期,Sdept as 所有系 FROM student;
#5
SELECT * FROM student WHERE Sdept='计算机系';
#6
SELECT Sname,Sage FROM student WHERE Sage<20; 
#7
SELECT DISTINCT Sno FROM SC WHERE Cno IS NOT NULL;
#8
SELECT DISTINCT Sno FROM SC WHERE Grade<60;
#9
SELECT Sname,Sdept,Sage FROM Student WHERE Sage BETWEEN '20' AND '30';
#10
SELECT Sname,Sdept,Sage FROM Student WHERE Sage NOT BETWEEN '20' AND '30';
#11
SELECT Sname,Ssex FROM Student WHERE Sdept IN('信息系','数学系','计算机系');
#12
SELECT Sname,Ssex FROM Student WHERE Sdept not IN('信息系','数学系','计算机系');
#13
SELECT * FROM Student WHERE Sno LIKE '95001%';
#14
SELECT * FROM Student WHERE Sname LIKE '欧阳_';
#15
SELECT * FROM Student WHERE Sname NOT LIKE '刘%';
#16
SELECT Cno,Ccredit FROM coures WHERE Cname LIKE 'H%T__';
#17
SELECT Sname FROM Student WHERE Sdept='计算机系'AND Sage<20;
#18
SELECT Sname,Ssex FROM Student WHERE Sdept='计算机系' OR Sdept='数学系' OR Sdept='信息系';
#19
SELECT COUNT(Sno) FROM Student;
#20
SELECT COUNT(Cno) FROM sc WHERE Cno IS NOT NULL;
