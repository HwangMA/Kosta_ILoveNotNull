select *from class
delete from class
create table class(
	classNo NUMBER PRIMARY KEY,
	className VARCHAR2(100) NOT NULL,
	teacherName VARCHAR2(100) NOT NULL,
	dateOfWeek NUMBER NOT NULL,
	timeOfClass VARCHAR2(100) NOT NULL,
	capacity NUMBER NOT NULL                     //  추가된 사항 : 1
)

create table member(
	id VARCHAR2(100) PRIMARY KEY,
	name VARCHAR2(100) NOT NULL,
	password VARCHAR2(100) NOT NULL,
	package NUMBER DEFAULT 0 NOT NULL,
	Info VARCHAR2(100)
)

create table registerStatus(
	classNo NUMBER,
	id VARCHAR2(100),
	registerTime DATE NOT NULL,                      //  추가된 사항 : 2
	constraint fk_class foreign key(classNo) references class(classNo),
	constraint fk_member foreign key(id) references member(id),
	constraint pk_registerStatus primary key(classNo,id)
)
drop sequence class_seq
create sequence class_seq

insert into class(classNO, className, teacherName, dateOfWeek, timeOfClass) 
values(class_seq.nextVal, 'PILATES','SH',0,'1');
insert into class(classNO, className, teacherName, dateOfWeek, timeOfClass) 
values(class_seq.nextVal, 'PILATES','SH',2,'2');
insert into class(classNO, className, teacherName, dateOfWeek, timeOfClass) 
values(class_seq.nextVal, 'FLYING','BBIBA',0,'7');
insert into class(classNO, className, teacherName, dateOfWeek, timeOfClass) 
values(class_seq.nextVal, 'FLYING','BBIBA',1,'2');
insert into class(classNO, className, teacherName, dateOfWeek, timeOfClass) 
values(class_seq.nextVal, 'FLYING','BBIBA',2,'3');
insert into class(classNO, className, teacherName, dateOfWeek, timeOfClass) 
values(class_seq.nextVal, 'FLYING','BBIBA',4,'5');
insert into class(classNO, className, teacherName, dateOfWeek, timeOfClass) 
values(class_seq.nextVal, 'ASHTANGA','BBIBA',0,'5');
insert into class(classNO, className, teacherName, dateOfWeek, timeOfClass) 
values(class_seq.nextVal, 'ASHTANGA','BBIBA',1,'1');
insert into class(classNO, className, teacherName, dateOfWeek, timeOfClass) 
values(class_seq.nextVal, 'ASHTANGA','BBIBA',2,'5');
insert into class(classNO, className, teacherName, dateOfWeek, timeOfClass) 
values(class_seq.nextVal, 'ASHTANGA','BBIBA',2,'7');
insert into class(classNO, className, teacherName, dateOfWeek, timeOfClass) 
values(class_seq.nextVal, 'ASHTANGA','BBIBA',3,'2');
insert into class(classNO, className, teacherName, dateOfWeek, timeOfClass) 
values(class_seq.nextVal, 'ASHTANGA','BBIBA',4,'3');
insert into class(classNO, className, teacherName, dateOfWeek, timeOfClass) 
values(class_seq.nextVal, 'VINYASA','SH',0,'2');
insert into class(classNO, className, teacherName, dateOfWeek, timeOfClass) 
values(class_seq.nextVal, 'VINYASA','SH',0,'3');
insert into class(classNO, className, teacherName, dateOfWeek, timeOfClass) 
values(class_seq.nextVal, 'VINYASA','SH',3,'1');
insert into class(classNO, className, teacherName, dateOfWeek, timeOfClass) 
values(class_seq.nextVal, 'VINYASA','SH',4,'7');
insert into class(classNO, className, teacherName, dateOfWeek, timeOfClass) 
values(class_seq.nextVal, '체형교정','SNPE',1,'4');
insert into class(classNO, className, teacherName, dateOfWeek, timeOfClass) 
values(class_seq.nextVal, '체형교정','SNPE',1,'6');
insert into class(classNO, className, teacherName, dateOfWeek, timeOfClass) 
values(class_seq.nextVal, '체형교정','SNPE',1,'8');
insert into class(classNO, className, teacherName, dateOfWeek, timeOfClass) 
values(class_seq.nextVal, 'VALLET FIT','JM',2,'1');
insert into class(classNO, className, teacherName, dateOfWeek, timeOfClass) 
values(class_seq.nextVal, 'VALLET FIT','JM',3,'8');
insert into class(classNO, className, teacherName, dateOfWeek, timeOfClass) 
values(class_seq.nextVal, 'FORREST','YOON MI',3,'4');
insert into class(classNO, className, teacherName, dateOfWeek, timeOfClass) 
values(class_seq.nextVal, 'BALL THERAPHY','YOON MI',3,'6');
insert into class(classNO, className, teacherName, dateOfWeek, timeOfClass) 
values(class_seq.nextVal, 'HASHA','SH',4,'1');




