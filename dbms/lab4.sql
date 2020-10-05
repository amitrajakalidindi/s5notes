create table section(
	course_id varchar(7),
	sec_id numeric(2),
	semester varchar(10),
	year numeric(4),
	building varchar(32),
	room_no numeric(4),
	sec varchar(1),
	primary key(course_id,sec_id,semester,year),
	foreign key(course_id) references course(course_id)
);

insert into section values('BIO-101',1,'Summer',2009,'Painter',514,'B');

insert into section values('BIO-301',1,'Summer',2010,'Painter',514,'A');

insert into section values('CS-101',1,'Fall',2009,'Packard',101,'H');

insert into section values('CS-101',1,'Spring',2010,'Packard',101,'F');

insert into section values('CS-190',1,'Spring',2009,'Taylor',3128,'E');

insert into section values('CS-190',2,'Spring',2009,'Taylor',3128,'A');

insert into section values('CS-315',1,'Spring',2010,'Watson',120,'D');

insert into section values('CS-319',1,'Spring',2010,'Watson',100,'B');

insert into section values('CS-319',2,'Spring',2010,'Taylor',3128,'C');

insert into section values('CS-347',1,'Fall',2009,'Taylor',3128,'A');

insert into section values('EE-181',1,'Spring',2009,'Taylor',3128,'C');

insert into section values('FIN-201',1,'Spring',2010,'Packard',101,'B');

insert into section values('HIS-351',1,'Spring',2010,'Painter',514,'C');

insert into section values('MU-199',1,'Spring',2010,'Packard',101,'D');

insert into section values('PHY-101',1,'Fall',2009,'Watson',100,'A');


create table teaches(
	ins_id varchar(5),
	course_id varchar(7),
	sec_id numeric(2),
	semester varchar(10),
	year numeric(4),
	primary key(ins_id,course_id,sec_id,semester,year),
	foreign key(course_id,sec_id,semester,year) references section,
	foreign key(ins_id) references instructor(id)
);

insert into teaches values('10101','CS-101',1,'Fall',2009);

insert into teaches values('10101','CS-315',1,'Spring',2010);

insert into teaches values('10101','CS-347',1,'Fall',2009);

insert into teaches values('12121','FIN-201',1,'Spring',2010);

insert into teaches values('15151','MU-199',1,'Spring',2010);

insert into teaches values('15151','PHY-101',1,'Fall',2009);

insert into teaches values('32343','HIS-351',1,'Spring',2010);

insert into teaches values('45565','CS-101',1,'Spring',2010);

insert into teaches values('45565','CS-319',1,'Spring',2010);

insert into teaches values('76766','BIO-101',1,'Summer',2009);

insert into teaches values('76766','BIO-301',1,'Summer',2010);

insert into teaches values('83821','CS-190',1,'Spring',2009);

insert into teaches values('83821','CS-190',2,'Spring',2009);

insert into teaches values('83821','CS-319',1,'Spring',2010);

insert into teaches values('98345','EE-181',1,'Spring',2009);


select count(*) from teaches where year='2017';
select distinct ins_id from teaches where semester='Summer' and year='2017';
select ins_id from teaches where semester='Summer' and year='2017';
select Avg(budget) from department where building='Painter';
select course_id, room_no from section order by course_id;
select dept_name from department where budget = (select max(budget) from department) order by dept_name;
alter table section add column day varchar(15);
alter table section add column start_time time;
alter table section add column end_time time;
select course_id from section where end_time<'12:00:00' and year=2017;
select course_id as ins_1056 from teaches where ins_id='1056';
select avg(credits) from course where dept_name='Comp.Sci.';
select max(salary) from instructor where dept_name='Comp.Sci.';
alter table instructor add column dateofbirth date;
select *, extract (year from age (current_Date,dateofbirth)) as “age” from instructor;