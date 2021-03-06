create table yoga_member(
	id varchar2(50) primary key,
	password varchar2(50) not null,
	name varchar2(50) not null,
	phone_number NUMBER not null,
	address varchar2(100),
	email varchar2(100) not null,
	password_hint varchar2(100) not null,
	reg_date date not null,
	password_question varchar2(100) not null
)

-- 요가 강사 테이블 생성
create table yoga_teacher(
	teacherId NUMBER primary key,
	teacherName varchar(50) not null,
	teacherNick varchar(50) not null,
	teacherProfile varchar(600)
)
-- teacherId 시퀀스 생성
create sequence tchNo_seq;

-- 요가 프로그램 테이블 생성
create table yoga_subject(
	subjectNo NUMBER primary key,
	subjectName varchar(50) not null,
	subjectDetail varchar(50)
)
-- subjectNo 시퀀스 생성
create sequence subNo_seq;

-- 요가 강좌 테이블 생성
create table yoga_class(
	classNo NUMBER primary key,
	teacherId NUMBER not null,
	subjectNo NUMBER not null,
	classTime date,
	classDay date,
	capacity NUMBER not null,
	constraint fk_teacherId foreign key(teacherId) references YOGA_TEACHER,
	constraint fk_subjectNo foreign key(subjectNo) references yoga_subject
)
-- classNo 시퀀스 생성
create sequence class_seq;

create table registerStatus(
	classNo NUMBER,
	id VARCHAR2(100),
	constraint fk_class foreign key(classNo) references class(classNo),
	constraint fk_member foreign key(id) references member(id),
	constraint pk_registerStatus primary key(classNo,id)
)



