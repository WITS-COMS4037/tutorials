------------------------------------------------
--  This script creates a database against which
--  queries from exercise 5.1
--  from "Database Managements Systems" by Ramakrishnan and Gehrke, 3rd edition
--  can be evaluated
--  written for PostgreSQL
------------------------------------------------

----------------------------
-- create tables
----------------------------

create table student(
       snum       numeric( 9, 0)  primary key,
       sname      varchar( 30 ),
       major      varchar( 25 ),
       standing   varchar( 2 ),
       age        numeric( 3, 0)
);

create table faculty(
       fid numeric( 9,0 ) primary key,
       fname varchar( 30 ),
       deptid numeric( 2,0 )
);
	
create table class(
	cname varchar( 40 ) primary key,
	meets_at varchar( 20 ),
	room varchar( 10 ),
	fid numeric( 9,0 ),
	foreign key( fid ) references faculty
);
	
create table enrolled(
       snum numeric( 9,0 ),
       cname varchar( 40 ),
       primary key( snum, cname ),
       foreign key( snum ) references student,
       foreign key( cname ) references class( cname )
);

----------------------------
-- populate tables
----------------------------

-- 'student' table
insert into student( snum, sname, major, standing, age )
values( 051135593, 'Maria White', 'English', 'SR', 21 );
insert into student( snum, sname, major, standing, age )
values( 060839453, 'Charles Harris', 'Architecture', 'SR', 22 );
insert into student( snum, sname, major, standing, age )
values( 099354543, 'Susan Martin', 'Law', 'JR', 20 );
insert into student( snum, sname, major, standing, age )
values( 112348546, 'Joseph Thompson', 'Computer Science', 'SO', 19 );
insert into student( snum, sname, major, standing, age )
values( 115987938, 'Christopher Garcia', 'Computer Science', 'JR', 20 );
insert into student( snum, sname, major, standing, age )
values( 132977562, 'Angela Martinez', 'History', 'SR', 20 );
insert into student( snum, sname, major, standing, age )
values( 269734834, 'Thomas Robinson', 'Psychology', 'SO', 18 );
insert into student( snum, sname, major, standing, age )
values( 280158572, 'Margaret Clark', 'Animal Science', 'FR', 18 );
insert into student( snum, sname, major, standing, age )
values( 301221823, 'Juan Rodriguez', 'Psychology', 'JR', 20 );
insert into student( snum, sname, major, standing, age )
values( 318548912, 'Dorthy Lewis', 'Finance', 'FR', 18 );
insert into student( snum, sname, major, standing, age )
values( 320874981, 'Daniel Lee', 'Electrical Engineering', 'FR', 17 );
insert into student( snum, sname, major, standing, age )
values( 322654189, 'Lisa Walker', 'Computer Science', 'SO', 17 );
insert into student( snum, sname, major, standing, age )
values( 348121549, 'Paul Hall', 'Computer Science', 'JR', 18 );
insert into student( snum, sname, major, standing, age )
values( 351565322, 'Nancy Allen', 'Accounting', 'JR', 19 );
insert into student( snum, sname, major, standing, age )
values( 451519864, 'Mark Young', 'Finance', 'FR', 18 );
insert into student( snum, sname, major, standing, age )
values( 455798411, 'Luis Hernandez', 'Electrical Engineering', 'FR', 17 );
insert into student( snum, sname, major, standing, age )
values( 462156489, 'Donald King', 'Mechanical Engineering', 'SO', 19 );
insert into student( snum, sname, major, standing, age )
values( 550156548, 'George Wright', 'Education', 'SR', 21 );
insert into student( snum, sname, major, standing, age )
values( 552455318, 'Ana Lopez', 'Computer Engineering', 'SR', 19 );
insert into student( snum, sname, major, standing, age )
values( 556784565, 'Kenneth Hill', 'Civil Engineering', 'SR', 21 );
insert into student( snum, sname, major, standing, age )
values( 567354612, 'Karen Scott', 'Computer Engineering', 'FR', 18 );
insert into student( snum, sname, major, standing, age )
values( 573284895, 'Steven Green', 'Kinesiology', 'SO', 19 );
insert into student( snum, sname, major, standing, age )
values( 574489456, 'Betty Adams', 'Economics', 'JR', 20 );
insert into student( snum, sname, major, standing, age )
values( 578875478, 'Edward Baker', 'Veterinary Medicine', 'SR', 21 );

-- 'faculty' table
insert into faculty( fid, fname, deptid )
values( 142519864, 'Ivana Teach', '20' );
insert into faculty( fid, fname, deptid )
values( 242518965, 'James Smith', '68' );
insert into faculty( fid, fname, deptid )
values( 141582651, 'Mary Johnson', '20' );
insert into faculty( fid, fname, deptid )
values( 011564812, 'John Williams', '68' );
insert into faculty( fid, fname, deptid )
values( 254099823, 'Patricia Jones', '68' );
insert into faculty( fid, fname, deptid )
values( 356187925, 'Robert Brown', '12' );
insert into faculty( fid, fname, deptid )
values( 489456522, 'Linda Davis', '20' );
insert into faculty( fid, fname, deptid )
values( 287321212, 'Michael Miller', '12' );
insert into faculty( fid, fname, deptid )
values( 248965255, 'Barbara Wilson', '12' );
insert into faculty( fid, fname, deptid )
values( 159542516, 'William Moore', '33' );
insert into faculty( fid, fname, deptid )
values( 090873519, 'Elizabeth Taylor', '11' );
insert into faculty( fid, fname, deptid )
values( 486512566, 'David Anderson', '20' );
insert into faculty( fid, fname, deptid )
values( 619023588, 'Jennifer Thomas', '11' );
insert into faculty( fid, fname, deptid )
values( 489221823, 'Richard Jackson', '33' );
insert into faculty( fid, fname, deptid )
values( 548977562, 'Ulysses Teach', '20' );

-- 'class' table
insert into class( cname, meets_at, room, fid )
values( 'Data Structures', 'MWF 10', 'R128', 489456522 );
insert into class( cname, meets_at, room, fid )
values( 'Database Systems', 'MWF 12:30-1:45', '1320 DCL', 142519864 );
insert into class( cname, meets_at, room, fid )
values( 'Operating System Design', 'TuTh 12-1:20', '20 AVW', 489456522  );
insert into class( cname, meets_at, room, fid )
values( 'Archaeology of the Incas', 'MWF 3-4:15', 'R128', 248965255 );
insert into class( cname, meets_at, room, fid )
values( 'Aviation Accident Investigation', 'TuTh 1-2:50', 'Q3', 011564812 );
insert into class( cname, meets_at, room, fid )
values( 'Air Quality Engineering', 'TuTh 10:30-11:45', 'R15', 011564812 );
insert into class( cname, meets_at, room, fid )
values( 'Introductory Latin', 'MWF 3-4:15', 'R12', 248965255 );
insert into class( cname, meets_at, room, fid )
values( 'American Political Parties', 'TuTh 2-3:15', '20 AVW', 619023588 );
insert into class( cname, meets_at, room, fid )
values( 'Social Cognition', 'Tu 6:30-8:40', 'R15', 159542516 );
insert into class( cname, meets_at, room, fid )
values( 'Perception', 'MTuWTh 3', 'Q3', 489221823 );
insert into class( cname, meets_at, room, fid )
values( 'Multivariate Analysis', 'TuTh 2-3:15', 'R15', 090873519 );
insert into class( cname, meets_at, room, fid )
values( 'Patent Law', 'F 1-2:50', 'R128', 090873519 );
insert into class( cname, meets_at, room, fid )
values( 'Urban Economics', 'MWF 11', '20 AVW', 489221823 );
insert into class( cname, meets_at, room, fid )
values( 'Organic Chemistry', 'TuTh 12:30-1:45', 'R12', 489221823 );
insert into class( cname, meets_at, room, fid )
values( 'Marketing Research', 'MW 10-11:15', '1320 DCL', 489221823 );
insert into class( cname, meets_at, room, fid )
values( 'Seminar in American Art', 'M 4', 'R15', 489221823 );
insert into class( cname, meets_at, room, fid )
values( 'Orbital Mechanics', 'MWF 8', '1320 DCL', 011564812 );
insert into class( cname, meets_at, room, fid )
values( 'Dairy Herd Management', 'TuTh 12:30-1:45', 'R128', 356187925 );
insert into class( cname, meets_at, room, fid )
values( 'Communication Networks', 'MW 9:30-10:45', '20 AVW', 141582651 );
insert into class( cname, meets_at, room, fid )
values( 'Optical Electronics', 'TuTh 12:30-1:45', 'R15', 254099823 );
insert into class( cname, meets_at, room, fid )
values( 'Intoduction to Math', 'TuTh 8-9:30', 'R128', 489221823 );

-- 'enrolled' table
insert into enrolled( snum, cname )
values( 112348546, 'Database Systems' );
insert into enrolled( snum, cname )
values( 115987938, 'Database Systems' );
insert into enrolled( snum, cname )
values( 348121549, 'Database Systems' );
insert into enrolled( snum, cname )
values( 322654189, 'Database Systems' );
insert into enrolled( snum, cname )
values( 552455318, 'Database Systems' );
insert into enrolled( snum, cname )
values( 455798411, 'Operating System Design' );
insert into enrolled( snum, cname )
values( 552455318, 'Operating System Design' );
insert into enrolled( snum, cname )
values( 567354612, 'Operating System Design' );
insert into enrolled( snum, cname )
values( 112348546, 'Operating System Design' );
insert into enrolled( snum, cname )
values( 115987938, 'Operating System Design' );
insert into enrolled( snum, cname )
values( 322654189, 'Operating System Design' );
insert into enrolled( snum, cname )
values( 567354612, 'Data Structures' );
insert into enrolled( snum, cname )
values( 552455318, 'Communication Networks' );
insert into enrolled( snum, cname )
values( 455798411, 'Optical Electronics' );
insert into enrolled( snum, cname )
values( 301221823, 'Perception' );
insert into enrolled( snum, cname )
values( 301221823, 'Social Cognition' );
insert into enrolled( snum, cname )
values( 301221823, 'American Political Parties' );
insert into enrolled( snum, cname )
values( 556784565, 'Air Quality Engineering' );
insert into enrolled( snum, cname )
values( 099354543, 'Patent Law' );
insert into enrolled( snum, cname )
values( 574489456, 'Urban Economics' );
