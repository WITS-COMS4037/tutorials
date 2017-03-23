# Tutorial assignment 2: SQL

**This set is meant to help you get acquainted with the basics
of the SQL language**

1. Exercise 5.1 from R&G.  The file `students.sql` contains a script
   for creating a PostgreSQL database for this exercise.

2. Exercise 5.2 from R&G.  The file `catalog.sql` contains a script
   for creating a PostgreSQL database for this exercise.


### Creating a PostgreSQL database from a script

This section briefly explains how to create, from the script
`students.sql`, a database against which you can run queries you write
for part 1 of this assignment.  Creating databases for the other part is
analogous.

We are assuming that you have an account on a PostgreSQL system with
permission to created databases as well as access to a terminal on
which the `psql` client has been installed installed.

Start `psql` at the Unix prompt:
```bash
dmitry@cray:~$ psql -d postgres
```
Once `psql` has started, you will see the prompt:
```
psql (9.3.11)
Type "help" for help.

postgres=>
```

Create database `students`:
```
 postgres=> create database students;
```
Postgres will respond:
```
CREATE DATABASE
postgres=> 
```

Connect to the database `students`:
```
postgres=> \c students
```
Postgres will respond:
```
You are now connected to database "students" as user "dmitry".
students=>
```
Finally, run the script to create tables and load the data into
the database (the script should be in your working directory;
otherwise, you have to specify the full path):
```
students=> \i students.sql
```
You are now ready to query the database.

### Good luck!
