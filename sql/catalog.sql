------------------------------------------------
--  This script creates a database against which
--  queries from exercise 5.2
--  from "Database Managements Systems" by Ramakrishnan and Gehrke, 3rd edition
--  can be evaluated
--  written for PostgreSQL
------------------------------------------------

----------------------------
-- create tables
----------------------------

create table suppliers(
	sid numeric( 9,0 ) primary key,	
	sname varchar( 30 ),
	address varchar( 40 )
);
	
create table parts(
	pid numeric( 9,0 ) primary key,
	pname varchar( 40 ),
	color varchar( 15 )
);
	
create table catalog(
	sid numeric( 9,0 ),
	pid numeric( 9,0 ),
	cost numeric( 10,2 ),
	primary key( sid, pid ),
	foreign key( sid ) references suppliers,
	foreign key( pid ) references parts
);

----------------------------
-- populate tables
----------------------------

-- 'suppliers' table
insert into suppliers( sid, sname, address )
values( 1, 'Acme Widget Suppliers', '1 Grub St., Potemkin Village, IL 61801' );
insert into suppliers( sid, sname, address )
values( 2, 'Big Red Tool and Die', '4 My Way, Bermuda Shorts, OR 90305' );
insert into suppliers( sid, sname, address )
values( 3, 'Perfunctory Parts', '99 Short Pier, Terra Del Fuego, TX 41299' );
insert into suppliers( sid, sname, address )
values( 4, 'Alien Aircaft Inc.', '2 Groom Lake, Rachel, NV 51902' );

-- 'parts' table
insert into parts( pid, pname, color )
values( 1, 'Left Handed Bacon Stretcher Cover', 'Red' );
insert into parts( pid, pname, color )
values( 2, 'Smoke Shifter End', 'Black' );
insert into parts( pid, pname, color )
values(3, 'Acme Widget Washer', 'Red' );
insert into parts( pid, pname, color )
values(4, 'Acme Widget Washer', 'Silver');
insert into parts( pid, pname, color )
values( 5, 'I Brake for Crop Circles Sticker', 'Translucent' );
insert into parts( pid, pname, color )
values( 6, 'Anti-Gravity Turbine Generator', 'Cyan' );
insert into parts( pid, pname, color )
values(7, 'Anti-Gravity Turbine Generator', 'Magenta' );
insert into parts( pid, pname, color )
values(8, 'Fire Hydrant Cap', 'Red' );
insert into parts( pid, pname, color )
values( 9, '7 Segment Display', 'Green');

-- 'catalog' table
insert into catalog( sid, pid, cost )
values( 1, 3, 0.50 );
insert into catalog( sid, pid, cost )
values( 1, 4, 0.50 );
insert into catalog( sid, pid, cost )
values( 1, 8, 11.70 );
insert into catalog( sid, pid, cost )
values( 2, 3, 0.55 );
insert into catalog( sid, pid, cost )
values( 2, 8, 7.95 );
insert into catalog( sid, pid, cost )
values( 2, 1, 16.50 );
insert into catalog( sid, pid, cost )
values( 3, 8, 12.50 );
insert into catalog( sid, pid, cost )
values( 3, 9, 1.00 );
insert into catalog( sid, pid, cost )
values( 4, 5, 2.20 );
insert into catalog( sid, pid, cost )
values( 4, 6, 1247548.23 );
insert into catalog( sid, pid, cost )
values( 4, 7, 1247548.23 );


