//Brian Chenoweth
//masc2118
//CS 514 TTH 6:00 PM
//HW 1


create table empbb02 (
	EMPNO		VARCHAR2(5).
	ENAME		VARCHAR2(10) not null,
	POS			VARCHAR2(12),
	BOSS			VARCHAR2(4),
	HIREDATE		DATE,
	SAL			NUMBER(6),
	DEPTNO		NUMBER(2),
	INCENTIVES	NUMBER(6)
	);
	
	insert into empbb02 values ('712', 'rickey', 'gm', null, '01-JAN-98', 10000, 40, null);
	insert into empbb02 values ('735', 'lasorda', 'coach', '712', '10-JAN-98', 2000, 40, null);	insert into empbb02 values ('707', 'bochy', 'coach', '712', '11-JAN-98', 2000, 40, null);
	insert into empbb02 values ('798', 'berra', 'coach', '712', '12-JAN-98', 2000, 40, null);
	insert into empbb02 values ('782', 'musial', 'right field', '707', '01-FEB-98', 42000, 20, null);
	insert into empbb02 values ('763', 'gehrig', 'first base', '735', '11-MAR-98', 85000, 10, null);	insert into empbb02 values ('777', 'minoso', 'shortstop', '735', '05-MAY-98', 85000, 10, 6000);
	insert into empbb02 values ('721', 'sandberg', 'second base', '735', '28-FEB-98', 25000, 10, null);
	insert into empbb02 values ('788', 'cey', 'third base', '735', '10-JAN-99', 15000, 10, 8000);
	insert into empbb02 values ('720', 'williams', 'left field', '707', '05-JAN-99', 150000, 20, null);
	insert into empbb02 values ('755', 'johnson', 'pitcher', '798', '08-NOV-98', 50000, 30, null);
	insert into empbb02 values ('744', 'brown', 'pitcher', '798', '18-OCT-99', 40000, 30, 4000);
	insert into empbb02 values ('730', 'mays', 'center field', '707', '01-JAN-98', 240000, 20, null);
	insert into empbb02 values ('799', 'mungo', 'pitcher', '798', '10-MAR-00', 20000, 30, 12000);
	insert into empbb02 values ('766', 'rodriguez', 'catcher', '735', '16-OCT-01', 100000, 50, null);
	
	
create table infobb02 (
	EMPNO		VARCHAR2(5),
	FNAME		VARCHAR2(10),
	NICK			VARCHAR2(15),
	UNI			VARCHAR2(4),
	AVERAGE		NUMBER(4),
	ERA			NUMBER(6,3)
	); 
	
	insert into infobb02 values('712', 'branch', null, '56', null, null);
	insert into infobb02 values('735', 'tommy', null, '62', null, null);
	insert into infobb02 values('707', 'bruce', null, '64', 220, null);
	insert into infobb02 values('777', 'orestes', 'minnie', '27', 270, 32);
	insert into infobb02 values('763', 'lou', 'iron horse', '14', 350, null);
	insert into infobb02 values('782', 'stan', 'the man', '19', 342, null);
	insert into infobb02 values('798', 'larry', 'yogi', '66', 290, null);
	insert into infobb02 values('788', 'ron', 'penguin', '35', 287, null);
	insert into infobb02 values('730', 'willie', 'say hey kid', '12', 325, null);
	insert into infobb02 values('755', 'randy', 'the big unit', '8', 123, 2.15);
	insert into infobb02 values('744', 'mordecai', '3 fingers', '25', 168, 3.27);
	insert into infobb02 values('721', 'ryne', 'rhino', '17', 294, null);
	insert into infobb02 values('799', 'van lingle', null, '31', 220, 2.82);
	insert into infobb02 values('720', 'ted', 'teddy ballgame', '10', 350, null);
	insert into infobb02 values('766', 'ivan', 'pudge', '4', 339, null);
	
	
create table deptbb02 (
	DEPNO		NUMBER(3),
	DNAME		VARCHAR2(8),
	RESTAURANT	VARCHAR2(15),
	LOCATION		VARCHAR2(15),
	MOTTO		VARCHAR2(30)
	);
	
	insert into deptbb02 values (10, 'infield', 'Jade', 'Clairmont', 'Let''s play two!');
	insert into deptbb02 values (20, 'outfield', 'House of Pasta', 'Santee', 'Alea iacta est');
	insert into deptbb02 values (30, 'pitcher', 'Crab Shack', 'Pacific Beach', 'Semper paratus');
	insert into deptbb02 values (40, 'staff', 'Burger King', 'Lakeside', 'Experientia docet');
	insert into deptbb02 values (50, 'catchers', 'Pinnacle Peak', 'Santee', 'Non bastardi carborundum');
	
	
create table salsbb02 (
	GRADE 		NUMBER(2),
	ROLE 		VARCHAR2(8),
	LOSAL 		NUMBER(6),
	HISAL 		NUMBER(6)
	);
	
	insert into salsb02 values (1, 'staff', 1000, 5000);
	insert into salsb02 values (2, 'staff', 5001, 10000);
	insert into salsb02 values (1, 'hitter', 5000, 15000);
	insert into salsb02 values (2, 'hitter', 15001, 50000);
	insert into salsb02 values (3, 'hitter', 50001, 250000);
	insert into salsb02 values (1, 'pitcher', 5000, 25000);
	insert into salsb02 values (2, 'pitcher', 25001, 125000);
